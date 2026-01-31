package cn.iocoder.yudao.server.module.mes;

import cn.iocoder.yudao.module.mes.dal.dataobject.base.MesMaterialTypeDO;
import cn.iocoder.yudao.module.mes.dal.mysql.base.MesMaterialTypeMapper;
import cn.iocoder.yudao.module.mes.service.base.MesMaterialTypeService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.transaction.annotation.Transactional;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

/**
 * MES模块集成测试 - 在yudao-server完整上下文中运行
 *
 * @author James (Developer)
 */
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.NONE)
@Testcontainers
@ActiveProfiles("test")
@Transactional
@DisplayName("MES Module Integration Tests")
class MesModuleIntegrationTest {

    @Container
    static MySQLContainer<?> mysql = new MySQLContainer<>("mysql:8.0")
            .withDatabaseName("mes_test")
            .withUsername("test")
            .withPassword("test123")
            .withReuse(true);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private MesMaterialTypeMapper materialTypeMapper;

    @Autowired
    private MesMaterialTypeService materialTypeService;

    @Test
    @DisplayName("INT-001: Verify mes_material_type table created with correct structure")
    @Sql(scripts = {
            "/db/migration/V001_008__create_material_type_tables.sql",
            "/db/migration/V001_008__init_material_types.sql"
    })
    void testMaterialTypeTableStructureAndData() {
        // Verify table exists and has data
        Integer count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM mes_material_type",
                Integer.class
        );

        assertThat(count).isEqualTo(5);

        // Verify we can query using MyBatis-Plus mapper
        List<MesMaterialTypeDO> types = materialTypeMapper.selectList();

        assertThat(types).isNotNull();
        assertThat(types).hasSize(5);

        // Verify the 5 fixed types exist
        assertThat(types)
                .extracting(MesMaterialTypeDO::getCode)
                .containsExactlyInAnyOrder("RAW", "AUX", "INTERMEDIATE", "SEMI", "FINISHED");
    }

    @Test
    @DisplayName("INT-002: Verify MesMaterialTypeService works correctly")
    @Sql(scripts = {
            "/db/migration/V001_008__create_material_type_tables.sql",
            "/db/migration/V001_008__init_material_types.sql"
    })
    void testMaterialTypeService() {
        // Test getTypeList
        List<MesMaterialTypeDO> types = materialTypeService.getTypeList();

        assertThat(types).isNotNull();
        assertThat(types).hasSize(5);

        // Verify types are sorted by sortOrder
        assertThat(types.get(0).getSortOrder()).isLessThanOrEqualTo(types.get(1).getSortOrder());

        // Test getType by ID
        Long firstTypeId = types.get(0).getId();
        MesMaterialTypeDO type = materialTypeService.getType(firstTypeId);

        assertThat(type).isNotNull();
        assertThat(type.getId()).isEqualTo(firstTypeId);
    }

    @Test
    @DisplayName("INT-003: Verify purchasable types query")
    @Sql(scripts = {
            "/db/migration/V001_008__create_material_type_tables.sql",
            "/db/migration/V001_008__init_material_types.sql"
    })
    void testPurchasableTypes() {
        // RAW, AUX, INTERMEDIATE should be purchasable
        List<MesMaterialTypeDO> purchasableTypes = materialTypeService.getPurchasableTypes();

        assertThat(purchasableTypes).isNotNull();
        assertThat(purchasableTypes).hasSize(3);
        assertThat(purchasableTypes)
                .extracting(MesMaterialTypeDO::getCode)
                .containsExactlyInAnyOrder("RAW", "AUX", "INTERMEDIATE");
    }

    @Test
    @DisplayName("INT-004: Verify saleable types query")
    @Sql(scripts = {
            "/db/migration/V001_008__create_material_type_tables.sql",
            "/db/migration/V001_008__init_material_types.sql"
    })
    void testSaleableTypes() {
        // SEMI, FINISHED should be saleable
        List<MesMaterialTypeDO> saleableTypes = materialTypeService.getSaleableTypes();

        assertThat(saleableTypes).isNotNull();
        assertThat(saleableTypes).hasSize(2);
        assertThat(saleableTypes)
                .extracting(MesMaterialTypeDO::getCode)
                .containsExactlyInAnyOrder("SEMI", "FINISHED");
    }

    @Test
    @DisplayName("INT-005: Verify multi-tenant unique constraint")
    @Sql(scripts = "/db/migration/V001_008__create_material_type_tables.sql")
    void testMultiTenantUniqueConstraint() {
        // Insert type for tenant 1
        jdbcTemplate.execute(
                "INSERT INTO mes_material_type (code, name, sort_order, is_purchasable, is_saleable, status, tenant_id) " +
                "VALUES ('TEST', 'Test Type', 1, 0, 0, 0, 1)"
        );

        // Same code for tenant 2 should succeed
        jdbcTemplate.execute(
                "INSERT INTO mes_material_type (code, name, sort_order, is_purchasable, is_saleable, status, tenant_id) " +
                "VALUES ('TEST', 'Test Type 2', 1, 0, 0, 0, 2)"
        );

        // Verify both records exist
        Integer count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM mes_material_type WHERE code = 'TEST'",
                Integer.class
        );
        assertThat(count).isEqualTo(2);
    }
}

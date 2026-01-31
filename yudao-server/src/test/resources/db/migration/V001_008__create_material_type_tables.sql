-- Story-008: 基础数据模块 - 物料分类体系
-- 创建物料类型、子类型、物料基础表

-- ==================== 物料类型表 (一级分类 - 固定5种) ====================
CREATE TABLE IF NOT EXISTS `mes_material_type` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `code` VARCHAR(50) NOT NULL COMMENT '类型编码 (RAW/AUX/INTERMEDIATE/SEMI/FINISHED)',
    `name` VARCHAR(100) NOT NULL COMMENT '类型名称',
    `sort_order` INT NOT NULL DEFAULT 0 COMMENT '显示排序号',
    `is_purchasable` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否可采购 (0-否, 1-是)',
    `is_saleable` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否可销售 (0-否, 1-是)',
    `status` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态 (0-启用, 1-禁用)',
    `remark` VARCHAR(500) NULL COMMENT '备注',
    `creator` VARCHAR(64) NULL COMMENT '创建者',
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updater` VARCHAR(64) NULL COMMENT '更新者',
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `deleted` BIT(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
    `tenant_id` BIGINT NOT NULL DEFAULT 0 COMMENT '租户ID',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_code_tenant` (`code`, `tenant_id`) USING BTREE,
    KEY `idx_tenant_id` (`tenant_id`) USING BTREE,
    KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物料类型表 (一级分类)';

-- ==================== 物料子类型表 (二级分类 - 可扩展) ====================
CREATE TABLE IF NOT EXISTS `mes_material_subtype` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `type_id` BIGINT NOT NULL COMMENT '物料类型ID (外键→mes_material_type.id)',
    `code` VARCHAR(50) NOT NULL COMMENT '子类型编码',
    `name` VARCHAR(100) NOT NULL COMMENT '子类型名称',
    `batch_rule` VARCHAR(200) NULL COMMENT '批次号生成规则模板 (支持占位符)',
    `sort_order` INT NOT NULL DEFAULT 0 COMMENT '显示排序号',
    `status` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态 (0-启用, 1-禁用)',
    `remark` VARCHAR(500) NULL COMMENT '备注',
    `creator` VARCHAR(64) NULL COMMENT '创建者',
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updater` VARCHAR(64) NULL COMMENT '更新者',
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `deleted` BIT(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
    `tenant_id` BIGINT NOT NULL DEFAULT 0 COMMENT '租户ID',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_code_tenant` (`code`, `tenant_id`) USING BTREE,
    KEY `idx_type_id` (`type_id`) USING BTREE,
    KEY `idx_tenant_id` (`tenant_id`) USING BTREE,
    KEY `idx_status` (`status`) USING BTREE,
    CONSTRAINT `fk_subtype_type` FOREIGN KEY (`type_id`) REFERENCES `mes_material_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物料子类型表 (二级分类)';

-- ==================== 物料基础表 (四层分类的最底层) ====================
CREATE TABLE IF NOT EXISTS `mes_material` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `code` VARCHAR(50) NOT NULL COMMENT '物料编码',
    `name` VARCHAR(100) NOT NULL COMMENT '物料名称',
    `type` VARCHAR(50) NOT NULL COMMENT '物料类型编码 (冗余字段)',
    `type_id` BIGINT NOT NULL COMMENT '物料类型ID (外键→mes_material_type.id)',
    `subtype_id` BIGINT NOT NULL COMMENT '物料子类型ID (外键→mes_material_subtype.id)',
    `spec` VARCHAR(200) NULL COMMENT '规格型号',
    `unit` VARCHAR(20) NULL COMMENT '单位',
    `status` TINYINT(1) NOT NULL DEFAULT 1 COMMENT '状态 (0-启用, 1-禁用)',
    `remark` VARCHAR(500) NULL COMMENT '备注',
    `creator` VARCHAR(64) NULL COMMENT '创建者',
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updater` VARCHAR(64) NULL COMMENT '更新者',
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `deleted` BIT(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
    `tenant_id` BIGINT NOT NULL DEFAULT 0 COMMENT '租户ID',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_code_tenant` (`code`, `tenant_id`) USING BTREE,
    KEY `idx_type_id` (`type_id`) USING BTREE,
    KEY `idx_subtype_id` (`subtype_id`) USING BTREE,
    KEY `idx_type` (`type`) USING BTREE,
    KEY `idx_tenant_id` (`tenant_id`) USING BTREE,
    KEY `idx_status` (`status`) USING BTREE,
    CONSTRAINT `fk_material_type` FOREIGN KEY (`type_id`) REFERENCES `mes_material_type` (`id`),
    CONSTRAINT `fk_material_subtype` FOREIGN KEY (`subtype_id`) REFERENCES `mes_material_subtype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='物料基础表';

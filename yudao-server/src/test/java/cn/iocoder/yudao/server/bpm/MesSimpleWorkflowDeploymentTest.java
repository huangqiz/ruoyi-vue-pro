package cn.iocoder.yudao.server.bpm;

import org.flowable.engine.RepositoryService;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import java.io.InputStream;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * MES工单简单审批流程部署测试
 *
 * Story: STORY-014M - 设计最简单的工单审批流程(MVP版)
 * Task: Task 2 - 部署流程定义
 *
 * @author James (Dev Agent)
 * @since 2026-02-07
 */
@SpringBootTest
@ActiveProfiles("test")
public class MesSimpleWorkflowDeploymentTest {

    @Autowired
    private RepositoryService repositoryService;

    private static final String PROCESS_KEY = "mes_production_order_simple";
    private static final String BPMN_FILE = "bpmn/mes_production_order_simple.bpmn20.xml";

    /**
     * Test 1: 部署MES工单简单审批流程
     */
    @Test
    public void testDeployMesSimpleWorkflow() {
        // 1. 加载BPMN文件
        InputStream bpmnStream = getClass().getClassLoader()
                .getResourceAsStream(BPMN_FILE);
        assertNotNull(bpmnStream, "BPMN文件应该存在: " + BPMN_FILE);

        // 2. 部署流程
        Deployment deployment = repositoryService.createDeployment()
                .name("MES工单简单审批流程(MVP)")
                .category("mes_production")
                .addInputStream(BPMN_FILE, bpmnStream)
                .deploy();

        assertNotNull(deployment, "部署应该成功");
        assertNotNull(deployment.getId(), "部署ID不应为null");

        System.out.println("========================================");
        System.out.println("[部署成功] Deployment ID: " + deployment.getId());
        System.out.println("[部署成功] Deployment Name: " + deployment.getName());
        System.out.println("========================================");

        // 3. 验证流程定义已创建
        ProcessDefinition processDefinition = repositoryService
                .createProcessDefinitionQuery()
                .processDefinitionKey(PROCESS_KEY)
                .latestVersion()
                .singleResult();

        assertNotNull(processDefinition, "流程定义应该被创建");
        assertEquals(PROCESS_KEY, processDefinition.getKey(),
                "流程Key应该匹配");
        assertTrue(processDefinition.getVersion() >= 1,
                "流程版本应该 >= 1");
        assertFalse(processDefinition.isSuspended(),
                "流程应该处于激活状态");

        System.out.println("========================================");
        System.out.println("[流程定义] ID: " + processDefinition.getId());
        System.out.println("[流程定义] Key: " + processDefinition.getKey());
        System.out.println("[流程定义] Name: " + processDefinition.getName());
        System.out.println("[流程定义] Version: " + processDefinition.getVersion());
        System.out.println("[流程定义] Deployment ID: " + processDefinition.getDeploymentId());
        System.out.println("========================================");
    }

    /**
     * Test 2: 验证流程定义包含预期的用户任务节点
     */
    @Test
    public void testWorkflowContainsExpectedNodes() {
        // 查询流程定义
        ProcessDefinition processDefinition = repositoryService
                .createProcessDefinitionQuery()
                .processDefinitionKey(PROCESS_KEY)
                .latestVersion()
                .singleResult();

        if (processDefinition == null) {
            System.out.println("[跳过测试] 流程尚未部署，请先运行 testDeployMesSimpleWorkflow()");
            return;
        }

        // 获取BPMN模型验证节点
        org.flowable.bpmn.model.BpmnModel bpmnModel = repositoryService
                .getBpmnModel(processDefinition.getId());

        assertNotNull(bpmnModel, "BPMN模型不应为null");

        // 获取主流程
        org.flowable.bpmn.model.Process process = bpmnModel.getMainProcess();
        assertNotNull(process, "主流程不应为null");

        // 验证用户任务数量（下达、审批、执行 = 3个节点）
        long userTaskCount = process.getFlowElements().stream()
                .filter(element -> element instanceof org.flowable.bpmn.model.UserTask)
                .count();

        assertEquals(3, userTaskCount,
                "流程应该包含3个用户任务节点（下达、审批、执行）");

        // 打印所有用户任务信息
        System.out.println("========================================");
        System.out.println("[流程验证] 用户任务节点数量: " + userTaskCount);
        System.out.println("========================================");

        process.getFlowElements().stream()
                .filter(element -> element instanceof org.flowable.bpmn.model.UserTask)
                .forEach(element -> {
                    org.flowable.bpmn.model.UserTask userTask =
                            (org.flowable.bpmn.model.UserTask) element;
                    System.out.println("- 任务ID: " + userTask.getId());
                    System.out.println("  任务名称: " + userTask.getName());
                    System.out.println("  候选用户: " + userTask.getCandidateUsers());
                    System.out.println();
                });
        System.out.println("========================================");
    }

    /**
     * Test 3: 验证流程定义的候选人配置
     */
    @Test
    public void testWorkflowCandidateUsersConfiguration() {
        ProcessDefinition processDefinition = repositoryService
                .createProcessDefinitionQuery()
                .processDefinitionKey(PROCESS_KEY)
                .latestVersion()
                .singleResult();

        if (processDefinition == null) {
            System.out.println("[跳过测试] 流程尚未部署");
            return;
        }

        org.flowable.bpmn.model.BpmnModel bpmnModel = repositoryService
                .getBpmnModel(processDefinition.getId());
        org.flowable.bpmn.model.Process process = bpmnModel.getMainProcess();

        // 验证每个任务都配置了候选人
        process.getFlowElements().stream()
                .filter(element -> element instanceof org.flowable.bpmn.model.UserTask)
                .forEach(element -> {
                    org.flowable.bpmn.model.UserTask userTask =
                            (org.flowable.bpmn.model.UserTask) element;

                    assertFalse(userTask.getCandidateUsers().isEmpty(),
                            "任务 [" + userTask.getName() + "] 应该配置候选用户");

                    System.out.println("[候选人验证] 任务: " + userTask.getName() +
                            " - 候选用户: " + userTask.getCandidateUsers());
                });
    }

    /**
     * Test 4: 查询所有已部署的MES流程
     */
    @Test
    public void testQueryAllMesProcessDefinitions() {
        List<ProcessDefinition> processDefinitions = repositoryService
                .createProcessDefinitionQuery()
                .processDefinitionKeyLike("mes_%")
                .orderByProcessDefinitionVersion()
                .desc()
                .list();

        System.out.println("========================================");
        System.out.println("[MES流程查询] 找到 " + processDefinitions.size() + " 个MES相关流程");
        System.out.println("========================================");

        processDefinitions.forEach(pd -> {
            System.out.println("- Key: " + pd.getKey());
            System.out.println("  Name: " + pd.getName());
            System.out.println("  Version: " + pd.getVersion());
            System.out.println("  Deployment ID: " + pd.getDeploymentId());
            System.out.println("  Suspended: " + pd.isSuspended());
            System.out.println();
        });
        System.out.println("========================================");
    }

    /**
     * Test 5: 清理测试数据（手动执行）
     * 注意：仅在测试环境使用！！！
     *
     * 取消注释 @Test 后手动运行此方法来清理部署数据
     */
    // @Test
    public void cleanupMesWorkflowDeployments() {
        System.out.println("========================================");
        System.out.println("[警告] 开始清理MES工单流程部署...");
        System.out.println("========================================");

        List<Deployment> deployments = repositoryService.createDeploymentQuery()
                .deploymentNameLike("%MES工单%")
                .list();

        if (deployments.isEmpty()) {
            System.out.println("[清理] 没有找到需要清理的部署");
            return;
        }

        System.out.println("[清理] 找到 " + deployments.size() + " 个部署需要清理");

        for (Deployment deployment : deployments) {
            try {
                // cascade=true: 级联删除流程实例、任务等关联数据
                repositoryService.deleteDeployment(deployment.getId(), true);
                System.out.println("[清理成功] 部署ID: " + deployment.getId() +
                        ", 名称: " + deployment.getName());
            } catch (Exception e) {
                System.err.println("[清理失败] 部署ID: " + deployment.getId() +
                        ", 错误: " + e.getMessage());
            }
        }

        System.out.println("========================================");
        System.out.println("[清理完成]");
        System.out.println("========================================");
    }
}

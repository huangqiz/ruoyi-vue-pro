# BPM数据库表初始化说明

## 概述

BPM模块使用Flowable 6工作流引擎，包含两类数据库表：

1. **Flowable核心表（59张）** - 由Flowable引擎自动创建
2. **yudao自定义BPM表** - 由yudao框架定义

## Flowable核心表（自动创建）

配置项 `spring.flowable.database-schema-update=true` 会在系统首次启动时自动创建以下表：

### ACT_RE_* - 流程定义相关（7张表）
- `ACT_RE_DEPLOYMENT` - 流程部署
- `ACT_RE_MODEL` - 流程模型
- `ACT_RE_PROCDEF` - 流程定义
- 等...

### ACT_RU_* - 运行时数据（10张表）
- `ACT_RU_EXECUTION` - 流程实例
- `ACT_RU_TASK` - 任务
- `ACT_RU_VARIABLE` - 流程变量
- 等...

### ACT_HI_* - 历史数据（15张表）
- `ACT_HI_PROCINST` - 历史流程实例
- `ACT_HI_TASKINST` - 历史任务
- `ACT_HI_ACTINST` - 历史活动
- 等...

### ACT_GE_* - 通用数据（2张表）
- `ACT_GE_BYTEARRAY` - 二进制数据
- `ACT_GE_PROPERTY` - 系统属性

### FLW_* - Flowable扩展表（25张表）
- Flowable特有的扩展功能表

## yudao自定义BPM表

这些表需要手动创建，包含在 `ruoyi-vue-pro.sql` 主脚本中：

- `bpm_user_group` - 用户组
- `bpm_category` - 流程分类
- `bpm_form` - 动态表单
- `bpm_oa_leave` - OA请假示例
- `bpm_process_definition_ext` - 流程定义扩展
- `bpm_process_instance_ext` - 流程实例扩展
- `bpm_process_listener` - 流程监听器
- `bpm_simple` - 简易流程示例
- `bpm_task_ext` - 任务扩展

## 初始化步骤

### 方式1: 自动创建（推荐）

1. 配置 `application-bpm.yaml`:
   ```yaml
   spring:
     flowable:
       database-schema-update: true
   ```

2. 启动系统，Flowable会自动创建59张核心表

3. 优点：
   - 简单快速
   - 表结构由Flowable引擎保证正确
   - 自动处理版本升级时的表结构变更

### 方式2: 手动执行SQL脚本

如果需要手动创建表（如生产环境DBA要求），可以：

1. 从Flowable官方资源获取DDL脚本
2. 参考路径: `flowable-engine-{version}.jar/org/flowable/db/create/`
3. 选择对应数据库的创建脚本

## 验证表创建

执行以下SQL验证表是否创建成功：

```sql
-- 查询Flowable核心表（应返回59张）
SELECT TABLE_NAME, TABLE_COMMENT
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'ichoice_mes'
  AND (TABLE_NAME LIKE 'ACT_%' OR TABLE_NAME LIKE 'FLW_%')
ORDER BY TABLE_NAME;

-- 查询yudao自定义BPM表（应返回9张）
SELECT TABLE_NAME, TABLE_COMMENT
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'ichoice_mes'
  AND TABLE_NAME LIKE 'bpm_%'
ORDER BY TABLE_NAME;
```

## 注意事项

1. **首次启动时间**：Flowable自动创建表需要额外10-30秒
2. **数据库权限**：确保应用数据库用户有CREATE TABLE权限
3. **租户隔离**：Flowable支持多租户，但需额外配置
4. **备份建议**：生产环境初始化前备份数据库

## 回滚方案

如需回滚BPM模块：

```sql
-- 删除Flowable核心表
DROP TABLE IF EXISTS ACT_RE_DEPLOYMENT, ACT_RE_MODEL, ACT_RE_PROCDEF;
DROP TABLE IF EXISTS ACT_RU_EXECUTION, ACT_RU_TASK, ACT_RU_VARIABLE;
-- ... 删除所有ACT_*和FLW_*表

-- 删除yudao自定义BPM表
DROP TABLE IF EXISTS bpm_user_group, bpm_category, bpm_form;
-- ... 删除所有bpm_*表
```

---

**创建日期**: 2026-01-31
**修订版本**: v1.0

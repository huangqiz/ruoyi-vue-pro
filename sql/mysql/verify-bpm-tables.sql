-- BPM表创建验证脚本
-- 执行此脚本验证Flowable表是否正确创建

-- 1. 查询Flowable核心表数量（预期：59张）
SELECT COUNT(*) as flowable_table_count
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
  AND (TABLE_NAME LIKE 'ACT_%' OR TABLE_NAME LIKE 'FLW_%');

-- 2. 列出所有Flowable表
SELECT TABLE_NAME, TABLE_COMMENT,
       CASE
           WHEN TABLE_NAME LIKE 'ACT_RE_%' THEN 'Repository (流程定义)'
           WHEN TABLE_NAME LIKE 'ACT_RU_%' THEN 'Runtime (运行时)'
           WHEN TABLE_NAME LIKE 'ACT_HI_%' THEN 'History (历史)'
           WHEN TABLE_NAME LIKE 'ACT_GE_%' THEN 'General (通用)'
           WHEN TABLE_NAME LIKE 'FLW_%' THEN 'Flowable扩展'
           ELSE '其他'
       END as table_category
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
  AND (TABLE_NAME LIKE 'ACT_%' OR TABLE_NAME LIKE 'FLW_%')
ORDER BY table_category, TABLE_NAME;

-- 3. 查询yudao自定义BPM表（预期：9张）
SELECT TABLE_NAME, TABLE_COMMENT
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME LIKE 'bpm_%'
ORDER BY TABLE_NAME;

-- 4. 验证关键表是否存在
SELECT
    IF(EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='ACT_RE_PROCDEF'), '✓', '✗') as '流程定义表',
    IF(EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='ACT_RU_TASK'), '✓', '✗') as '任务表',
    IF(EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='ACT_HI_PROCINST'), '✓', '✗') as '历史流程实例表',
    IF(EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='bpm_form'), '✓', '✗') as 'BPM表单表',
    IF(EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='bpm_user_group'), '✓', '✗') as 'BPM用户组表';

-- 5. 检查Flowable版本
SELECT * FROM ACT_GE_PROPERTY WHERE NAME_ = 'schema.version';

-- 预期结果示例：
-- flowable_table_count: 59
-- yudao bpm tables: 9
-- schema.version: 6.x.x

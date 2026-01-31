-- Story-008: 初始化5种固定物料类型
-- 原材料、辅料、中间品、半成品、成品

-- 删除可能存在的旧数据 (测试环境)
DELETE FROM `mes_material_type` WHERE `code` IN ('RAW', 'AUX', 'INTERMEDIATE', 'SEMI', 'FINISHED');

-- 插入5种固定物料类型
INSERT INTO `mes_material_type` (
    `id`, `code`, `name`, `sort_order`,
    `is_purchasable`, `is_saleable`, `status`,
    `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`
) VALUES
-- 1. 原材料 (RAW) - 可采购, 不可销售
(1, 'RAW', '原材料', 1,
 1, 0, 0,
 '可直接采购的基础原料，如金属材料、化工原料等', 'system', NOW(), 'system', NOW(), b'0', 0),

-- 2. 辅料 (AUX) - 可采购, 不可销售
(2, 'AUX', '辅料', 2,
 1, 0, 0,
 '生产过程中的辅助材料，如包装材料、润滑剂等', 'system', NOW(), 'system', NOW(), b'0', 0),

-- 3. 中间品 (INTERMEDIATE) - 可采购, 不可销售
(3, 'INTERMEDIATE', '中间品', 3,
 1, 0, 0,
 '生产过程中的中间产物，可外购也可自制', 'system', NOW(), 'system', NOW(), b'0', 0),

-- 4. 半成品 (SEMI) - 不可采购, 可销售
(4, 'SEMI', '半成品', 4,
 0, 1, 0,
 '已完成部分加工工序的产品，可对外销售', 'system', NOW(), 'system', NOW(), b'0', 0),

-- 5. 成品 (FINISHED) - 不可采购, 可销售
(5, 'FINISHED', '成品', 5,
 0, 1, 0,
 '已完成全部工序的最终产品', 'system', NOW(), 'system', NOW(), b'0', 0);

-- 验证插入结果
SELECT
    id, code, name,
    CASE WHEN is_purchasable = 1 THEN '可采购' ELSE '不可采购' END AS '采购属性',
    CASE WHEN is_saleable = 1 THEN '可销售' ELSE '不可销售' END AS '销售属性',
    CASE WHEN status = 0 THEN '启用' ELSE '禁用' END AS '状态'
FROM `mes_material_type`
ORDER BY sort_order;

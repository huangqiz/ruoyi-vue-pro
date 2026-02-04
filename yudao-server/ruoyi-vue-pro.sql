-- MySQL dump 10.13  Distrib 8.4.1, for Win64 (x86_64)
--
-- Host: localhost    Database: ruoyi_vue_pro
-- ------------------------------------------------------
-- Server version	8.4.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('batch.schema.version','6.8.0.0',1),('cfg.execution-related-entities-count','true',1),('cfg.task-related-entities-count','true',1),('common.schema.version','6.8.0.0',1),('entitylink.schema.version','6.8.0.0',1),('eventsubscription.schema.version','6.8.0.0',1),('identitylink.schema.version','6.8.0.0',1),('job.schema.version','6.8.0.0',1),('next.dbid','1',1),('schema.history','create(6.8.0.0)',1),('schema.version','6.8.0.0',1),('task.schema.version','6.8.0.0',1),('variable.schema.version','6.8.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `TRANSACTION_ORDER_` int DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_entitylink`
--

DROP TABLE IF EXISTS `act_hi_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_entitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_entitylink`
--

LOCK TABLES `act_hi_entitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_entitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_SUPER_PROCINST` (`SUPER_PROCESS_INSTANCE_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_tsk_log`
--

DROP TABLE IF EXISTS `act_hi_tsk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_tsk_log` (
  `ID_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_tsk_log`
--

LOCK TABLES `act_hi_tsk_log` WRITE;
/*!40000 ALTER TABLE `act_hi_tsk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_tsk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_bytearray`
--

DROP TABLE IF EXISTS `act_id_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_bytearray`
--

LOCK TABLES `act_id_bytearray` WRITE;
/*!40000 ALTER TABLE `act_id_bytearray` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv`
--

DROP TABLE IF EXISTS `act_id_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv`
--

LOCK TABLES `act_id_priv` WRITE;
/*!40000 ALTER TABLE `act_id_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv_mapping`
--

DROP TABLE IF EXISTS `act_id_priv_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`),
  KEY `ACT_IDX_PRIV_USER` (`USER_ID_`),
  KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv_mapping`
--

LOCK TABLES `act_id_priv_mapping` WRITE;
/*!40000 ALTER TABLE `act_id_priv_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_property`
--

DROP TABLE IF EXISTS `act_id_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_property`
--

LOCK TABLES `act_id_property` WRITE;
/*!40000 ALTER TABLE `act_id_property` DISABLE KEYS */;
INSERT INTO `act_id_property` VALUES ('schema.version','6.8.0.0',1);
/*!40000 ALTER TABLE `act_id_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_token`
--

DROP TABLE IF EXISTS `act_id_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NULL DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_token`
--

LOCK TABLES `act_id_token` WRITE;
/*!40000 ALTER TABLE `act_id_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
INSERT INTO `act_re_model` VALUES ('fef8eb52-ff5e-11f0-9454-fa89d267b9cd',2,'Production Order Standard Process','mes_production_order_standard','mes_order','2026-02-01 11:13:11.822','2026-02-01 11:26:56.846',1,'{\"icon\":null,\"description\":\"Standard production order workflow\",\"type\":10,\"formType\":20,\"formId\":null,\"formCustomCreatePath\":\"1\",\"formCustomViewPath\":\"1\",\"visible\":true,\"startUserIds\":[],\"startDeptIds\":null,\"managerUserIds\":[1],\"sort\":1769944391809,\"allowCancelRunningProcess\":null,\"allowWithdrawTask\":null,\"processIdRule\":{\"enable\":false,\"prefix\":\"\",\"infix\":\"\",\"postfix\":\"\",\"length\":5},\"autoApprovalType\":0,\"titleSetting\":{\"enable\":false,\"title\":\"\"},\"summarySetting\":{\"enable\":false,\"summary\":[]},\"processBeforeTriggerSetting\":null,\"processAfterTriggerSetting\":null,\"taskBeforeTriggerSetting\":null,\"taskAfterTriggerSetting\":null,\"printTemplateSetting\":{\"enable\":false,\"template\":null}}',NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DERIVED_VERSION_` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_actinst`
--

DROP TABLE IF EXISTS `act_ru_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_actinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `TRANSACTION_ORDER_` int DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_ACTI_START` (`START_TIME_`),
  KEY `ACT_IDX_RU_ACTI_END` (`END_TIME_`),
  KEY `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`),
  KEY `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`),
  KEY `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_RU_ACTI_TASK` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_actinst`
--

LOCK TABLES `act_ru_actinst` WRITE;
/*!40000 ALTER TABLE `act_ru_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_entitylink`
--

DROP TABLE IF EXISTS `act_ru_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_entitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  KEY `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_entitylink`
--

LOCK TABLES `act_ru_entitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_entitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_IDX_EVENT_SUBSCR_SCOPEREF_` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `IS_MI_ROOT_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int DEFAULT NULL,
  `TASK_COUNT_` int DEFAULT NULL,
  `JOB_COUNT_` int DEFAULT NULL,
  `TIMER_JOB_COUNT_` int DEFAULT NULL,
  `SUSP_JOB_COUNT_` int DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_IDX_EXEC_REF_ID_` (`REFERENCE_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_external_job`
--

DROP TABLE IF EXISTS `act_ru_external_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_external_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_EJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_EJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_EJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_external_job`
--

LOCK TABLES `act_ru_external_job` WRITE;
/*!40000 ALTER TABLE `act_ru_external_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_external_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_history_job`
--

DROP TABLE IF EXISTS `act_ru_history_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_history_job`
--

LOCK TABLES `act_ru_history_job` WRITE;
/*!40000 ALTER TABLE `act_ru_history_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_history_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  `SUB_TASK_COUNT_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  KEY `ACT_IDX_TIMER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  KEY `ACT_IDX_TIMER_JOB_DUEDATE` (`DUEDATE_`),
  KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_category`
--

DROP TABLE IF EXISTS `bpm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `sort` int NOT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`tenant_id`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM娴佺▼鍒嗙被';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_category`
--

LOCK TABLES `bpm_category` WRITE;
/*!40000 ALTER TABLE `bpm_category` DISABLE KEYS */;
INSERT INTO `bpm_category` VALUES (1,'MES Order Process','mes_order','MES production order workflows',0,1,'1','2026-02-01 19:08:02','1','2026-02-01 19:08:02',0,1);
/*!40000 ALTER TABLE `bpm_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_form`
--

DROP TABLE IF EXISTS `bpm_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_form` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `conf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM鍔ㄦ?琛ㄥ崟';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_form`
--

LOCK TABLES `bpm_form` WRITE;
/*!40000 ALTER TABLE `bpm_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_oa_leave`
--

DROP TABLE IF EXISTS `bpm_oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_oa_leave` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `type` tinyint NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `day` int NOT NULL,
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM OA璇峰亣绀轰緥';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_oa_leave`
--

LOCK TABLES `bpm_oa_leave` WRITE;
/*!40000 ALTER TABLE `bpm_oa_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_process_definition_ext`
--

DROP TABLE IF EXISTS `bpm_process_definition_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_process_definition_ext` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type` tinyint DEFAULT NULL,
  `form_id` bigint DEFAULT NULL,
  `form_conf` text COLLATE utf8mb4_unicode_ci,
  `form_fields` text COLLATE utf8mb4_unicode_ci,
  `form_custom_create_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_custom_view_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `bpmn_bytes` longblob,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_process_definition_id` (`process_definition_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM娴佺▼瀹氫箟鎵╁睍琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_process_definition_ext`
--

LOCK TABLES `bpm_process_definition_ext` WRITE;
/*!40000 ALTER TABLE `bpm_process_definition_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_process_definition_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_process_instance_ext`
--

DROP TABLE IF EXISTS `bpm_process_instance_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_process_instance_ext` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_user_id` bigint NOT NULL,
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  `result` tinyint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `form_variables` text COLLATE utf8mb4_unicode_ci,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_process_instance_id` (`process_instance_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM娴佺▼瀹炰緥鎵╁睍琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_process_instance_ext`
--

LOCK TABLES `bpm_process_instance_ext` WRITE;
/*!40000 ALTER TABLE `bpm_process_instance_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_process_instance_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_process_listener`
--

DROP TABLE IF EXISTS `bpm_process_listener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_process_listener` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `event` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM娴佺▼鐩戝惉鍣';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_process_listener`
--

LOCK TABLES `bpm_process_listener` WRITE;
/*!40000 ALTER TABLE `bpm_process_listener` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_process_listener` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_simple`
--

DROP TABLE IF EXISTS `bpm_simple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_simple` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_nodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_datas` text COLLATE utf8mb4_unicode_ci,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_process_definition_id` (`process_definition_id`,`tenant_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM绠?槗娴佺▼閰嶇疆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_simple`
--

LOCK TABLES `bpm_simple` WRITE;
/*!40000 ALTER TABLE `bpm_simple` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_simple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_task_ext`
--

DROP TABLE IF EXISTS `bpm_task_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_task_ext` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignee_user_id` bigint NOT NULL,
  `name` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` tinyint DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_task_id` (`task_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='BPM浠诲姟鎵╁睍琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_task_ext`
--

LOCK TABLES `bpm_task_ext` WRITE;
/*!40000 ALTER TABLE `bpm_task_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_task_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpm_user_group`
--

DROP TABLE IF EXISTS `bpm_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bpm_user_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `user_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `tenant_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鐢ㄦ埛缁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpm_user_group`
--

LOCK TABLES `bpm_user_group` WRITE;
/*!40000 ALTER TABLE `bpm_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `bpm_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_channel_definition`
--

DROP TABLE IF EXISTS `flw_channel_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_channel_definition` (
  `ID_` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IMPLEMENTATION_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_channel_definition`
--

LOCK TABLES `flw_channel_definition` WRITE;
/*!40000 ALTER TABLE `flw_channel_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_channel_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ev_databasechangelog`
--

DROP TABLE IF EXISTS `flw_ev_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_ev_databasechangelog` (
  `ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangelog`
--

LOCK TABLES `flw_ev_databasechangelog` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangelog` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangelog` VALUES ('1','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2026-01-31 16:56:16',1,'EXECUTED','8:1b0c48c9cf7945be799d868a2626d687','createTable tableName=FLW_EVENT_DEPLOYMENT; createTable tableName=FLW_EVENT_RESOURCE; createTable tableName=FLW_EVENT_DEFINITION; createIndex indexName=ACT_IDX_EVENT_DEF_UNIQ, tableName=FLW_EVENT_DEFINITION; createTable tableName=FLW_CHANNEL_DEFIN...','',NULL,'4.9.1',NULL,NULL,'9849775929'),('2','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2026-01-31 16:56:16',2,'EXECUTED','8:0ea825feb8e470558f0b5754352b9cda','addColumn tableName=FLW_CHANNEL_DEFINITION; addColumn tableName=FLW_CHANNEL_DEFINITION','',NULL,'4.9.1',NULL,NULL,'9849775929'),('3','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2026-01-31 16:56:17',3,'EXECUTED','8:3c2bb293350b5cbe6504331980c9dcee','customChange','',NULL,'4.9.1',NULL,NULL,'9849775929');
/*!40000 ALTER TABLE `flw_ev_databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ev_databasechangeloglock`
--

DROP TABLE IF EXISTS `flw_ev_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_ev_databasechangeloglock` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangeloglock`
--

LOCK TABLES `flw_ev_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_definition`
--

DROP TABLE IF EXISTS `flw_event_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_event_definition` (
  `ID_` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_definition`
--

LOCK TABLES `flw_event_definition` WRITE;
/*!40000 ALTER TABLE `flw_event_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_deployment`
--

DROP TABLE IF EXISTS `flw_event_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_event_deployment` (
  `ID_` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_deployment`
--

LOCK TABLES `flw_event_deployment` WRITE;
/*!40000 ALTER TABLE `flw_event_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_resource`
--

DROP TABLE IF EXISTS `flw_event_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_event_resource` (
  `ID_` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_resource`
--

LOCK TABLES `flw_event_resource` WRITE;
/*!40000 ALTER TABLE `flw_event_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ru_batch`
--

DROP TABLE IF EXISTS `flw_ru_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_ru_batch` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch`
--

LOCK TABLES `flw_ru_batch` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ru_batch_part`
--

DROP TABLE IF EXISTS `flw_ru_batch_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flw_ru_batch_part` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `FLW_IDX_BATCH_PART` (`BATCH_ID_`),
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch_part`
--

LOCK TABLES `flw_ru_batch_part` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_api_access_log`
--

DROP TABLE IF EXISTS `infra_api_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_api_access_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '用户类型',
  `application_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求地址',
  `request_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `response_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '响应结果',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `operate_module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作模块',
  `operate_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作名',
  `operate_type` tinyint DEFAULT '0' COMMENT '操作分类',
  `begin_time` datetime NOT NULL COMMENT '开始请求时间',
  `end_time` datetime NOT NULL COMMENT '结束请求时间',
  `duration` int NOT NULL COMMENT '执行时长',
  `result_code` int NOT NULL DEFAULT '0' COMMENT '结果码',
  `result_msg` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果提示',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API 访问日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_api_access_log`
--

LOCK TABLES `infra_api_access_log` WRITE;
/*!40000 ALTER TABLE `infra_api_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_api_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_api_error_log`
--

DROP TABLE IF EXISTS `infra_api_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_api_error_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链路追踪编号',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '用户类型',
  `application_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求地址',
  `request_params` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求参数',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `exception_time` datetime NOT NULL COMMENT '异常发生时间',
  `exception_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '异常名',
  `exception_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常导致的消息',
  `exception_root_cause_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常导致的根消息',
  `exception_stack_trace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常的栈轨迹',
  `exception_class_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的类全名',
  `exception_file_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的类文件',
  `exception_method_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '异常发生的方法名',
  `exception_line_number` int NOT NULL COMMENT '异常发生的方法所在行',
  `process_status` tinyint NOT NULL COMMENT '处理状态',
  `process_time` datetime DEFAULT NULL COMMENT '处理时间',
  `process_user_id` int DEFAULT '0' COMMENT '处理用户编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统异常日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_api_error_log`
--

LOCK TABLES `infra_api_error_log` WRITE;
/*!40000 ALTER TABLE `infra_api_error_log` DISABLE KEYS */;
INSERT INTO `infra_api_error_log` VALUES (23210,'',1,2,'yudao-server','POST','/admin-api/bpm/category/create','{\"query\":{},\"body\":\"{\\n    \\\"name\\\": \\\"MES工单流程\\\",\\n    \\\"code\\\": \\\"mes_order\\\",\\n    \\\"description\\\": \\\"Ichoice MES系统工单管理相关流程\\\",\\n    \\\"sort\\\": 1,\\n    \\\"status\\\": 0\\n  }\"}','127.0.0.1','curl/7.87.0','2026-02-01 19:05:23','org.springframework.http.converter.HttpMessageNotReadableException','HttpMessageNotReadableException: JSON parse error: Invalid UTF-8 start byte 0xb9; nested exception is com.fasterxml.jackson.databind.JsonMappingException: Invalid UTF-8 start byte 0xb9\n at [Source: (org.springframework.util.StreamUtils$NonClosingInputStream); line: 2, column: 18] (through reference chain: cn.iocoder.yudao.module.bpm.controller.admin.definition.vo.category.BpmCategorySaveReqVO[\"name\"])','JsonParseException: Invalid UTF-8 start byte 0xb9\n at [Source: (org.springframework.util.StreamUtils$NonClosingInputStream); line: 2, column: 18]','org.springframework.http.converter.HttpMessageNotReadableException: JSON parse error: Invalid UTF-8 start byte 0xb9; nested exception is com.fasterxml.jackson.databind.JsonMappingException: Invalid UTF-8 start byte 0xb9\n at [Source: (org.springframework.util.StreamUtils$NonClosingInputStream); line: 2, column: 18] (through reference chain: cn.iocoder.yudao.module.bpm.controller.admin.definition.vo.category.BpmCategorySaveReqVO[\"name\"])\r\n	at org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter.readJavaType(AbstractJackson2HttpMessageConverter.java:391)\r\n	at org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter.read(AbstractJackson2HttpMessageConverter.java:343)\r\n	at org.springframework.web.servlet.mvc.method.annotation.AbstractMessageConverterMethodArgumentResolver.readWithMessageConverters(AbstractMessageConverterMethodArgumentResolver.java:185)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestResponseBodyMethodProcessor.readWithMessageConverters(RequestResponseBodyMethodProcessor.java:160)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestResponseBodyMethodProcessor.resolveArgument(RequestResponseBodyMethodProcessor.java:133)\r\n	at org.springframework.web.method.support.HandlerMethodArgumentResolverComposite.resolveArgument(HandlerMethodArgumentResolverComposite.java:122)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.getMethodArgumentValues(InvocableHandlerMethod.java:179)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:146)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:903)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:809)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1072)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:965)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:555)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:623)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:209)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:153)\r\n	at org.apache.tomcat.websocket.serve','org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter','AbstractJackson2HttpMessageConverter.java','readJavaType',391,0,NULL,0,'1','2026-02-01 19:05:23','1','2026-02-01 19:05:23',_binary '\0',1);
/*!40000 ALTER TABLE `infra_api_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_codegen_column`
--

DROP TABLE IF EXISTS `infra_codegen_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_codegen_column` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NOT NULL COMMENT '表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段名',
  `data_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段类型',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段描述',
  `nullable` bit(1) NOT NULL COMMENT '是否允许为空',
  `primary_key` bit(1) NOT NULL COMMENT '是否主键',
  `ordinal_position` int NOT NULL COMMENT '排序',
  `java_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java 属性类型',
  `java_field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java 属性名',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '字典类型',
  `example` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数据示例',
  `create_operation` bit(1) NOT NULL COMMENT '是否为 Create 创建操作的字段',
  `update_operation` bit(1) NOT NULL COMMENT '是否为 Update 更新操作的字段',
  `list_operation` bit(1) NOT NULL COMMENT '是否为 List 查询操作的字段',
  `list_operation_condition` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '=' COMMENT 'List 查询操作的条件类型',
  `list_operation_result` bit(1) NOT NULL COMMENT '是否为 List 查询操作的返回字段',
  `html_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '显示类型',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2659 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成表字段定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_codegen_column`
--

LOCK TABLES `infra_codegen_column` WRITE;
/*!40000 ALTER TABLE `infra_codegen_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_codegen_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_codegen_table`
--

DROP TABLE IF EXISTS `infra_codegen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_codegen_table` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `data_source_config_id` bigint NOT NULL COMMENT '数据源配置的编号',
  `scene` tinyint NOT NULL DEFAULT '1' COMMENT '生成场景',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '表描述',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '业务名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类名称',
  `class_comment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类描述',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `template_type` tinyint NOT NULL DEFAULT '1' COMMENT '模板类型',
  `front_type` tinyint NOT NULL COMMENT '前端类型',
  `parent_menu_id` bigint DEFAULT NULL COMMENT '父菜单编号',
  `master_table_id` bigint DEFAULT NULL COMMENT '主表的编号',
  `sub_join_column_id` bigint DEFAULT NULL COMMENT '子表关联主表的字段编号',
  `sub_join_many` bit(1) DEFAULT NULL COMMENT '主表与子表是否一对多',
  `tree_parent_column_id` bigint DEFAULT NULL COMMENT '树表的父字段编号',
  `tree_name_column_id` bigint DEFAULT NULL COMMENT '树表的名字字段编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='代码生成表定义';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_codegen_table`
--

LOCK TABLES `infra_codegen_table` WRITE;
/*!40000 ALTER TABLE `infra_codegen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_codegen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_config`
--

DROP TABLE IF EXISTS `infra_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数分组',
  `type` tinyint NOT NULL COMMENT '参数类型',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键名',
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数键值',
  `visible` bit(1) NOT NULL COMMENT '是否可见',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_config`
--

LOCK TABLES `infra_config` WRITE;
/*!40000 ALTER TABLE `infra_config` DISABLE KEYS */;
INSERT INTO `infra_config` VALUES (2,'biz',1,'用户管理-账号初始密码','system.user.init-password','123456',_binary '\0','初始化密码 123456','admin','2021-01-05 17:03:48','1','2024-07-20 17:22:47',_binary '\0'),(7,'url',2,'MySQL 监控的地址','url.druid','',_binary '','','1','2023-04-07 13:41:16','1','2023-04-07 14:33:38',_binary '\0'),(8,'url',2,'SkyWalking 监控的地址','url.skywalking','',_binary '','','1','2023-04-07 13:41:16','1','2023-04-07 14:57:03',_binary '\0'),(9,'url',2,'Spring Boot Admin 监控的地址','url.spring-boot-admin','',_binary '','','1','2023-04-07 13:41:16','1','2023-04-07 14:52:07',_binary '\0'),(10,'url',2,'Swagger 接口文档的地址','url.swagger','',_binary '','','1','2023-04-07 13:41:16','1','2023-04-07 14:59:00',_binary '\0'),(11,'ui',2,'腾讯地图 key','tencent.lbs.key','TVDBZ-TDILD-4ON4B-PFDZA-RNLKH-VVF6E',_binary '','腾讯地图 key','1','2023-06-03 19:16:27','1','2023-06-03 19:16:27',_binary '\0'),(12,'test2',2,'test3','test4','test5',_binary '','test6','1','2023-12-03 09:55:16','1','2025-04-06 21:00:09',_binary '\0'),(13,'用户管理-账号初始密码',2,'用户管理-注册开关','system.user.register-enabled','true',_binary '\0','','1','2025-04-26 17:23:41','1','2025-04-26 17:23:41',_binary '\0');
/*!40000 ALTER TABLE `infra_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_data_source_config`
--

DROP TABLE IF EXISTS `infra_data_source_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_data_source_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '数据源连接',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数据源配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_data_source_config`
--

LOCK TABLES `infra_data_source_config` WRITE;
/*!40000 ALTER TABLE `infra_data_source_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_data_source_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_file`
--

DROP TABLE IF EXISTS `infra_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_file` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '文件编号',
  `config_id` bigint DEFAULT NULL COMMENT '配置编号',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名',
  `path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件 URL',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件类型',
  `size` int NOT NULL COMMENT '文件大小',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_file`
--

LOCK TABLES `infra_file` WRITE;
/*!40000 ALTER TABLE `infra_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_file_config`
--

DROP TABLE IF EXISTS `infra_file_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_file_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置名',
  `storage` tinyint NOT NULL COMMENT '存储器',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `master` bit(1) NOT NULL COMMENT '是否为主配置',
  `config` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '存储配置',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_file_config`
--

LOCK TABLES `infra_file_config` WRITE;
/*!40000 ALTER TABLE `infra_file_config` DISABLE KEYS */;
INSERT INTO `infra_file_config` VALUES (4,'数据库（示例）',1,'我是数据库',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.db.DBFileClientConfig\",\"domain\":\"http://127.0.0.1:48080\"}','1','2022-03-15 23:56:24','1','2025-11-24 20:57:14',_binary '\0'),(22,'七牛存储器（示例）',20,'请换成你自己的密钥！！！',_binary '','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3.cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"3TvrJ70gl2Gt6IBe7_IZT1F6i_k0iMuRtyEv4EyS\",\"accessSecret\":\"wd0tbVBYlp0S-ihA8Qg2hPLncoP83wyrIq24OZuY\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-01-13 22:11:12','1','2025-11-24 20:57:14',_binary '\0'),(24,'腾讯云存储（示例）',20,'请换成你的密钥！！！',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"https://cos.ap-shanghai.myqcloud.com\",\"domain\":\"http://tengxun-oss.iocoder.cn\",\"bucket\":\"aoteman-1255880240\",\"accessKey\":\"AKIDAF6WSh1uiIjwqtrOsGSN3WryqTM6cTMt\",\"accessSecret\":\"X\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-11-09 16:03:22','1','2025-11-24 20:57:14',_binary '\0'),(25,'阿里云存储（示例）',20,'',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"oss-cn-beijing.aliyuncs.com\",\"domain\":\"http://ali-oss.iocoder.cn\",\"bucket\":\"yunai-aoteman\",\"accessKey\":\"LTAI5tEQLgnDyjh3WpNcdMKA\",\"accessSecret\":\"X\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-11-09 16:47:08','1','2025-11-24 20:57:14',_binary '\0'),(26,'火山云存储（示例）',20,'',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"tos-s3-cn-beijing.volces.com\",\"domain\":null,\"bucket\":\"yunai\",\"accessKey\":\"AKLTZjc3Zjc4MzZmMjU3NDk0ZTgxYmIyMmFkNTIwMDI1ZGE\",\"accessSecret\":\"X==\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-11-09 16:56:42','1','2025-11-24 20:57:14',_binary '\0'),(27,'华为云存储（示例）',20,'',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"obs.cn-east-3.myhuaweicloud.com\",\"domain\":\"\",\"bucket\":\"yudao\",\"accessKey\":\"PVDONDEIOTW88LF8DC4U\",\"accessSecret\":\"X\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-11-09 17:18:41','1','2025-11-24 20:57:14',_binary '\0'),(28,'MinIO 存储（示例）',20,'',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"http://127.0.0.1:9000\",\"domain\":\"http://127.0.0.1:9000/yudao\",\"bucket\":\"yudao\",\"accessKey\":\"admin\",\"accessSecret\":\"password\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":true}','1','2024-11-09 17:43:10','1','2025-11-24 20:57:14',_binary '\0'),(29,'本地存储（示例）',10,'mac/linux 使用 /，windows 使用 \\',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.local.LocalFileClientConfig\",\"basePath\":\"/Users/yunai/tmp/file\",\"domain\":\"http://127.0.0.1:48080\"}','1','2025-05-02 11:25:45','1','2025-11-24 20:57:14',_binary '\0'),(30,'SFTP 存储（示例）',12,'',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.sftp.SftpFileClientConfig\",\"basePath\":\"/upload\",\"domain\":\"http://127.0.0.1:48080\",\"host\":\"127.0.0.1\",\"port\":2222,\"username\":\"foo\",\"password\":\"pass\"}','1','2025-05-02 16:34:10','1','2025-11-24 20:57:14',_binary '\0'),(34,'七牛云存储【私有】（示例）',20,'请换成你自己的密钥！！！',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3.cn-south-1.qiniucs.com\",\"domain\":\"http://t151glocd.hn-bkt.clouddn.com\",\"bucket\":\"ruoyi-vue-pro-private\",\"accessKey\":\"3TvrJ70gl2Gt6IBe7_IZT1F6i_k0iMuRtyEv4EyS\",\"accessSecret\":\"wd0tbVBYlp0S-ihA8Qg2hPLncoP83wyrIq24OZuY\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":false}','1','2025-08-17 21:22:00','1','2025-11-24 20:57:14',_binary '\0'),(35,'1',20,'1',_binary '\0','{\"@class\":\"cn.iocoder.yudao.module.infra.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"http://www.baidu.com\",\"domain\":\"http://www.xxx.com\",\"bucket\":\"1\",\"accessKey\":\"2\",\"accessSecret\":\"3\",\"enablePathStyleAccess\":false,\"enablePublicAccess\":false}','1','2025-10-02 14:32:12','1','2025-11-24 20:57:14',_binary '\0');
/*!40000 ALTER TABLE `infra_file_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_file_content`
--

DROP TABLE IF EXISTS `infra_file_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_file_content` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `config_id` bigint NOT NULL COMMENT '配置编号',
  `path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `content` mediumblob NOT NULL COMMENT '文件内容',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_file_content`
--

LOCK TABLES `infra_file_content` WRITE;
/*!40000 ALTER TABLE `infra_file_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_file_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_job`
--

DROP TABLE IF EXISTS `infra_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_job` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `status` tinyint NOT NULL COMMENT '任务状态',
  `handler_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理器的名字',
  `handler_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理器的参数',
  `cron_expression` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CRON 表达式',
  `retry_count` int NOT NULL DEFAULT '0' COMMENT '重试次数',
  `retry_interval` int NOT NULL DEFAULT '0' COMMENT '重试间隔',
  `monitor_timeout` int NOT NULL DEFAULT '0' COMMENT '监控超时时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_job`
--

LOCK TABLES `infra_job` WRITE;
/*!40000 ALTER TABLE `infra_job` DISABLE KEYS */;
INSERT INTO `infra_job` VALUES (5,'支付通知 Job',2,'payNotifyJob',NULL,'* * * * * ?',0,0,0,'1','2021-10-27 08:34:42','1','2024-09-12 13:32:48',_binary '\0'),(17,'支付订单同步 Job',2,'payOrderSyncJob',NULL,'0 0/1 * * * ?',0,0,0,'1','2023-07-22 14:36:26','1','2023-07-22 15:39:08',_binary '\0'),(18,'支付订单过期 Job',2,'payOrderExpireJob',NULL,'0 0/1 * * * ?',0,0,0,'1','2023-07-22 15:36:23','1','2023-07-22 15:39:54',_binary '\0'),(19,'退款订单的同步 Job',2,'payRefundSyncJob',NULL,'0 0/1 * * * ?',0,0,0,'1','2023-07-23 21:03:44','1','2023-07-23 21:09:00',_binary '\0'),(21,'Mall 交易订单的自动过期 Job',2,'tradeOrderAutoCancelJob','','0 * * * * ?',3,0,0,'1','2023-09-25 23:43:26','1','2025-10-02 11:08:34',_binary '\0'),(22,'Mall 交易订单的自动收货 Job',2,'tradeOrderAutoReceiveJob','','0 * * * * ?',3,0,0,'1','2023-09-26 19:23:53','1','2025-10-02 11:08:36',_binary '\0'),(23,'Mall 交易订单的自动评论 Job',2,'tradeOrderAutoCommentJob','','0 * * * * ?',3,0,0,'1','2023-09-26 23:38:29','1','2025-10-02 11:08:38',_binary '\0'),(24,'Mall 佣金解冻 Job',2,'brokerageRecordUnfreezeJob','','0 * * * * ?',3,0,0,'1','2023-09-28 22:01:46','1','2025-10-02 11:08:04',_binary '\0'),(25,'访问日志清理 Job',2,'accessLogCleanJob','','0 0 0 * * ?',3,0,0,'1','2023-10-03 10:59:41','1','2023-10-03 11:01:10',_binary '\0'),(26,'错误日志清理 Job',2,'errorLogCleanJob','','0 0 0 * * ?',3,0,0,'1','2023-10-03 11:00:43','1','2023-10-03 11:01:12',_binary '\0'),(27,'任务日志清理 Job',2,'jobLogCleanJob','','0 0 0 * * ?',3,0,0,'1','2023-10-03 11:01:33','1','2024-09-12 13:40:34',_binary '\0'),(33,'demoJob',2,'demoJob','','0 * * * * ?',1,1,0,'1','2024-10-27 19:38:46','1','2025-05-10 18:13:54',_binary '\0'),(35,'转账订单的同步 Job',2,'payTransferSyncJob','','0 * * * * ?',0,0,0,'1','2025-05-10 17:35:54','1','2025-05-10 18:13:52',_binary '\0'),(36,'IoT 设备离线检查 Job',2,'iotDeviceOfflineCheckJob','','0 * * * * ?',0,0,0,'1','2025-07-03 23:48:44','\"1\"','2025-07-03 23:48:47',_binary '\0'),(37,'IoT OTA 升级推送 Job',2,'iotOtaUpgradeJob','','0 * * * * ?',0,0,0,'1','2025-07-03 23:49:07','\"1\"','2025-07-03 23:49:13',_binary '\0'),(38,'Mall 拼团过期 Job',2,'combinationRecordExpireJob','','0 * * * * ?',0,0,0,'1','2025-10-02 11:07:11','1','2025-10-02 11:07:14',_binary '\0'),(39,'Mall 优惠券过期 Job',2,'couponExpireJob','','0 * * * * ?',0,0,0,'1','2025-10-02 11:07:34','1','2025-10-02 11:07:37',_binary '\0'),(40,'Mall 商品统计 Job',2,'productStatisticsJob','','0 0 0 * * ?',0,0,0,'1','2025-11-22 18:51:25','1','2025-11-22 18:56:21',_binary '\0');
/*!40000 ALTER TABLE `infra_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infra_job_log`
--

DROP TABLE IF EXISTS `infra_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infra_job_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `job_id` bigint NOT NULL COMMENT '任务编号',
  `handler_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理器的名字',
  `handler_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理器的参数',
  `execute_index` tinyint NOT NULL DEFAULT '1' COMMENT '第几次执行',
  `begin_time` datetime NOT NULL COMMENT '开始执行时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束执行时间',
  `duration` int DEFAULT NULL COMMENT '执行时长',
  `status` tinyint NOT NULL COMMENT '任务状态',
  `result` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '结果数据',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=987 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='定时任务日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infra_job_log`
--

LOCK TABLES `infra_job_log` WRITE;
/*!40000 ALTER TABLE `infra_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `infra_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_equipment`
--

DROP TABLE IF EXISTS `mes_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_equipment` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '璁惧?缂栫爜',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '璁惧?鍚嶇О',
  `type_id` bigint DEFAULT NULL COMMENT '设备类型ID (FK → mes_equipment_type.id)',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '璁惧?绫诲瀷',
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵?湪浣嶇疆/杞﹂棿',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IDLE' COMMENT '杩愯?鐘舵?: IDLE-绌洪棽, RUNNING-杩愯?涓? FAULT-鏁呴殰, MAINT-缁翠慨涓',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES璁惧?鍙拌处琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_equipment`
--

LOCK TABLES `mes_equipment` WRITE;
/*!40000 ALTER TABLE `mes_equipment` DISABLE KEYS */;
INSERT INTO `mes_equipment` VALUES (1,'EQ-VIM-01','真空感应熔炼炉1号',10,'VIM','熔炼车间','IDLE','','','2026-01-23 14:52:41','1','2026-01-24 16:33:12',_binary '\0',1),(2,'EQ-HD-01','氢破碎炉1号',2,'HD','制粉车间','IDLE','','','2026-01-23 14:53:53','1','2026-01-28 21:22:12',_binary '\0',1),(3,'EQ-MILL-01','气流磨1号',NULL,'JET_MILL','制粉车间','IDLE',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:55',_binary '\0',1),(4,'EQ-PRESS-01','液压压机1号',NULL,'PRESS','压制车间','IDLE',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:55',_binary '\0',1),(5,'EQ-SINTER-01','烧结炉1号',NULL,'SINTER_FURNACE','烧结车间','IDLE',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:55',_binary '\0',1);
/*!40000 ALTER TABLE `mes_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_equipment_type`
--

DROP TABLE IF EXISTS `mes_equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_equipment_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型编码',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型名称',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT '显示排序号',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态: 0-启用, 1-禁用',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES设备类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_equipment_type`
--

LOCK TABLES `mes_equipment_type` WRITE;
/*!40000 ALTER TABLE `mes_equipment_type` DISABLE KEYS */;
INSERT INTO `mes_equipment_type` VALUES (1,'MELT_FURNACE','真空熔炼炉',10,0,'用于金属原料熔炼','','2026-01-24 14:50:31','1','2026-01-28 21:21:49',_binary '',1),(2,'HD_FURNACE','氢破炉',20,0,'用于氢破碎工艺','','2026-01-24 14:50:31','','2026-01-25 15:44:31',_binary '\0',1),(3,'JET_MILL','气流磨',30,0,'用于制粉工艺','','2026-01-24 14:50:31','','2026-01-25 15:44:31',_binary '\0',1),(4,'PRESS','压机',50,0,'用于压制成型','','2026-01-24 14:50:31','1','2026-01-28 21:17:23',_binary '\0',1),(5,'SINTER_FURNACE','烧结炉',60,0,'用于烧结工艺','','2026-01-24 14:50:31','1','2026-01-28 21:17:10',_binary '\0',1),(6,'AGING_FURNACE','时效炉',60,0,'用于时效处理','','2026-01-24 14:50:31','1','2026-01-28 21:16:46',_binary '',1),(7,'MACHINING_CENTER','加工中心',70,0,'用于机加工','','2026-01-24 14:50:31','','2026-01-25 15:44:31',_binary '\0',1),(8,'COATING_EQUIPMENT','涂层设备',80,0,'用于表面涂层','','2026-01-24 14:50:31','','2026-01-25 15:44:31',_binary '\0',1),(9,'TEST_EQUIPMENT','测试仪器',90,0,'用于质量检测','','2026-01-24 14:50:31','','2026-01-25 15:44:31',_binary '\0',1),(10,'MELT_FURNANCE','真空熔炼炉',0,0,'','1','2026-01-24 16:33:03','1','2026-01-24 16:33:03',_binary '\0',1),(11,'MIXER','混粉机',40,0,'用于混粉工艺','1','2026-01-28 21:17:47','1','2026-01-28 21:18:12',_binary '\0',1),(12,'POWER_FILTER','筛粉机',35,0,'用于过筛','1','2026-01-28 21:20:03','1','2026-01-28 21:20:13',_binary '\0',1);
/*!40000 ALTER TABLE `mes_equipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_import_history`
--

DROP TABLE IF EXISTS `mes_import_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_import_history` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `module_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块类型: material-物料, equipment-设备, mold-模具',
  `file_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '导入文件名',
  `total_rows` int NOT NULL DEFAULT '0' COMMENT '总行数',
  `success_rows` int NOT NULL DEFAULT '0' COMMENT '成功行数',
  `failed_rows` int NOT NULL DEFAULT '0' COMMENT '失败行数',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '导入状态: 0-全部成功, 1-部分成功, 2-全部失败',
  `error_detail` text COLLATE utf8mb4_unicode_ci COMMENT '错误明细(JSON格式)',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`),
  KEY `idx_module_type` (`module_type`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE,
  KEY `idx_tenant_id` (`tenant_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES导入历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_import_history`
--

LOCK TABLES `mes_import_history` WRITE;
/*!40000 ALTER TABLE `mes_import_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mes_import_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_material`
--

DROP TABLE IF EXISTS `mes_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_material` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡缂栫爜',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡鍚嶇О',
  `type_id` bigint DEFAULT NULL COMMENT '物料类型ID',
  `subtype_id` bigint DEFAULT NULL COMMENT '物料子类型ID',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡绫诲瀷',
  `spec` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸鍨嬪彿',
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍗曚綅',
  `safety_stock` decimal(18,4) DEFAULT NULL COMMENT '安全库存警戒线',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '鐘舵?: 0-鍚?敤, 1-绂佺敤',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_type` (`type`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_type_id` (`type_id`),
  KEY `idx_subtype_id` (`subtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES鐗╂枡涓绘暟鎹?〃';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_material`
--

LOCK TABLES `mes_material` WRITE;
/*!40000 ALTER TABLE `mes_material` DISABLE KEYS */;
INSERT INTO `mes_material` VALUES (1,'MAT-RAW-001','纯铁',NULL,NULL,'RAW_MATERIAL','纯度99.9%','kg',NULL,0,'电解铁，用于合金熔炼','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(2,'MAT-RAW-002','稀土钕',NULL,NULL,'RAW_MATERIAL','纯度99.5%','kg',NULL,0,'金属钕，主要磁性元素','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(3,'MAT-RAW-003','硼铁合金',NULL,NULL,'RAW_MATERIAL','FeB 17-19%B','kg',NULL,0,'添加剂，用于合金配料','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(4,'MAT-RAW-004','镝铁合金',NULL,NULL,'RAW_MATERIAL','DyFe 70-80%Dy','kg',NULL,0,'提高矫顽力的添加剂','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(5,'MAT-PWD-001','N35粉末',NULL,NULL,'POWDER','粒度3-5μm','kg',NULL,0,'标准级别磁粉','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(6,'MAT-PWD-002','N38粉末',NULL,NULL,'POWDER','粒度3-5μm','kg',NULL,0,'高性能磁粉','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(7,'MAT-PWD-003','N42粉末',3,10,'POWDER','粒度3-5μm','kg',NULL,0,'特高性能磁粉','','2026-01-23 15:19:11','1','2026-01-27 16:41:22',_binary '\0',1),(8,'MAT-PWD-004','H系列粉末',3,10,'POWDER','粒度3-5μm','kg',NULL,1,'高矫顽力粉末，已停用','','2026-01-23 15:19:11','1','2026-01-27 16:41:14',_binary '\0',1),(9,'MAT-BLK-001','圆柱毛坯Φ10*8',NULL,NULL,'BLANK','Φ10mm×8mm','pcs',NULL,0,'压制后待烧结毛坯','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(10,'MAT-BLK-002','方块毛坯20*15*10',NULL,NULL,'BLANK','20×15×10mm','pcs',NULL,0,'方形压制毛坯','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(11,'MAT-BLK-003','瓦片毛坯',NULL,NULL,'BLANK','外径Φ120内径Φ80','pcs',NULL,0,'电机用瓦形毛坯','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(12,'MAT-SEMI-001','烧结体圆柱',NULL,NULL,'SEMI_PRODUCT','Φ10mm×8mm','pcs',NULL,0,'烧结后待机加工','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(13,'MAT-SEMI-002','烧结体方块',NULL,NULL,'SEMI_PRODUCT','20×15×10mm','pcs',NULL,0,'烧结后半成品','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(14,'MAT-SEMI-003','时效处理圆柱',NULL,NULL,'SEMI_PRODUCT','Φ10mm×8mm','pcs',NULL,0,'已时效，待表面处理','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(15,'MAT-PRD-001','N35圆柱磁体',NULL,NULL,'PRODUCT','Φ10mm×8mm','pcs',NULL,0,'标准圆柱形成品','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(16,'MAT-PRD-002','N38方块磁体',NULL,NULL,'PRODUCT','20×15×10mm','pcs',NULL,0,'高性能方块成品','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(17,'MAT-PRD-003','N42电机瓦片',5,15,'PRODUCT','外径Φ120内径Φ80','pcs',NULL,0,'电机专用瓦形磁体','','2026-01-23 15:19:11','1','2026-01-27 16:41:00',_binary '\0',1),(18,'MAT-PRD-004','N35H圆环磁体',5,15,'PRODUCT','外径Φ50内径Φ30厚8mm','pcs',NULL,0,'高矫顽力环形磁体','','2026-01-23 15:19:11','1','2026-01-27 16:40:52',_binary '\0',1),(19,'MAT-AUX-001','防锈油',NULL,NULL,'AUXILIARY','4L/桶','L',NULL,0,'表面防锈处理用','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(20,'MAT-AUX-002','包装纸盒',NULL,NULL,'AUXILIARY','200×150×100mm','pcs',NULL,0,'成品包装盒','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(21,'MAT-AUX-003','珍珠棉',NULL,NULL,'AUXILIARY','厚度5mm','m²',NULL,0,'产品防震包装材料','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1),(22,'MAT-AUX-004','硅胶干燥剂',NULL,NULL,'AUXILIARY','10g/包','pcs',NULL,0,'防潮包装辅料','','2026-01-23 15:19:11','','2026-01-23 15:21:53',_binary '\0',1);
/*!40000 ALTER TABLE `mes_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_material_batch`
--

DROP TABLE IF EXISTS `mes_material_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_material_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '鎵规?ID',
  `batch_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鎵规?鍙凤紙鍏ㄥ眬鍞?竴锛',
  `material_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡缂栫爜',
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鐗╂枡鍚嶇О',
  `material_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡绫诲瀷锛歊AW_MATERIAL-鍘熸潗鏂?SEMI_FINISHED-鍗婃垚鍝?FINISHED-鎴愬搧/AUXILIARY-杈呮枡',
  `supplier_batch_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渚涘簲鍟嗘壒鍙',
  `supplier_id` bigint DEFAULT NULL COMMENT '渚涘簲鍟咺D',
  `supplier_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渚涘簲鍟嗗悕绉',
  `internal_grade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍐呴儴鐗屽彿',
  `performance_grade` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎬ц兘鐗屽彿',
  `quantity` decimal(18,4) NOT NULL DEFAULT '0.0000' COMMENT '褰撳墠鏁伴噺',
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'kg' COMMENT '鍗曚綅',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'QUALIFIED' COMMENT '鎵规?鐘舵?',
  `container_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀹瑰櫒ID/鏂欑洏缂栧彿',
  `storage_location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撲綅缂栧彿',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_batch_no` (`batch_no`,`deleted`) COMMENT '鎵规?鍙峰敮涓?储寮',
  KEY `idx_material_code` (`material_code`) COMMENT '鐗╂枡缂栫爜绱㈠紩',
  KEY `idx_status` (`status`) COMMENT '鐘舵?绱㈠紩'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES-鐗╂枡鎵规?琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_material_batch`
--

LOCK TABLES `mes_material_batch` WRITE;
/*!40000 ALTER TABLE `mes_material_batch` DISABLE KEYS */;
INSERT INTO `mes_material_batch` VALUES (1,'B202601010001','MAT001','閾佺矇','RAW_MATERIAL',NULL,NULL,NULL,NULL,NULL,1000.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-01 20:46:17','','2026-01-01 20:46:17',_binary '\0',0),(3,'RAW-FE-20260102-001','RAW-FE','纯铁粉','RAW_MATERIAL','SUP-FE-20260101',NULL,'金属材料有限公司',NULL,NULL,250.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 08:00:00','','2026-01-02 21:21:37',_binary '\0',0),(4,'RAW-ND-20260102-001','RAW-ND','钕原料','RAW_MATERIAL','SUP-ND-20260101',NULL,'稀土材料有限公司',NULL,NULL,160.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 08:10:00','','2026-01-02 21:21:37',_binary '\0',0),(5,'RAW-B-20260102-001','RAW-B','硼原料','RAW_MATERIAL','SUP-B-20260101',NULL,'化工材料有限公司',NULL,NULL,40.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 08:20:00','','2026-01-02 21:21:37',_binary '\0',0),(6,'STRIP-N35-20260102-001','STRIP-N35','N35速凝片','SEMI_FINISHED',NULL,NULL,NULL,'IG-N35',NULL,5.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 11:30:00','','2026-01-02 21:21:37',_binary '\0',0),(7,'HDP-N35-20260102-001','HDP-N35','N35粗粉','SEMI_FINISHED',NULL,NULL,NULL,'IG-N35',NULL,5.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 15:45:00','','2026-01-02 21:21:37',_binary '\0',0),(8,'JMP-N35-20260102-001','JMP-N35','N35基础粉','SEMI_FINISHED',NULL,NULL,NULL,'IG-N35','N35',5.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-02 18:30:00','','2026-01-02 21:21:37',_binary '\0',0),(9,'BLP-N35-20260103-001','BLP-N35','N35混合粉','SEMI_FINISHED',NULL,NULL,NULL,'IG-N35','N35',0.0000,'kg','QUALIFIED',NULL,NULL,NULL,'','2026-01-03 10:00:00','','2026-01-02 21:21:37',_binary '\0',0),(10,'GC-N35-50x30x10-20260103-001','GC-N35-50x30x10','N35磁芯-50x30x10','FINISHED',NULL,NULL,NULL,NULL,'N35',500.0000,'pcs','QUALIFIED',NULL,NULL,NULL,'','2026-01-03 17:00:00','','2026-01-02 21:21:37',_binary '\0',0),(11,'GC-N35-40x20x15-20260103-001','GC-N35-40x20x15','N35磁芯-40x20x15','FINISHED',NULL,NULL,NULL,NULL,'N35',480.0000,'pcs','QUALIFIED',NULL,NULL,NULL,'','2026-01-03 17:00:00','','2026-01-02 21:21:37',_binary '\0',0);
/*!40000 ALTER TABLE `mes_material_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_material_subtype`
--

DROP TABLE IF EXISTS `mes_material_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_material_subtype` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type_id` bigint NOT NULL COMMENT '物料类型ID (FK → mes_material_type.id)',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '子类型编码 (METAL_ND/FLAKE/POWDER_BASE...)',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '子类型名称 (金属-钕/速凝片/基础粉料...)',
  `batch_rule` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '批次号生成规则模板',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT '显示排序号 (升序)',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态: 0-启用, 1-禁用',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_type_id` (`type_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES物料子类型表(二级分类)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_material_subtype`
--

LOCK TABLES `mes_material_subtype` WRITE;
/*!40000 ALTER TABLE `mes_material_subtype` DISABLE KEYS */;
INSERT INTO `mes_material_subtype` VALUES (1,1,'METAL_ND','金属-钕','ND-{DATE}-{SEQ}',10,0,'钕金属原料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(2,1,'METAL_PR','金属-镨','PR-{DATE}-{SEQ}',20,0,'镨金属原料','','2026-01-24 11:36:19','1','2026-01-25 16:24:39',_binary '',1),(3,1,'METAL_DY','金属-镝','DY-{DATE}-{SEQ}',30,0,'镝金属原料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(4,1,'METAL_FE','金属-铁','FE-{DATE}-{SEQ}',40,0,'铁金属原料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(5,1,'METAL_CO','金属-钴','CO-{DATE}-{SEQ}',50,0,'钴金属原料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(6,1,'METAL_B','金属-硼','B-{SUPPLIER}-{DATE}-{SEQ}',60,0,'硼金属原料','','2026-01-24 11:36:19','1','2026-01-25 19:12:12',_binary '\0',1),(7,2,'SOLVENT_GAS','汽油','GAS-{DATE}-{SEQ}',10,0,'工业汽油','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(8,2,'ADDITIVE_AOX','防氧化剂','AOX-{DATE}-{SEQ}',20,0,'防氧化添加剂','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(9,3,'FLAKE','速凝片','FL-{GRADE}-{DATE}-{SEQ}',10,0,'熔炼产出的速凝片','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(10,3,'POWDER_BASE','基础粉料','JMP-{GRADE}-{DATE}-{SEQ}',20,0,'气流磨产出的基础粉料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(11,3,'POWDER_MIX','混合粉料','BLP-{GRADE}-{DATE}-{SEQ}',30,0,'混粉产出的混合粉料','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(12,3,'COMPACT','压制毛坯','GC-{GRADE}-{SHAPE}-{DATE}-{SEQ}',40,0,'压制产出的毛坯','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(13,4,'SINTER_BLANK','烧结毛坯','SB-{GRADE}-{SHAPE}-{DATE}-{SEQ}',10,0,'烧结后的毛坯','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(14,4,'BLACK_PIECE','黑片','BP-{GRADE}-{DATE}-{SEQ}',20,0,'经过后加工但未电镀的产品','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1),(15,5,'WHITE_PIECE','白片','WP-{GRADE}-{DATE}-{SEQ}',10,0,'经过电镀后的成品','','2026-01-24 11:36:19','','2026-01-25 15:44:31',_binary '\0',1);
/*!40000 ALTER TABLE `mes_material_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_material_type`
--

DROP TABLE IF EXISTS `mes_material_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_material_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '绫诲瀷缂栫爜 (RAW/AUX/INTERMEDIATE/SEMI/FINISHED)',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '绫诲瀷鍚嶇О (鍘熸枡/杈呮枡/涓?棿鍝?鍗婃垚鍝?鎴愬搧)',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT '鏄剧ず鎺掑簭鍙?(鍗囧簭)',
  `is_purchasable` tinyint NOT NULL DEFAULT '0' COMMENT '鏄?惁鍙?噰璐? 0-鍚? 1-鏄',
  `is_saleable` tinyint NOT NULL DEFAULT '0' COMMENT '鏄?惁鍙?攢鍞? 0-鍚? 1-鏄',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '鐘舵?: 0-鍚?敤, 1-绂佺敤',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE,
  KEY `idx_purchasable` (`is_purchasable`) USING BTREE,
  KEY `idx_saleable` (`is_saleable`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES鐗╂枡绫诲瀷琛?涓?骇鍒嗙被)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_material_type`
--

LOCK TABLES `mes_material_type` WRITE;
/*!40000 ALTER TABLE `mes_material_type` DISABLE KEYS */;
INSERT INTO `mes_material_type` VALUES (1,'RAW','原料',10,1,0,0,'各类金属原料(可采购)','','2026-01-24 11:36:18','1','2026-01-28 21:15:24',_binary '\0',1),(2,'AUX','辅料',20,1,0,0,'汽油、防氧化剂等(可采购)','','2026-01-24 11:36:18','','2026-01-25 15:44:22',_binary '\0',1),(3,'INTERMEDIATE','中间品',30,1,0,0,'速凝片、基础粉料、混合粉料、压制毛坯(可采购)','','2026-01-24 11:36:18','','2026-01-25 15:44:22',_binary '\0',1),(4,'SEMI','半成品',40,0,1,0,'烧结毛坯、黑片(可销售)','','2026-01-24 11:36:18','','2026-01-25 15:44:22',_binary '\0',1),(5,'FINISHED','成品',50,0,1,0,'白片等成品(可销售)','','2026-01-24 11:36:18','','2026-01-25 15:44:22',_binary '\0',1);
/*!40000 ALTER TABLE `mes_material_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_mold`
--

DROP TABLE IF EXISTS `mes_mold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_mold` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '妯″叿缂栫爜',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '妯″叿鍚嶇О',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '褰㈢姸/绫诲瀷',
  `spec` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `life_cycles` int DEFAULT NULL COMMENT '璁捐?瀵垮懡(娆℃暟)',
  `used_cycles` int NOT NULL DEFAULT '0' COMMENT '褰撳墠浣跨敤娆℃暟',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'READY' COMMENT '鐘舵?: READY-灏辩华, IN_USE-浣跨敤涓? REPAIR-缁翠慨涓? SCRAP-鎶ュ簾',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES妯″叿鍙拌处琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_mold`
--

LOCK TABLES `mes_mold` WRITE;
/*!40000 ALTER TABLE `mes_mold` DISABLE KEYS */;
INSERT INTO `mes_mold` VALUES (1,'MOLD-001','圆柱模具Φ10*8','CYLINDER','Φ10mm×8mm',50000,1200,'READY',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:56',_binary '\0',1),(2,'MOLD-002','方块模具20*15*10','BLOCK','20×15×10mm',30000,5800,'READY',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:56',_binary '\0',1),(3,'MOLD-003','瓦片模具弧形','ARC','外径Φ120, 内径Φ80',20000,3200,'READY',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:56',_binary '\0',1),(4,'MOLD-004','环形模具Φ50','RING','外径Φ50, 内径Φ30, 厚8mm',40000,8900,'READY',NULL,'','2026-01-23 14:58:02','','2026-01-23 15:21:56',_binary '\0',1);
/*!40000 ALTER TABLE `mes_mold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_order_input`
--

DROP TABLE IF EXISTS `mes_order_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_order_input` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '鎶曟枡璁板綍ID',
  `order_id` bigint NOT NULL COMMENT '宸ュ崟ID',
  `order_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宸ュ崟鍙',
  `batch_id` bigint NOT NULL COMMENT '鎶曞叆鎵规?ID',
  `batch_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎶曞叆鎵规?鍙',
  `material_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡缂栫爜',
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鐗╂枡鍚嶇О',
  `quantity` decimal(18,4) NOT NULL COMMENT '鎶曞叆鏁伴噺',
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'kg' COMMENT '鍗曚綅',
  `seq_no` int DEFAULT '1' COMMENT '鎶曟枡搴忓彿',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`) COMMENT '宸ュ崟ID绱㈠紩',
  KEY `idx_batch_id` (`batch_id`) COMMENT '鎵规?ID绱㈠紩'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES-宸ュ崟鎶曟枡璁板綍琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_order_input`
--

LOCK TABLES `mes_order_input` WRITE;
/*!40000 ALTER TABLE `mes_order_input` DISABLE KEYS */;
INSERT INTO `mes_order_input` VALUES (1,3,'WO-MELT-20260102-001',5,'RAW-B-20260102-001','RAW-B','硼原料',10.0000,'kg',3,NULL,'','2026-01-02 09:15:00','','2026-01-02 21:21:36',_binary '\0',0),(2,3,'WO-MELT-20260102-001',3,'RAW-FE-20260102-001','RAW-FE','纯铁粉',250.0000,'kg',1,NULL,'','2026-01-02 09:15:00','','2026-01-02 21:21:36',_binary '\0',0),(3,3,'WO-MELT-20260102-001',4,'RAW-ND-20260102-001','RAW-ND','钕原料',40.0000,'kg',2,NULL,'','2026-01-02 09:15:00','','2026-01-02 21:21:36',_binary '\0',0),(4,4,'WO-HD-20260102-001',6,'STRIP-N35-20260102-001','STRIP-N35','N35速凝片',290.0000,'kg',1,NULL,'','2026-01-02 13:15:00','','2026-01-02 21:21:37',_binary '\0',0),(5,5,'WO-JFM-20260102-001',7,'HDP-N35-20260102-001','HDP-N35','N35粗粉',280.0000,'kg',1,NULL,'','2026-01-02 16:10:00','','2026-01-02 21:21:37',_binary '\0',0),(6,6,'WO-MIX-20260102-001',8,'JMP-N35-20260102-001','JMP-N35','N35基础粉',270.0000,'kg',1,NULL,'','2026-01-03 08:10:00','','2026-01-02 21:21:37',_binary '\0',0),(7,7,'WO-PRESS-20260103-001',9,'BLP-N35-20260103-001','BLP-N35','N35混合粉',268.0000,'kg',1,NULL,'','2026-01-03 13:10:00','','2026-01-02 21:21:37',_binary '\0',0);
/*!40000 ALTER TABLE `mes_order_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_order_output`
--

DROP TABLE IF EXISTS `mes_order_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_order_output` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '浜у嚭璁板綍ID',
  `order_id` bigint NOT NULL COMMENT '宸ュ崟ID',
  `order_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宸ュ崟鍙',
  `batch_id` bigint NOT NULL COMMENT '浜у嚭鎵规?ID',
  `batch_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浜у嚭鎵规?鍙',
  `material_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐗╂枡缂栫爜',
  `material_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鐗╂枡鍚嶇О',
  `quantity` decimal(18,4) NOT NULL COMMENT '浜у嚭鏁伴噺',
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'kg' COMMENT '鍗曚綅',
  `seq_no` int DEFAULT '1' COMMENT '浜у嚭搴忓彿',
  `quality_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'A' COMMENT '璐ㄩ噺绛夌骇锛欰-浼?B-鑹?C-鍚堟牸/D-涓嶅悎鏍',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`) COMMENT '宸ュ崟ID绱㈠紩',
  KEY `idx_batch_id` (`batch_id`) COMMENT '鎵规?ID绱㈠紩'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES-宸ュ崟浜у嚭璁板綍琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_order_output`
--

LOCK TABLES `mes_order_output` WRITE;
/*!40000 ALTER TABLE `mes_order_output` DISABLE KEYS */;
INSERT INTO `mes_order_output` VALUES (1,3,'WO-MELT-20260102-001',6,'STRIP-N35-20260102-001','STRIP-N35','N35速凝片',295.0000,'kg',1,'A',NULL,'','2026-01-02 11:30:00','','2026-01-02 21:21:36',_binary '\0',0),(2,4,'WO-HD-20260102-001',7,'HDP-N35-20260102-001','HDP-N35','N35粗粉',285.0000,'kg',1,'A',NULL,'','2026-01-02 15:45:00','','2026-01-02 21:21:37',_binary '\0',0),(3,5,'WO-JFM-20260102-001',8,'JMP-N35-20260102-001','JMP-N35','N35基础粉',275.0000,'kg',1,'A',NULL,'','2026-01-02 18:30:00','','2026-01-02 21:21:37',_binary '\0',0),(4,6,'WO-MIX-20260102-001',9,'BLP-N35-20260103-001','BLP-N35','N35混合粉',268.0000,'kg',1,'A',NULL,'','2026-01-03 10:00:00','','2026-01-02 21:21:37',_binary '\0',0),(5,7,'WO-PRESS-20260103-001',11,'GC-N35-40x20x15-20260103-001','GC-N35-40x20x15','N35磁芯-40x20x15',480.0000,'pcs',1,'A',NULL,'','2026-01-03 17:00:00','','2026-01-02 21:21:37',_binary '\0',0),(6,7,'WO-PRESS-20260103-001',10,'GC-N35-50x30x10-20260103-001','GC-N35-50x30x10','N35磁芯-50x30x10',500.0000,'pcs',2,'A',NULL,'','2026-01-03 17:00:00','','2026-01-02 21:21:37',_binary '\0',0);
/*!40000 ALTER TABLE `mes_order_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_process`
--

DROP TABLE IF EXISTS `mes_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_process` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '宸ュ簭缂栫爜',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '宸ュ簭鍚嶇О',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宸ュ簭绫诲瀷',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宸ュ簭鎻忚堪',
  `standard_time` int DEFAULT NULL COMMENT '鏍囧噯宸ユ椂(鍒嗛挓)',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '鐘舵?: 0-鍚?敤, 1-绂佺敤',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`,`deleted`,`tenant_id`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE,
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES宸ュ簭瀹氫箟琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_process`
--

LOCK TABLES `mes_process` WRITE;
/*!40000 ALTER TABLE `mes_process` DISABLE KEYS */;
INSERT INTO `mes_process` VALUES (11,'PROC-001','熔炼','MELT','原料熔炼工序',120,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(12,'PROC-002','氢破碎','HD','氢致破碎工序',180,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(13,'PROC-003','气流磨','MILL','气流磨粉工序',90,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(14,'PROC-004','压制','PRESS','粉末压制成型',60,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(15,'PROC-005','烧结','SINTER','真空烧结',240,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(16,'PROC-006','时效','AGING','时效处理',150,0,NULL,'','2026-01-23 15:00:06','1','2026-01-24 16:33:25',_binary '',1),(17,'PROC-007','机加工','MACHINING','机械加工',120,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(18,'PROC-008','表面处理','COATING','表面涂层',90,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(19,'PROC-009','磁性能测试','TEST','磁性能检测',30,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1),(20,'PROC-010','包装','PACKING','成品包装',20,0,NULL,'','2026-01-23 15:00:06','','2026-01-23 15:21:54',_binary '\0',1);
/*!40000 ALTER TABLE `mes_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_production_order`
--

DROP TABLE IF EXISTS `mes_production_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_production_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '宸ュ崟ID',
  `order_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '宸ュ崟鍙凤紙鍏ㄥ眬鍞?竴锛',
  `process_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '宸ュ簭浠ｇ爜',
  `process_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宸ュ簭鍚嶇О',
  `equipment_id` bigint DEFAULT NULL COMMENT '璁惧?ID',
  `equipment_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '璁惧?缂栧彿',
  `operator_id` bigint DEFAULT NULL COMMENT '鎿嶄綔浜哄憳ID',
  `operator_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎿嶄綔浜哄憳濮撳悕',
  `plan_quantity` decimal(18,4) DEFAULT '0.0000' COMMENT '璁″垝鏁伴噺',
  `actual_quantity` decimal(18,4) DEFAULT '0.0000' COMMENT '瀹為檯瀹屾垚鏁伴噺',
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'kg' COMMENT '鍗曚綅',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING' COMMENT '宸ュ崟鐘舵?锛歅ENDING-寰呮墽琛?IN_PROGRESS-鎵ц?涓?COMPLETED-宸插畬鎴?CANCELLED-宸插彇娑',
  `plan_start_time` datetime DEFAULT NULL COMMENT '璁″垝寮??鏃堕棿',
  `plan_end_time` datetime DEFAULT NULL COMMENT '璁″垝缁撴潫鏃堕棿',
  `actual_start_time` datetime DEFAULT NULL COMMENT '瀹為檯寮??鏃堕棿',
  `actual_end_time` datetime DEFAULT NULL COMMENT '瀹為檯缁撴潫鏃堕棿',
  `process_params` text COLLATE utf8mb4_unicode_ci COMMENT '宸ヨ壓鍙傛暟锛圝SON鏍煎紡锛',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鍒涘缓鑰',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '鏇存柊鑰',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '鏇存柊鏃堕棿',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '鏄?惁鍒犻櫎',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '绉熸埛缂栧彿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_no` (`order_no`,`deleted`) COMMENT '宸ュ崟鍙峰敮涓?储寮',
  KEY `idx_process_code` (`process_code`) COMMENT '宸ュ簭浠ｇ爜绱㈠紩',
  KEY `idx_status` (`status`) COMMENT '鐘舵?绱㈠紩'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MES-鐢熶骇宸ュ崟琛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_production_order`
--

LOCK TABLES `mes_production_order` WRITE;
/*!40000 ALTER TABLE `mes_production_order` DISABLE KEYS */;
INSERT INTO `mes_production_order` VALUES (1,'WO202601010001','PRESSING','鍘嬪瀷',NULL,NULL,NULL,NULL,100.0000,0.0000,'pcs','PENDING',NULL,NULL,NULL,NULL,NULL,NULL,'','2026-01-01 20:46:17','','2026-01-01 20:46:17',_binary '\0',0),(2,'WO2026010200001','MELTING','Melting',1,'EQ001',1,'Zhang San',100.0000,98.5000,'kg','COMPLETED','1970-01-01 08:00:00','1970-01-01 08:00:00','2026-01-02 16:14:43','2026-01-02 16:14:44',NULL,'Test Order - Updated actual quantity','1','2026-01-02 16:14:43','1','2026-01-02 16:14:44',_binary '\0',1),(3,'WO-MELT-20260102-001','MELTING','熔炼',NULL,'EQ-MELT-01',NULL,'张三',300.0000,295.0000,'kg','COMPLETED','2026-01-02 09:00:00',NULL,'2026-01-02 09:15:00','2026-01-02 11:30:00',NULL,NULL,'','2026-01-02 08:30:00','','2026-01-02 21:21:36',_binary '\0',0),(4,'WO-HD-20260102-001','HYDROGEN_DECREPITATION','氢破碎',NULL,'EQ-HD-01',NULL,'李四',290.0000,285.0000,'kg','COMPLETED','2026-01-02 13:00:00',NULL,'2026-01-02 13:15:00','2026-01-02 15:45:00',NULL,NULL,'','2026-01-02 12:00:00','','2026-01-02 21:21:37',_binary '\0',0),(5,'WO-JFM-20260102-001','JET_MILLING','气流磨',NULL,'EQ-JFM-01',NULL,'王五',280.0000,275.0000,'kg','COMPLETED','2026-01-02 16:00:00',NULL,'2026-01-02 16:10:00','2026-01-02 18:30:00',NULL,NULL,'','2026-01-02 15:50:00','','2026-01-02 21:21:37',_binary '\0',0),(6,'WO-MIX-20260102-001','MIXING','混粉',NULL,'EQ-MIX-01',NULL,'赵六',270.0000,268.0000,'kg','COMPLETED','2026-01-03 08:00:00',NULL,'2026-01-03 08:10:00','2026-01-03 10:00:00',NULL,NULL,'','2026-01-02 19:00:00','','2026-01-02 21:21:37',_binary '\0',0),(7,'WO-PRESS-20260103-001','PRESSING','压型',NULL,'EQ-PRESS-01',NULL,'孙七',1000.0000,980.0000,'pcs','COMPLETED','2026-01-03 13:00:00',NULL,'2026-01-03 13:10:00','2026-01-03 17:00:00',NULL,NULL,'','2026-01-03 10:30:00','','2026-01-02 21:21:37',_binary '\0',0);
/*!40000 ALTER TABLE `mes_production_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_dept`
--

DROP TABLE IF EXISTS `system_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_dept` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint NOT NULL DEFAULT '0' COMMENT '父部门id',
  `sort` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `leader_user_id` bigint DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` tinyint NOT NULL COMMENT '部门状态（0正常 1停用）',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_dept`
--

LOCK TABLES `system_dept` WRITE;
/*!40000 ALTER TABLE `system_dept` DISABLE KEYS */;
INSERT INTO `system_dept` VALUES (100,'芋道源码',0,0,1,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2025-03-29 15:47:53',_binary '\0',1),(101,'深圳总公司',100,1,104,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2025-03-29 15:49:55',_binary '\0',1),(102,'长沙分公司',100,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:40',_binary '\0',1),(103,'研发部门',101,1,1,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2024-10-02 10:22:03',_binary '\0',1),(104,'市场部门',101,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:38',_binary '\0',1),(105,'测试部门',101,3,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2022-05-16 20:25:15',_binary '\0',1),(106,'财务部门',101,4,103,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','103','2022-01-15 21:32:22',_binary '\0',1),(107,'运维部门',101,5,1,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2023-12-02 09:28:22',_binary '\0',1),(108,'市场部门',102,1,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','1','2022-02-16 08:35:45',_binary '\0',1),(109,'财务部门',102,2,NULL,'15888888888','ry@qq.com',0,'admin','2021-01-05 17:03:47','','2021-12-15 05:01:29',_binary '\0',1),(110,'新部门',0,1,NULL,NULL,NULL,0,'110','2022-02-23 20:46:30','110','2022-02-23 20:46:30',_binary '\0',121),(111,'顶级部门',0,1,NULL,NULL,NULL,0,'113','2022-03-07 21:44:50','113','2022-03-07 21:44:50',_binary '\0',122),(112,'产品部门',101,100,1,NULL,NULL,1,'1','2023-12-02 09:45:13','1','2023-12-02 09:45:31',_binary '\0',1),(113,'支持部门',102,3,104,NULL,NULL,1,'1','2023-12-02 09:47:38','1','2025-03-29 15:00:56',_binary '\0',1);
/*!40000 ALTER TABLE `system_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_dict_data`
--

DROP TABLE IF EXISTS `system_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_dict_data` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `sort` int NOT NULL DEFAULT '0' COMMENT '字典排序',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典标签',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `color_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '颜色类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'css 样式',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3036 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_dict_data`
--

LOCK TABLES `system_dict_data` WRITE;
/*!40000 ALTER TABLE `system_dict_data` DISABLE KEYS */;
INSERT INTO `system_dict_data` VALUES (1,1,'男','1','system_user_sex',0,'default','A','性别男','admin','2021-01-05 17:03:48','1','2022-03-29 00:14:39',_binary '\0'),(2,2,'女','2','system_user_sex',0,'success','','性别女','admin','2021-01-05 17:03:48','1','2023-11-15 23:30:37',_binary '\0'),(8,1,'正常','1','infra_job_status',0,'success','','正常状态','admin','2021-01-05 17:03:48','1','2022-02-16 19:33:38',_binary '\0'),(9,2,'暂停','2','infra_job_status',0,'danger','','停用状态','admin','2021-01-05 17:03:48','1','2022-02-16 19:33:45',_binary '\0'),(12,1,'系统内置','1','infra_config_type',0,'danger','','参数类型 - 系统内置','admin','2021-01-05 17:03:48','1','2022-02-16 19:06:02',_binary '\0'),(13,2,'自定义','2','infra_config_type',0,'primary','','参数类型 - 自定义','admin','2021-01-05 17:03:48','1','2022-02-16 19:06:07',_binary '\0'),(14,1,'通知','1','system_notice_type',0,'success','','通知','admin','2021-01-05 17:03:48','1','2022-02-16 13:05:57',_binary '\0'),(15,2,'公告','2','system_notice_type',0,'info','','公告','admin','2021-01-05 17:03:48','1','2022-02-16 13:06:01',_binary '\0'),(16,0,'其它','0','infra_operate_type',0,'default','','其它操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:19',_binary '\0'),(17,1,'查询','1','infra_operate_type',0,'info','','查询操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:20',_binary '\0'),(18,2,'新增','2','infra_operate_type',0,'primary','','新增操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:21',_binary '\0'),(19,3,'修改','3','infra_operate_type',0,'warning','','修改操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:22',_binary '\0'),(20,4,'删除','4','infra_operate_type',0,'danger','','删除操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:23',_binary '\0'),(22,5,'导出','5','infra_operate_type',0,'default','','导出操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:24',_binary '\0'),(23,6,'导入','6','infra_operate_type',0,'default','','导入操作','admin','2021-01-05 17:03:48','1','2024-03-14 12:44:25',_binary '\0'),(27,1,'开启','0','common_status',0,'primary','','开启状态','admin','2021-01-05 17:03:48','1','2022-02-16 08:00:39',_binary '\0'),(28,2,'关闭','1','common_status',0,'info','','关闭状态','admin','2021-01-05 17:03:48','1','2022-02-16 08:00:44',_binary '\0'),(29,1,'目录','1','system_menu_type',0,'','','目录','admin','2021-01-05 17:03:48','','2022-02-01 16:43:45',_binary '\0'),(30,2,'菜单','2','system_menu_type',0,'','','菜单','admin','2021-01-05 17:03:48','','2022-02-01 16:43:41',_binary '\0'),(31,3,'按钮','3','system_menu_type',0,'','','按钮','admin','2021-01-05 17:03:48','','2022-02-01 16:43:39',_binary '\0'),(32,1,'内置','1','system_role_type',0,'danger','','内置角色','admin','2021-01-05 17:03:48','1','2022-02-16 13:02:08',_binary '\0'),(33,2,'自定义','2','system_role_type',0,'primary','','自定义角色','admin','2021-01-05 17:03:48','1','2022-02-16 13:02:12',_binary '\0'),(34,1,'全部数据权限','1','system_data_scope',0,'','','全部数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:17',_binary '\0'),(35,2,'指定部门数据权限','2','system_data_scope',0,'','','指定部门数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:18',_binary '\0'),(36,3,'本部门数据权限','3','system_data_scope',0,'','','本部门数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:16',_binary '\0'),(37,4,'本部门及以下数据权限','4','system_data_scope',0,'','','本部门及以下数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:21',_binary '\0'),(38,5,'仅本人数据权限','5','system_data_scope',0,'','','仅本人数据权限','admin','2021-01-05 17:03:48','','2022-02-01 16:47:23',_binary '\0'),(39,0,'成功','0','system_login_result',0,'success','','登陆结果 - 成功','','2021-01-18 06:17:36','1','2022-02-16 13:23:49',_binary '\0'),(40,10,'账号或密码不正确','10','system_login_result',0,'primary','','登陆结果 - 账号或密码不正确','','2021-01-18 06:17:54','1','2022-02-16 13:24:27',_binary '\0'),(41,20,'用户被禁用','20','system_login_result',0,'warning','','登陆结果 - 用户被禁用','','2021-01-18 06:17:54','1','2022-02-16 13:23:57',_binary '\0'),(42,30,'验证码不存在','30','system_login_result',0,'info','','登陆结果 - 验证码不存在','','2021-01-18 06:17:54','1','2022-02-16 13:24:07',_binary '\0'),(43,31,'验证码不正确','31','system_login_result',0,'info','','登陆结果 - 验证码不正确','','2021-01-18 06:17:54','1','2022-02-16 13:24:11',_binary '\0'),(44,100,'未知异常','100','system_login_result',0,'danger','','登陆结果 - 未知异常','','2021-01-18 06:17:54','1','2022-02-16 13:24:23',_binary '\0'),(45,1,'是','true','infra_boolean_string',0,'danger','','Boolean 是否类型 - 是','','2021-01-19 03:20:55','1','2022-03-15 23:01:45',_binary '\0'),(46,1,'否','false','infra_boolean_string',0,'info','','Boolean 是否类型 - 否','','2021-01-19 03:20:55','1','2022-03-15 23:09:45',_binary '\0'),(50,1,'单表（增删改查）','1','infra_codegen_template_type',0,'','',NULL,'','2021-02-05 07:09:06','','2022-03-10 16:33:15',_binary '\0'),(51,2,'树表（增删改查）','2','infra_codegen_template_type',0,'','',NULL,'','2021-02-05 07:14:46','','2022-03-10 16:33:19',_binary '\0'),(53,0,'初始化中','0','infra_job_status',0,'primary','',NULL,'','2021-02-07 07:46:49','1','2022-02-16 19:33:29',_binary '\0'),(57,0,'运行中','0','infra_job_log_status',0,'primary','','RUNNING','','2021-02-08 10:04:24','1','2022-02-16 19:07:48',_binary '\0'),(58,1,'成功','1','infra_job_log_status',0,'success','',NULL,'','2021-02-08 10:06:57','1','2022-02-16 19:07:52',_binary '\0'),(59,2,'失败','2','infra_job_log_status',0,'warning','','失败','','2021-02-08 10:07:38','1','2022-02-16 19:07:56',_binary '\0'),(60,1,'会员','1','user_type',0,'primary','',NULL,'','2021-02-26 00:16:27','1','2022-02-16 10:22:19',_binary '\0'),(61,2,'管理员','2','user_type',0,'success','',NULL,'','2021-02-26 00:16:34','1','2025-04-06 18:37:43',_binary '\0'),(62,0,'未处理','0','infra_api_error_log_process_status',0,'primary','',NULL,'','2021-02-26 07:07:19','1','2022-02-16 20:14:17',_binary '\0'),(63,1,'已处理','1','infra_api_error_log_process_status',0,'success','',NULL,'','2021-02-26 07:07:26','1','2022-02-16 20:14:08',_binary '\0'),(64,2,'已忽略','2','infra_api_error_log_process_status',0,'danger','',NULL,'','2021-02-26 07:07:34','1','2022-02-16 20:14:14',_binary '\0'),(66,1,'阿里云','ALIYUN','system_sms_channel_code',0,'primary','',NULL,'1','2021-04-05 01:05:26','1','2024-07-22 22:23:25',_binary '\0'),(67,1,'验证码','1','system_sms_template_type',0,'warning','',NULL,'1','2021-04-05 21:50:57','1','2022-02-16 12:48:30',_binary '\0'),(68,2,'通知','2','system_sms_template_type',0,'primary','',NULL,'1','2021-04-05 21:51:08','1','2022-02-16 12:48:27',_binary '\0'),(69,0,'营销','3','system_sms_template_type',0,'danger','',NULL,'1','2021-04-05 21:51:15','1','2022-02-16 12:48:22',_binary '\0'),(70,0,'初始化','0','system_sms_send_status',0,'primary','',NULL,'1','2021-04-11 20:18:33','1','2022-02-16 10:26:07',_binary '\0'),(71,1,'发送成功','10','system_sms_send_status',0,'success','',NULL,'1','2021-04-11 20:18:43','1','2022-02-16 10:25:56',_binary '\0'),(72,2,'发送失败','20','system_sms_send_status',0,'danger','',NULL,'1','2021-04-11 20:18:49','1','2022-02-16 10:26:03',_binary '\0'),(73,3,'不发送','30','system_sms_send_status',0,'info','',NULL,'1','2021-04-11 20:19:44','1','2022-02-16 10:26:10',_binary '\0'),(74,0,'等待结果','0','system_sms_receive_status',0,'primary','',NULL,'1','2021-04-11 20:27:43','1','2022-02-16 10:28:24',_binary '\0'),(75,1,'接收成功','10','system_sms_receive_status',0,'success','',NULL,'1','2021-04-11 20:29:25','1','2022-02-16 10:28:28',_binary '\0'),(76,2,'接收失败','20','system_sms_receive_status',0,'danger','',NULL,'1','2021-04-11 20:29:31','1','2022-02-16 10:28:32',_binary '\0'),(77,0,'调试(钉钉)','DEBUG_DING_TALK','system_sms_channel_code',0,'info','',NULL,'1','2021-04-13 00:20:37','1','2022-02-16 10:10:00',_binary '\0'),(80,100,'账号登录','100','system_login_type',0,'primary','','账号登录','1','2021-10-06 00:52:02','1','2022-02-16 13:11:34',_binary '\0'),(81,101,'社交登录','101','system_login_type',0,'info','','社交登录','1','2021-10-06 00:52:17','1','2022-02-16 13:11:40',_binary '\0'),(83,200,'主动登出','200','system_login_type',0,'primary','','主动登出','1','2021-10-06 00:52:58','1','2022-02-16 13:11:49',_binary '\0'),(85,202,'强制登出','202','system_login_type',0,'danger','','强制退出','1','2021-10-06 00:53:41','1','2022-02-16 13:11:57',_binary '\0'),(86,0,'病假','1','bpm_oa_leave_type',0,'primary','',NULL,'1','2021-09-21 22:35:28','1','2022-02-16 10:00:41',_binary '\0'),(87,1,'事假','2','bpm_oa_leave_type',0,'info','',NULL,'1','2021-09-21 22:36:11','1','2022-02-16 10:00:49',_binary '\0'),(88,2,'婚假','3','bpm_oa_leave_type',0,'warning','',NULL,'1','2021-09-21 22:36:38','1','2022-02-16 10:00:53',_binary '\0'),(112,0,'微信 Wap 网站支付','wx_wap','pay_channel_code',0,'success','','微信 Wap 网站支付','1','2023-07-19 20:08:06','1','2023-07-19 20:09:08',_binary '\0'),(113,1,'微信公众号支付','wx_pub','pay_channel_code',0,'success','','微信公众号支付','1','2021-12-03 10:40:24','1','2023-07-19 20:08:47',_binary '\0'),(114,2,'微信小程序支付','wx_lite','pay_channel_code',0,'success','','微信小程序支付','1','2021-12-03 10:41:06','1','2023-07-19 20:08:50',_binary '\0'),(115,3,'微信 App 支付','wx_app','pay_channel_code',0,'success','','微信 App 支付','1','2021-12-03 10:41:20','1','2023-07-19 20:08:56',_binary '\0'),(116,10,'支付宝 PC 网站支付','alipay_pc','pay_channel_code',0,'primary','','支付宝 PC 网站支付','1','2021-12-03 10:42:09','1','2023-07-19 20:09:12',_binary '\0'),(117,11,'支付宝 Wap 网站支付','alipay_wap','pay_channel_code',0,'primary','','支付宝 Wap 网站支付','1','2021-12-03 10:42:26','1','2023-07-19 20:09:16',_binary '\0'),(118,12,'支付宝 App 支付','alipay_app','pay_channel_code',0,'primary','','支付宝 App 支付','1','2021-12-03 10:42:55','1','2023-07-19 20:09:20',_binary '\0'),(119,14,'支付宝扫码支付','alipay_qr','pay_channel_code',0,'primary','','支付宝扫码支付','1','2021-12-03 10:43:10','1','2023-07-19 20:09:28',_binary '\0'),(120,10,'通知成功','10','pay_notify_status',0,'success','','通知成功','1','2021-12-03 11:02:41','1','2023-07-19 10:08:19',_binary '\0'),(121,20,'通知失败','20','pay_notify_status',0,'danger','','通知失败','1','2021-12-03 11:02:59','1','2023-07-19 10:08:21',_binary '\0'),(122,0,'等待通知','0','pay_notify_status',0,'info','','未通知','1','2021-12-03 11:03:10','1','2023-07-19 10:08:24',_binary '\0'),(123,10,'支付成功','10','pay_order_status',0,'success','','支付成功','1','2021-12-03 11:18:29','1','2023-07-19 18:04:28',_binary '\0'),(124,30,'支付关闭','30','pay_order_status',0,'info','','支付关闭','1','2021-12-03 11:18:42','1','2023-07-19 18:05:07',_binary '\0'),(125,0,'等待支付','0','pay_order_status',0,'info','','未支付','1','2021-12-03 11:18:18','1','2023-07-19 18:04:15',_binary '\0'),(600,5,'首页','1','promotion_banner_position',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(601,4,'秒杀活动页','2','promotion_banner_position',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(602,3,'砍价活动页','3','promotion_banner_position',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(603,2,'限时折扣页','4','promotion_banner_position',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(604,1,'满减送页','5','promotion_banner_position',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(1118,0,'等待退款','0','pay_refund_status',0,'info','','等待退款','1','2021-12-10 16:44:59','1','2023-07-19 10:14:39',_binary '\0'),(1119,20,'退款失败','20','pay_refund_status',0,'danger','','退款失败','1','2021-12-10 16:45:10','1','2023-07-19 10:15:10',_binary '\0'),(1124,10,'退款成功','10','pay_refund_status',0,'success','','退款成功','1','2021-12-10 16:46:26','1','2023-07-19 10:15:00',_binary '\0'),(1127,1,'审批中','1','bpm_process_instance_status',0,'default','','流程实例的状态 - 进行中','1','2022-01-07 23:47:22','1','2024-03-16 16:11:45',_binary '\0'),(1128,2,'审批通过','2','bpm_process_instance_status',0,'success','','流程实例的状态 - 已完成','1','2022-01-07 23:47:49','1','2024-03-16 16:11:54',_binary '\0'),(1129,1,'审批中','1','bpm_task_status',0,'primary','','流程实例的结果 - 处理中','1','2022-01-07 23:48:32','1','2024-03-08 22:41:37',_binary '\0'),(1130,2,'审批通过','2','bpm_task_status',0,'success','','流程实例的结果 - 通过','1','2022-01-07 23:48:45','1','2024-03-08 22:41:38',_binary '\0'),(1131,3,'审批不通过','3','bpm_task_status',0,'danger','','流程实例的结果 - 不通过','1','2022-01-07 23:48:55','1','2024-03-08 22:41:38',_binary '\0'),(1132,4,'已取消','4','bpm_task_status',0,'info','','流程实例的结果 - 撤销','1','2022-01-07 23:49:06','1','2024-03-08 22:41:39',_binary '\0'),(1133,10,'流程表单','10','bpm_model_form_type',0,'','','流程的表单类型 - 流程表单','103','2022-01-11 23:51:30','103','2022-01-11 23:51:30',_binary '\0'),(1134,20,'业务表单','20','bpm_model_form_type',0,'','','流程的表单类型 - 业务表单','103','2022-01-11 23:51:47','103','2022-01-11 23:51:47',_binary '\0'),(1135,10,'角色','10','bpm_task_candidate_strategy',0,'info','','任务分配规则的类型 - 角色','103','2022-01-12 23:21:22','1','2024-03-06 02:53:16',_binary '\0'),(1136,20,'部门的成员','20','bpm_task_candidate_strategy',0,'primary','','任务分配规则的类型 - 部门的成员','103','2022-01-12 23:21:47','1','2024-03-06 02:53:17',_binary '\0'),(1137,21,'部门的负责人','21','bpm_task_candidate_strategy',0,'primary','','任务分配规则的类型 - 部门的负责人','103','2022-01-12 23:33:36','1','2024-03-06 02:53:18',_binary '\0'),(1138,30,'用户','30','bpm_task_candidate_strategy',0,'info','','任务分配规则的类型 - 用户','103','2022-01-12 23:34:02','1','2024-03-06 02:53:19',_binary '\0'),(1139,40,'用户组','40','bpm_task_candidate_strategy',0,'warning','','任务分配规则的类型 - 用户组','103','2022-01-12 23:34:21','1','2024-03-06 02:53:20',_binary '\0'),(1140,60,'流程表达式','60','bpm_task_candidate_strategy',0,'danger','','任务分配规则的类型 - 流程表达式','103','2022-01-12 23:34:43','1','2024-03-06 02:53:20',_binary '\0'),(1141,22,'岗位','22','bpm_task_candidate_strategy',0,'success','','任务分配规则的类型 - 岗位','103','2022-01-14 18:41:55','1','2024-03-06 02:53:21',_binary '\0'),(1145,1,'管理后台','1','infra_codegen_scene',0,'','','代码生成的场景枚举 - 管理后台','1','2022-02-02 13:15:06','1','2022-03-10 16:32:59',_binary '\0'),(1146,2,'用户 APP','2','infra_codegen_scene',0,'','','代码生成的场景枚举 - 用户 APP','1','2022-02-02 13:15:19','1','2022-03-10 16:33:03',_binary '\0'),(1150,1,'数据库','1','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:25:28','1','2022-03-15 00:25:28',_binary '\0'),(1151,10,'本地磁盘','10','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:25:41','1','2022-03-15 00:25:56',_binary '\0'),(1152,11,'FTP 服务器','11','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:06','1','2022-03-15 00:26:10',_binary '\0'),(1153,12,'SFTP 服务器','12','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:22','1','2022-03-15 00:26:22',_binary '\0'),(1154,20,'S3 对象存储','20','infra_file_storage',0,'default','',NULL,'1','2022-03-15 00:26:31','1','2022-03-15 00:26:45',_binary '\0'),(1155,103,'短信登录','103','system_login_type',0,'default','',NULL,'1','2022-05-09 23:57:58','1','2022-05-09 23:58:09',_binary '\0'),(1156,1,'password','password','system_oauth2_grant_type',0,'default','','密码模式','1','2022-05-12 00:22:05','1','2022-05-11 16:26:01',_binary '\0'),(1157,2,'authorization_code','authorization_code','system_oauth2_grant_type',0,'primary','','授权码模式','1','2022-05-12 00:22:59','1','2022-05-11 16:26:02',_binary '\0'),(1158,3,'implicit','implicit','system_oauth2_grant_type',0,'success','','简化模式','1','2022-05-12 00:23:40','1','2022-05-11 16:26:05',_binary '\0'),(1159,4,'client_credentials','client_credentials','system_oauth2_grant_type',0,'default','','客户端模式','1','2022-05-12 00:23:51','1','2022-05-11 16:26:08',_binary '\0'),(1160,5,'refresh_token','refresh_token','system_oauth2_grant_type',0,'info','','刷新模式','1','2022-05-12 00:24:02','1','2022-05-11 16:26:11',_binary '\0'),(1162,1,'销售中','1','product_spu_status',0,'success','','商品 SPU 状态 - 销售中','1','2022-10-24 21:19:47','1','2022-10-24 21:20:38',_binary '\0'),(1163,0,'仓库中','0','product_spu_status',0,'info','','商品 SPU 状态 - 仓库中','1','2022-10-24 21:20:54','1','2022-10-24 21:21:22',_binary '\0'),(1164,0,'回收站','-1','product_spu_status',0,'default','','商品 SPU 状态 - 回收站','1','2022-10-24 21:21:11','1','2022-10-24 21:21:11',_binary '\0'),(1165,1,'满减','1','promotion_discount_type',0,'success','','优惠类型 - 满减','1','2022-11-01 12:46:41','1','2022-11-01 12:50:11',_binary '\0'),(1166,2,'折扣','2','promotion_discount_type',0,'primary','','优惠类型 - 折扣','1','2022-11-01 12:46:51','1','2022-11-01 12:50:08',_binary '\0'),(1167,1,'固定日期','1','promotion_coupon_template_validity_type',0,'default','','优惠劵模板的有限期类型 - 固定日期','1','2022-11-02 00:07:34','1','2022-11-04 00:07:49',_binary '\0'),(1168,2,'领取之后','2','promotion_coupon_template_validity_type',0,'default','','优惠劵模板的有限期类型 - 领取之后','1','2022-11-02 00:07:54','1','2022-11-04 00:07:52',_binary '\0'),(1169,1,'通用劵','1','promotion_product_scope',0,'default','','营销的商品范围 - 全部商品参与','1','2022-11-02 00:28:22','1','2023-09-28 00:27:42',_binary '\0'),(1170,2,'商品劵','2','promotion_product_scope',0,'default','','营销的商品范围 - 指定商品参与','1','2022-11-02 00:28:34','1','2023-09-28 00:27:44',_binary '\0'),(1171,1,'未使用','1','promotion_coupon_status',0,'primary','','优惠劵的状态 - 已领取','1','2022-11-04 00:15:08','1','2023-10-03 12:54:38',_binary '\0'),(1172,2,'已使用','2','promotion_coupon_status',0,'success','','优惠劵的状态 - 已使用','1','2022-11-04 00:15:21','1','2022-11-04 19:16:08',_binary '\0'),(1173,3,'已过期','3','promotion_coupon_status',0,'info','','优惠劵的状态 - 已过期','1','2022-11-04 00:15:43','1','2022-11-04 19:16:12',_binary '\0'),(1174,1,'直接领取','1','promotion_coupon_take_type',0,'primary','','优惠劵的领取方式 - 直接领取','1','2022-11-04 19:13:00','1','2022-11-04 19:13:25',_binary '\0'),(1175,2,'指定发放','2','promotion_coupon_take_type',0,'success','','优惠劵的领取方式 - 指定发放','1','2022-11-04 19:13:13','1','2022-11-04 19:14:48',_binary '\0'),(1176,10,'未开始','10','promotion_activity_status',0,'primary','','促销活动的状态枚举 - 未开始','1','2022-11-04 22:54:49','1','2022-11-04 22:55:53',_binary '\0'),(1177,20,'进行中','20','promotion_activity_status',0,'success','','促销活动的状态枚举 - 进行中','1','2022-11-04 22:55:06','1','2022-11-04 22:55:20',_binary '\0'),(1178,30,'已结束','30','promotion_activity_status',0,'info','','促销活动的状态枚举 - 已结束','1','2022-11-04 22:55:41','1','2022-11-04 22:55:41',_binary '\0'),(1179,40,'已关闭','40','promotion_activity_status',0,'warning','','促销活动的状态枚举 - 已关闭','1','2022-11-04 22:56:10','1','2022-11-04 22:56:18',_binary '\0'),(1180,10,'满 N 元','10','promotion_condition_type',0,'primary','','营销的条件类型 - 满 N 元','1','2022-11-04 22:59:45','1','2022-11-04 22:59:45',_binary '\0'),(1181,20,'满 N 件','20','promotion_condition_type',0,'success','','营销的条件类型 - 满 N 件','1','2022-11-04 23:00:02','1','2022-11-04 23:00:02',_binary '\0'),(1182,10,'申请售后','10','trade_after_sale_status',0,'primary','','交易售后状态 - 申请售后','1','2022-11-19 20:53:33','1','2022-11-19 20:54:42',_binary '\0'),(1183,20,'商品待退货','20','trade_after_sale_status',0,'primary','','交易售后状态 - 商品待退货','1','2022-11-19 20:54:36','1','2022-11-19 20:58:58',_binary '\0'),(1184,30,'商家待收货','30','trade_after_sale_status',0,'primary','','交易售后状态 - 商家待收货','1','2022-11-19 20:56:56','1','2022-11-19 20:59:20',_binary '\0'),(1185,40,'等待退款','40','trade_after_sale_status',0,'primary','','交易售后状态 - 等待退款','1','2022-11-19 20:59:54','1','2022-11-19 21:00:01',_binary '\0'),(1186,50,'退款成功','50','trade_after_sale_status',0,'default','','交易售后状态 - 退款成功','1','2022-11-19 21:00:33','1','2022-11-19 21:00:33',_binary '\0'),(1187,61,'买家取消','61','trade_after_sale_status',0,'info','','交易售后状态 - 买家取消','1','2022-11-19 21:01:29','1','2022-11-19 21:01:29',_binary '\0'),(1188,62,'商家拒绝','62','trade_after_sale_status',0,'info','','交易售后状态 - 商家拒绝','1','2022-11-19 21:02:17','1','2022-11-19 21:02:17',_binary '\0'),(1189,63,'商家拒收货','63','trade_after_sale_status',0,'info','','交易售后状态 - 商家拒收货','1','2022-11-19 21:02:37','1','2022-11-19 21:03:07',_binary '\0'),(1190,10,'售中退款','10','trade_after_sale_type',0,'success','','交易售后的类型 - 售中退款','1','2022-11-19 21:05:05','1','2022-11-19 21:38:23',_binary '\0'),(1191,20,'售后退款','20','trade_after_sale_type',0,'primary','','交易售后的类型 - 售后退款','1','2022-11-19 21:05:32','1','2022-11-19 21:38:32',_binary '\0'),(1192,10,'仅退款','10','trade_after_sale_way',0,'primary','','交易售后的方式 - 仅退款','1','2022-11-19 21:39:19','1','2022-11-19 21:39:19',_binary '\0'),(1193,20,'退货退款','20','trade_after_sale_way',0,'success','','交易售后的方式 - 退货退款','1','2022-11-19 21:39:38','1','2022-11-19 21:39:49',_binary '\0'),(1194,10,'微信小程序','10','terminal',0,'default','','终端 - 微信小程序','1','2022-12-10 10:51:11','1','2022-12-10 10:51:57',_binary '\0'),(1195,20,'H5 网页','20','terminal',0,'default','','终端 - H5 网页','1','2022-12-10 10:51:30','1','2022-12-10 10:51:59',_binary '\0'),(1196,11,'微信公众号','11','terminal',0,'default','','终端 - 微信公众号','1','2022-12-10 10:54:16','1','2022-12-10 10:52:01',_binary '\0'),(1197,31,'苹果 App','31','terminal',0,'default','','终端 - 苹果 App','1','2022-12-10 10:54:42','1','2022-12-10 10:52:18',_binary '\0'),(1198,32,'安卓 App','32','terminal',0,'default','','终端 - 安卓 App','1','2022-12-10 10:55:02','1','2022-12-10 10:59:17',_binary '\0'),(1199,0,'普通订单','0','trade_order_type',0,'default','','交易订单的类型 - 普通订单','1','2022-12-10 16:34:14','1','2022-12-10 16:34:14',_binary '\0'),(1200,1,'秒杀订单','1','trade_order_type',0,'default','','交易订单的类型 - 秒杀订单','1','2022-12-10 16:34:26','1','2022-12-10 16:34:26',_binary '\0'),(1201,2,'砍价订单','2','trade_order_type',0,'default','','交易订单的类型 - 拼团订单','1','2022-12-10 16:34:36','1','2024-09-07 14:18:39',_binary '\0'),(1202,3,'拼团订单','3','trade_order_type',0,'default','','交易订单的类型 - 砍价订单','1','2022-12-10 16:34:48','1','2024-09-07 14:18:32',_binary '\0'),(1203,0,'待支付','0','trade_order_status',0,'default','','交易订单状态 - 待支付','1','2022-12-10 16:49:29','1','2022-12-10 16:49:29',_binary '\0'),(1204,10,'待发货','10','trade_order_status',0,'primary','','交易订单状态 - 待发货','1','2022-12-10 16:49:53','1','2022-12-10 16:51:17',_binary '\0'),(1205,20,'已发货','20','trade_order_status',0,'primary','','交易订单状态 - 已发货','1','2022-12-10 16:50:13','1','2022-12-10 16:51:31',_binary '\0'),(1206,30,'已完成','30','trade_order_status',0,'success','','交易订单状态 - 已完成','1','2022-12-10 16:50:30','1','2022-12-10 16:51:06',_binary '\0'),(1207,40,'已取消','40','trade_order_status',0,'danger','','交易订单状态 - 已取消','1','2022-12-10 16:50:50','1','2022-12-10 16:51:00',_binary '\0'),(1208,0,'未售后','0','trade_order_item_after_sale_status',0,'info','','交易订单项的售后状态 - 未售后','1','2022-12-10 20:58:42','1','2022-12-10 20:59:29',_binary '\0'),(1209,10,'售后中','10','trade_order_item_after_sale_status',0,'primary','','交易订单项的售后状态 - 售后中','1','2022-12-10 20:59:21','1','2024-07-21 17:01:24',_binary '\0'),(1210,20,'已退款','20','trade_order_item_after_sale_status',0,'success','','交易订单项的售后状态 - 已退款','1','2022-12-10 20:59:46','1','2024-07-21 17:01:35',_binary '\0'),(1211,1,'完全匹配','1','mp_auto_reply_request_match',0,'primary','','公众号自动回复的请求关键字匹配模式 - 完全匹配','1','2023-01-16 23:30:39','1','2023-01-16 23:31:00',_binary '\0'),(1212,2,'半匹配','2','mp_auto_reply_request_match',0,'success','','公众号自动回复的请求关键字匹配模式 - 半匹配','1','2023-01-16 23:30:55','1','2023-01-16 23:31:10',_binary '\0'),(1213,1,'文本','text','mp_message_type',0,'default','','公众号的消息类型 - 文本','1','2023-01-17 22:17:32','1','2023-01-17 22:17:39',_binary '\0'),(1214,2,'图片','image','mp_message_type',0,'default','','公众号的消息类型 - 图片','1','2023-01-17 22:17:32','1','2023-01-17 14:19:47',_binary '\0'),(1215,3,'语音','voice','mp_message_type',0,'default','','公众号的消息类型 - 语音','1','2023-01-17 22:17:32','1','2023-01-17 14:20:08',_binary '\0'),(1216,4,'视频','video','mp_message_type',0,'default','','公众号的消息类型 - 视频','1','2023-01-17 22:17:32','1','2023-01-17 14:21:08',_binary '\0'),(1217,5,'小视频','shortvideo','mp_message_type',0,'default','','公众号的消息类型 - 小视频','1','2023-01-17 22:17:32','1','2023-01-17 14:19:59',_binary '\0'),(1218,6,'图文','news','mp_message_type',0,'default','','公众号的消息类型 - 图文','1','2023-01-17 22:17:32','1','2023-01-17 14:22:54',_binary '\0'),(1219,7,'音乐','music','mp_message_type',0,'default','','公众号的消息类型 - 音乐','1','2023-01-17 22:17:32','1','2023-01-17 14:22:54',_binary '\0'),(1220,8,'地理位置','location','mp_message_type',0,'default','','公众号的消息类型 - 地理位置','1','2023-01-17 22:17:32','1','2023-01-17 14:23:51',_binary '\0'),(1221,9,'链接','link','mp_message_type',0,'default','','公众号的消息类型 - 链接','1','2023-01-17 22:17:32','1','2023-01-17 14:24:49',_binary '\0'),(1222,10,'事件','event','mp_message_type',0,'default','','公众号的消息类型 - 事件','1','2023-01-17 22:17:32','1','2023-01-17 14:24:49',_binary '\0'),(1223,0,'初始化','0','system_mail_send_status',0,'primary','','邮件发送状态 - 初始化\n','1','2023-01-26 09:53:49','1','2023-01-26 16:36:14',_binary '\0'),(1224,10,'发送成功','10','system_mail_send_status',0,'success','','邮件发送状态 - 发送成功','1','2023-01-26 09:54:28','1','2023-01-26 16:36:22',_binary '\0'),(1225,20,'发送失败','20','system_mail_send_status',0,'danger','','邮件发送状态 - 发送失败','1','2023-01-26 09:54:50','1','2023-01-26 16:36:26',_binary '\0'),(1226,30,'不发送','30','system_mail_send_status',0,'info','','邮件发送状态 -  不发送','1','2023-01-26 09:55:06','1','2023-01-26 16:36:36',_binary '\0'),(1227,1,'通知公告','1','system_notify_template_type',0,'primary','','站内信模版的类型 - 通知公告','1','2023-01-28 10:35:59','1','2023-01-28 10:35:59',_binary '\0'),(1228,2,'系统消息','2','system_notify_template_type',0,'success','','站内信模版的类型 - 系统消息','1','2023-01-28 10:36:20','1','2023-01-28 10:36:25',_binary '\0'),(1230,13,'支付宝条码支付','alipay_bar','pay_channel_code',0,'primary','','支付宝条码支付','1','2023-02-18 23:32:24','1','2023-07-19 20:09:23',_binary '\0'),(1231,10,'Vue2 Element UI 标准模版','10','infra_codegen_front_type',0,'','','','1','2023-04-13 00:03:55','1','2023-04-13 00:03:55',_binary '\0'),(1232,20,'Vue3 Element Plus 标准模版','20','infra_codegen_front_type',0,'','','','1','2023-04-13 00:04:08','1','2023-04-13 00:04:08',_binary '\0'),(1234,30,'Vben2.0 Ant Design Schema 模版','30','infra_codegen_front_type',1,'','','','1','2023-04-13 00:04:26','1','2025-07-27 10:55:14',_binary '\0'),(1244,0,'按件','1','trade_delivery_express_charge_mode',0,'','','','1','2023-05-21 22:46:40','1','2023-05-21 22:46:40',_binary '\0'),(1245,1,'按重量','2','trade_delivery_express_charge_mode',0,'','','','1','2023-05-21 22:46:58','1','2023-05-21 22:46:58',_binary '\0'),(1246,2,'按体积','3','trade_delivery_express_charge_mode',0,'','','','1','2023-05-21 22:47:18','1','2023-05-21 22:47:18',_binary '\0'),(1335,11,'订单积分抵扣','11','member_point_biz_type',0,'','','','1','2023-06-10 12:15:27','1','2023-10-11 07:41:43',_binary '\0'),(1336,1,'签到','1','member_point_biz_type',0,'','','','1','2023-06-10 12:15:48','1','2023-08-20 11:59:53',_binary '\0'),(1341,20,'已退款','20','pay_order_status',0,'danger','','已退款','1','2023-07-19 18:05:37','1','2023-07-19 18:05:37',_binary '\0'),(1342,21,'请求成功，但是结果失败','21','pay_notify_status',0,'warning','','请求成功，但是结果失败','1','2023-07-19 18:10:47','1','2023-07-19 18:11:38',_binary '\0'),(1343,22,'请求失败','22','pay_notify_status',0,'warning','',NULL,'1','2023-07-19 18:11:05','1','2023-07-19 18:11:27',_binary '\0'),(1344,4,'微信扫码支付','wx_native','pay_channel_code',0,'success','','微信扫码支付','1','2023-07-19 20:07:47','1','2023-07-19 20:09:03',_binary '\0'),(1345,5,'微信条码支付','wx_bar','pay_channel_code',0,'success','','微信条码支付\n','1','2023-07-19 20:08:06','1','2023-07-19 20:09:08',_binary '\0'),(1346,1,'支付单','1','pay_notify_type',0,'primary','','支付单','1','2023-07-20 12:23:17','1','2023-07-20 12:23:17',_binary '\0'),(1347,2,'退款单','2','pay_notify_type',0,'danger','',NULL,'1','2023-07-20 12:23:26','1','2023-07-20 12:23:26',_binary '\0'),(1348,20,'模拟支付','mock','pay_channel_code',0,'default','','模拟支付','1','2023-07-29 11:10:51','1','2023-07-29 03:14:10',_binary '\0'),(1349,12,'订单积分抵扣（整单取消）','12','member_point_biz_type',0,'','','','1','2023-08-20 12:00:03','1','2023-10-11 07:42:01',_binary '\0'),(1350,0,'管理员调整','0','member_experience_biz_type',0,'','',NULL,'','2023-08-22 12:41:01','','2023-08-22 12:41:01',_binary '\0'),(1351,1,'邀新奖励','1','member_experience_biz_type',0,'','',NULL,'','2023-08-22 12:41:01','','2023-08-22 12:41:01',_binary '\0'),(1352,11,'下单奖励','11','member_experience_biz_type',0,'success','',NULL,'','2023-08-22 12:41:01','1','2023-10-11 07:45:09',_binary '\0'),(1353,12,'下单奖励（整单取消）','12','member_experience_biz_type',0,'warning','',NULL,'','2023-08-22 12:41:01','1','2023-10-11 07:45:01',_binary '\0'),(1354,4,'签到奖励','4','member_experience_biz_type',0,'','',NULL,'','2023-08-22 12:41:01','','2023-08-22 12:41:01',_binary '\0'),(1355,5,'抽奖奖励','5','member_experience_biz_type',0,'','',NULL,'','2023-08-22 12:41:01','','2023-08-22 12:41:01',_binary '\0'),(1356,1,'快递发货','1','trade_delivery_type',0,'','','','1','2023-08-23 00:04:55','1','2023-08-23 00:04:55',_binary '\0'),(1357,2,'用户自提','2','trade_delivery_type',0,'','','','1','2023-08-23 00:05:05','1','2023-08-23 00:05:05',_binary '\0'),(1358,3,'品类劵','3','promotion_product_scope',0,'default','','','1','2023-09-01 23:43:07','1','2023-09-28 00:27:47',_binary '\0'),(1359,1,'人人分销','1','brokerage_enabled_condition',0,'','','所有用户都可以分销','','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1360,2,'指定分销','2','brokerage_enabled_condition',0,'','','仅可后台手动设置推广员','','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1361,1,'首次绑定','1','brokerage_bind_mode',0,'','','只要用户没有推广人，随时都可以绑定推广关系','','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1362,2,'注册绑定','2','brokerage_bind_mode',0,'','','仅新用户注册时才能绑定推广关系','','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1363,3,'覆盖绑定','3','brokerage_bind_mode',0,'','','如果用户已经有推广人，推广人会被变更','','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1364,1,'钱包','1','brokerage_withdraw_type',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1365,2,'银行卡','2','brokerage_withdraw_type',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1366,3,'微信收款码','3','brokerage_withdraw_type',0,'','','手动打款','','2023-09-28 02:46:05','1','2025-05-10 08:24:25',_binary '\0'),(1367,4,'支付宝收款码','4','brokerage_withdraw_type',0,'','','手动打款','','2023-09-28 02:46:05','1','2025-05-10 08:24:37',_binary '\0'),(1368,1,'订单返佣','1','brokerage_record_biz_type',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1369,2,'申请提现','2','brokerage_record_biz_type',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1370,3,'申请提现驳回','3','brokerage_record_biz_type',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1371,0,'待结算','0','brokerage_record_status',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1372,1,'已结算','1','brokerage_record_status',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1373,2,'已取消','2','brokerage_record_status',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1374,0,'审核中','0','brokerage_withdraw_status',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1375,10,'审核通过','10','brokerage_withdraw_status',0,'success','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1376,11,'提现成功','11','brokerage_withdraw_status',0,'success','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1377,20,'审核不通过','20','brokerage_withdraw_status',0,'danger','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1378,21,'提现失败','21','brokerage_withdraw_status',0,'danger','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1379,0,'工商银行','0','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1380,1,'建设银行','1','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1381,2,'农业银行','2','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1382,3,'中国银行','3','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1383,4,'交通银行','4','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1384,5,'招商银行','5','brokerage_bank_name',0,'','',NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0'),(1385,21,'钱包','wallet','pay_channel_code',0,'primary','','','1','2023-10-01 21:46:19','1','2023-10-01 21:48:01',_binary '\0'),(1386,1,'砍价中','1','promotion_bargain_record_status',0,'default','','','1','2023-10-05 10:41:26','1','2023-10-05 10:41:26',_binary '\0'),(1387,2,'砍价成功','2','promotion_bargain_record_status',0,'success','','','1','2023-10-05 10:41:39','1','2023-10-05 10:41:39',_binary '\0'),(1388,3,'砍价失败','3','promotion_bargain_record_status',0,'warning','','','1','2023-10-05 10:41:57','1','2023-10-05 10:41:57',_binary '\0'),(1389,0,'拼团中','0','promotion_combination_record_status',0,'','','','1','2023-10-08 07:24:44','1','2024-10-13 10:08:17',_binary '\0'),(1390,1,'拼团成功','1','promotion_combination_record_status',0,'success','','','1','2023-10-08 07:24:56','1','2024-10-13 10:08:20',_binary '\0'),(1391,2,'拼团失败','2','promotion_combination_record_status',0,'warning','','','1','2023-10-08 07:25:11','1','2024-10-13 10:08:24',_binary '\0'),(1392,2,'管理员修改','2','member_point_biz_type',0,'default','','','1','2023-10-11 07:41:34','1','2023-10-11 07:41:34',_binary '\0'),(1393,13,'订单积分抵扣（单个退款）','13','member_point_biz_type',0,'','','','1','2023-10-11 07:42:29','1','2023-10-11 07:42:29',_binary '\0'),(1394,21,'订单积分奖励','21','member_point_biz_type',0,'default','','','1','2023-10-11 07:42:44','1','2023-10-11 07:42:44',_binary '\0'),(1395,22,'订单积分奖励（整单取消）','22','member_point_biz_type',0,'default','','','1','2023-10-11 07:42:55','1','2023-10-11 07:43:01',_binary '\0'),(1396,23,'订单积分奖励（单个退款）','23','member_point_biz_type',0,'default','','','1','2023-10-11 07:43:16','1','2023-10-11 07:43:16',_binary '\0'),(1397,13,'下单奖励（单个退款）','13','member_experience_biz_type',0,'warning','','','1','2023-10-11 07:45:24','1','2023-10-11 07:45:38',_binary '\0'),(1398,5,'网上转账','5','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:55:24','1','2023-10-18 21:55:24',_binary '\0'),(1399,6,'支付宝','6','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:55:38','1','2023-10-18 21:55:38',_binary '\0'),(1400,7,'微信支付','7','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:55:53','1','2023-10-18 21:55:53',_binary '\0'),(1401,8,'其他','8','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:56:06','1','2023-10-18 21:56:06',_binary '\0'),(1402,1,'IT','1','crm_customer_industry',0,'default','','','1','2023-10-28 23:02:15','1','2024-02-18 23:30:38',_binary '\0'),(1403,2,'金融业','2','crm_customer_industry',0,'default','','','1','2023-10-28 23:02:29','1','2024-02-18 23:30:43',_binary '\0'),(1404,3,'房地产','3','crm_customer_industry',0,'default','','','1','2023-10-28 23:02:41','1','2024-02-18 23:30:48',_binary '\0'),(1405,4,'商业服务','4','crm_customer_industry',0,'default','','','1','2023-10-28 23:02:54','1','2024-02-18 23:30:54',_binary '\0'),(1406,5,'运输/物流','5','crm_customer_industry',0,'default','','','1','2023-10-28 23:03:03','1','2024-02-18 23:31:00',_binary '\0'),(1407,6,'生产','6','crm_customer_industry',0,'default','','','1','2023-10-28 23:03:13','1','2024-02-18 23:31:08',_binary '\0'),(1408,7,'政府','7','crm_customer_industry',0,'default','','','1','2023-10-28 23:03:27','1','2024-02-18 23:31:13',_binary '\0'),(1409,8,'文化传媒','8','crm_customer_industry',0,'default','','','1','2023-10-28 23:03:37','1','2024-02-18 23:31:20',_binary '\0'),(1422,1,'A （重点客户）','1','crm_customer_level',0,'primary','','','1','2023-10-28 23:07:13','1','2023-10-28 23:07:13',_binary '\0'),(1423,2,'B （普通客户）','2','crm_customer_level',0,'info','','','1','2023-10-28 23:07:35','1','2023-10-28 23:07:35',_binary '\0'),(1424,3,'C （非优先客户）','3','crm_customer_level',0,'default','','','1','2023-10-28 23:07:53','1','2023-10-28 23:07:53',_binary '\0'),(1425,1,'促销','1','crm_customer_source',0,'default','','','1','2023-10-28 23:08:29','1','2023-10-28 23:08:29',_binary '\0'),(1426,2,'搜索引擎','2','crm_customer_source',0,'default','','','1','2023-10-28 23:08:39','1','2023-10-28 23:08:39',_binary '\0'),(1427,3,'广告','3','crm_customer_source',0,'default','','','1','2023-10-28 23:08:47','1','2023-10-28 23:08:47',_binary '\0'),(1428,4,'转介绍','4','crm_customer_source',0,'default','','','1','2023-10-28 23:08:58','1','2023-10-28 23:08:58',_binary '\0'),(1429,5,'线上注册','5','crm_customer_source',0,'default','','','1','2023-10-28 23:09:12','1','2023-10-28 23:09:12',_binary '\0'),(1430,6,'线上咨询','6','crm_customer_source',0,'default','','','1','2023-10-28 23:09:22','1','2023-10-28 23:09:22',_binary '\0'),(1431,7,'预约上门','7','crm_customer_source',0,'default','','','1','2023-10-28 23:09:39','1','2023-10-28 23:09:39',_binary '\0'),(1432,8,'陌拜','8','crm_customer_source',0,'default','','','1','2023-10-28 23:10:04','1','2023-10-28 23:10:04',_binary '\0'),(1433,9,'电话咨询','9','crm_customer_source',0,'default','','','1','2023-10-28 23:10:18','1','2023-10-28 23:10:18',_binary '\0'),(1434,10,'邮件咨询','10','crm_customer_source',0,'default','','','1','2023-10-28 23:10:33','1','2023-10-28 23:10:33',_binary '\0'),(1435,10,'Gitee','10','system_social_type',0,'','','','1','2023-11-04 13:04:42','1','2023-11-04 13:04:42',_binary '\0'),(1436,20,'钉钉','20','system_social_type',0,'','','','1','2023-11-04 13:04:54','1','2023-11-04 13:04:54',_binary '\0'),(1437,30,'企业微信','30','system_social_type',0,'','','','1','2023-11-04 13:05:09','1','2023-11-04 13:05:09',_binary '\0'),(1438,31,'微信公众平台','31','system_social_type',0,'','','','1','2023-11-04 13:05:18','1','2023-11-04 13:05:18',_binary '\0'),(1439,32,'微信开放平台','32','system_social_type',0,'','','','1','2023-11-04 13:05:30','1','2023-11-04 13:05:30',_binary '\0'),(1440,34,'微信小程序','34','system_social_type',0,'','','','1','2023-11-04 13:05:38','1','2023-11-04 13:07:16',_binary '\0'),(1441,1,'上架','1','crm_product_status',0,'success','','','1','2023-10-30 21:49:34','1','2023-10-30 21:49:34',_binary '\0'),(1442,0,'下架','0','crm_product_status',0,'success','','','1','2023-10-30 21:49:13','1','2023-10-30 21:49:13',_binary '\0'),(1443,15,'子表','15','infra_codegen_template_type',0,'default','','','1','2023-11-13 23:06:16','1','2023-11-13 23:06:16',_binary '\0'),(1444,10,'主表（标准模式）','10','infra_codegen_template_type',0,'default','','','1','2023-11-14 12:32:49','1','2023-11-14 12:32:49',_binary '\0'),(1445,11,'主表（ERP 模式）','11','infra_codegen_template_type',0,'default','','','1','2023-11-14 12:33:05','1','2023-11-14 12:33:05',_binary '\0'),(1446,12,'主表（内嵌模式）','12','infra_codegen_template_type',0,'','','','1','2023-11-14 12:33:31','1','2023-11-14 12:33:31',_binary '\0'),(1447,1,'负责人','1','crm_permission_level',0,'default','','','1','2023-11-30 09:53:12','1','2023-11-30 09:53:12',_binary '\0'),(1448,2,'只读','2','crm_permission_level',0,'','','','1','2023-11-30 09:53:29','1','2023-11-30 09:53:29',_binary '\0'),(1449,3,'读写','3','crm_permission_level',0,'','','','1','2023-11-30 09:53:36','1','2023-11-30 09:53:36',_binary '\0'),(1450,0,'未提交','0','crm_audit_status',0,'','','','1','2023-11-30 18:56:59','1','2023-11-30 18:56:59',_binary '\0'),(1451,10,'审批中','10','crm_audit_status',0,'','','','1','2023-11-30 18:57:10','1','2023-11-30 18:57:10',_binary '\0'),(1452,20,'审核通过','20','crm_audit_status',0,'','','','1','2023-11-30 18:57:24','1','2023-11-30 18:57:24',_binary '\0'),(1453,30,'审核不通过','30','crm_audit_status',0,'','','','1','2023-11-30 18:57:32','1','2023-11-30 18:57:32',_binary '\0'),(1454,40,'已取消','40','crm_audit_status',0,'','','','1','2023-11-30 18:57:42','1','2023-11-30 18:57:42',_binary '\0'),(1456,1,'支票','1','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:54:29','1','2023-10-18 21:54:29',_binary '\0'),(1457,2,'现金','2','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:54:41','1','2023-10-18 21:54:41',_binary '\0'),(1458,3,'邮政汇款','3','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:54:53','1','2023-10-18 21:54:53',_binary '\0'),(1459,4,'电汇','4','crm_receivable_return_type',0,'default','','','1','2023-10-18 21:55:07','1','2023-10-18 21:55:07',_binary '\0'),(1461,1,'个','1','crm_product_unit',0,'','','','1','2023-12-05 23:02:26','1','2023-12-05 23:02:26',_binary '\0'),(1462,2,'块','2','crm_product_unit',0,'','','','1','2023-12-05 23:02:34','1','2023-12-05 23:02:34',_binary '\0'),(1463,3,'只','3','crm_product_unit',0,'','','','1','2023-12-05 23:02:57','1','2023-12-05 23:02:57',_binary '\0'),(1464,4,'把','4','crm_product_unit',0,'','','','1','2023-12-05 23:03:05','1','2023-12-05 23:03:05',_binary '\0'),(1465,5,'枚','5','crm_product_unit',0,'','','','1','2023-12-05 23:03:14','1','2023-12-05 23:03:14',_binary '\0'),(1466,6,'瓶','6','crm_product_unit',0,'','','','1','2023-12-05 23:03:20','1','2023-12-05 23:03:20',_binary '\0'),(1467,7,'盒','7','crm_product_unit',0,'','','','1','2023-12-05 23:03:30','1','2023-12-05 23:03:30',_binary '\0'),(1468,8,'台','8','crm_product_unit',0,'','','','1','2023-12-05 23:03:41','1','2023-12-05 23:03:41',_binary '\0'),(1469,9,'吨','9','crm_product_unit',0,'','','','1','2023-12-05 23:03:48','1','2023-12-05 23:03:48',_binary '\0'),(1470,10,'千克','10','crm_product_unit',0,'','','','1','2023-12-05 23:04:03','1','2023-12-05 23:04:03',_binary '\0'),(1471,11,'米','11','crm_product_unit',0,'','','','1','2023-12-05 23:04:12','1','2023-12-05 23:04:12',_binary '\0'),(1472,12,'箱','12','crm_product_unit',0,'','','','1','2023-12-05 23:04:25','1','2023-12-05 23:04:25',_binary '\0'),(1473,13,'套','13','crm_product_unit',0,'','','','1','2023-12-05 23:04:34','1','2023-12-05 23:04:34',_binary '\0'),(1474,1,'打电话','1','crm_follow_up_type',0,'','','','1','2024-01-15 20:48:20','1','2024-01-15 20:48:20',_binary '\0'),(1475,2,'发短信','2','crm_follow_up_type',0,'','','','1','2024-01-15 20:48:31','1','2024-01-15 20:48:31',_binary '\0'),(1476,3,'上门拜访','3','crm_follow_up_type',0,'','','','1','2024-01-15 20:49:07','1','2024-01-15 20:49:07',_binary '\0'),(1477,4,'微信沟通','4','crm_follow_up_type',0,'','','','1','2024-01-15 20:49:15','1','2024-01-15 20:49:15',_binary '\0'),(1482,4,'转账失败','20','pay_transfer_status',0,'warning','','','1','2023-10-28 16:24:16','1','2025-05-08 12:59:01',_binary '\0'),(1483,3,'转账成功','10','pay_transfer_status',0,'success','','','1','2023-10-28 16:23:50','1','2025-05-08 12:58:58',_binary '\0'),(1484,2,'转账进行中','5','pay_transfer_status',0,'info','','','1','2023-10-28 16:23:12','1','2025-05-08 12:58:54',_binary '\0'),(1485,1,'等待转账','0','pay_transfer_status',0,'default','','','1','2023-10-28 16:21:43','1','2023-10-28 16:23:22',_binary '\0'),(1486,10,'其它入库','10','erp_stock_record_biz_type',0,'','','','1','2024-02-05 18:07:25','1','2024-02-05 18:07:43',_binary '\0'),(1487,11,'其它入库（作废）','11','erp_stock_record_biz_type',0,'danger','','','1','2024-02-05 18:08:07','1','2024-02-05 19:20:16',_binary '\0'),(1488,20,'其它出库','20','erp_stock_record_biz_type',0,'','','','1','2024-02-05 18:08:51','1','2024-02-05 18:08:51',_binary '\0'),(1489,21,'其它出库（作废）','21','erp_stock_record_biz_type',0,'danger','','','1','2024-02-05 18:09:00','1','2024-02-05 19:20:10',_binary '\0'),(1490,10,'未审核','10','erp_audit_status',0,'default','','','1','2024-02-06 00:00:21','1','2024-02-06 00:00:21',_binary '\0'),(1491,20,'已审核','20','erp_audit_status',0,'success','','','1','2024-02-06 00:00:35','1','2024-02-06 00:00:35',_binary '\0'),(1492,30,'调拨入库','30','erp_stock_record_biz_type',0,'','','','1','2024-02-07 20:34:19','1','2024-02-07 12:36:31',_binary '\0'),(1493,31,'调拨入库（作废）','31','erp_stock_record_biz_type',0,'danger','','','1','2024-02-07 20:34:29','1','2024-02-07 20:37:11',_binary '\0'),(1494,32,'调拨出库','32','erp_stock_record_biz_type',0,'','','','1','2024-02-07 20:34:38','1','2024-02-07 12:36:33',_binary '\0'),(1495,33,'调拨出库（作废）','33','erp_stock_record_biz_type',0,'danger','','','1','2024-02-07 20:34:49','1','2024-02-07 20:37:06',_binary '\0'),(1496,40,'盘盈入库','40','erp_stock_record_biz_type',0,'','','','1','2024-02-08 08:53:00','1','2024-02-08 08:53:09',_binary '\0'),(1497,41,'盘盈入库（作废）','41','erp_stock_record_biz_type',0,'danger','','','1','2024-02-08 08:53:39','1','2024-02-16 19:40:54',_binary '\0'),(1498,42,'盘亏出库','42','erp_stock_record_biz_type',0,'','','','1','2024-02-08 08:54:16','1','2024-02-08 08:54:16',_binary '\0'),(1499,43,'盘亏出库（作废）','43','erp_stock_record_biz_type',0,'danger','','','1','2024-02-08 08:54:31','1','2024-02-16 19:40:46',_binary '\0'),(1500,50,'销售出库','50','erp_stock_record_biz_type',0,'','','','1','2024-02-11 21:47:25','1','2024-02-11 21:50:40',_binary '\0'),(1501,51,'销售出库（作废）','51','erp_stock_record_biz_type',0,'danger','','','1','2024-02-11 21:47:37','1','2024-02-11 21:51:12',_binary '\0'),(1502,60,'销售退货入库','60','erp_stock_record_biz_type',0,'','','','1','2024-02-12 06:51:05','1','2024-02-12 06:51:05',_binary '\0'),(1503,61,'销售退货入库（作废）','61','erp_stock_record_biz_type',0,'danger','','','1','2024-02-12 06:51:18','1','2024-02-12 06:51:18',_binary '\0'),(1504,70,'采购入库','70','erp_stock_record_biz_type',0,'','','','1','2024-02-16 13:10:02','1','2024-02-16 13:10:02',_binary '\0'),(1505,71,'采购入库（作废）','71','erp_stock_record_biz_type',0,'danger','','','1','2024-02-16 13:10:10','1','2024-02-16 19:40:40',_binary '\0'),(1506,80,'采购退货出库','80','erp_stock_record_biz_type',0,'','','','1','2024-02-16 13:10:17','1','2024-02-16 13:10:17',_binary '\0'),(1507,81,'采购退货出库（作废）','81','erp_stock_record_biz_type',0,'danger','','','1','2024-02-16 13:10:26','1','2024-02-16 19:40:33',_binary '\0'),(1509,3,'审批不通过','3','bpm_process_instance_status',0,'danger','','','1','2024-03-16 16:12:06','1','2024-03-16 16:12:06',_binary '\0'),(1510,4,'已取消','4','bpm_process_instance_status',0,'warning','','','1','2024-03-16 16:12:22','1','2024-03-16 16:12:22',_binary '\0'),(1511,5,'已退回','5','bpm_task_status',0,'warning','','','1','2024-03-16 19:10:46','1','2024-03-08 22:41:40',_binary '\0'),(1512,6,'委派中','6','bpm_task_status',0,'primary','','','1','2024-03-17 10:06:22','1','2024-03-08 22:41:40',_binary '\0'),(1513,7,'审批通过中','7','bpm_task_status',0,'success','','','1','2024-03-17 10:06:47','1','2024-03-08 22:41:41',_binary '\0'),(1514,0,'待审批','0','bpm_task_status',0,'info','','','1','2024-03-17 10:07:11','1','2024-03-08 22:41:42',_binary '\0'),(1515,35,'发起人自选','35','bpm_task_candidate_strategy',0,'','','','1','2024-03-22 19:45:16','1','2024-03-22 19:45:16',_binary '\0'),(1516,1,'执行监听器','execution','bpm_process_listener_type',0,'primary','','','1','2024-03-23 12:54:03','1','2024-03-23 19:14:19',_binary '\0'),(1517,1,'任务监听器','task','bpm_process_listener_type',0,'success','','','1','2024-03-23 12:54:13','1','2024-03-23 19:14:24',_binary '\0'),(1526,1,'Java 类','class','bpm_process_listener_value_type',0,'primary','','','1','2024-03-23 15:08:45','1','2024-03-23 19:14:32',_binary '\0'),(1527,2,'表达式','expression','bpm_process_listener_value_type',0,'success','','','1','2024-03-23 15:09:06','1','2024-03-23 19:14:38',_binary '\0'),(1528,3,'代理表达式','delegateExpression','bpm_process_listener_value_type',0,'info','','','1','2024-03-23 15:11:23','1','2024-03-23 19:14:41',_binary '\0'),(1529,1,'天','1','date_interval',0,'','','','1','2024-03-29 22:50:26','1','2024-03-29 22:50:26',_binary '\0'),(1530,2,'周','2','date_interval',0,'','','','1','2024-03-29 22:50:36','1','2024-03-29 22:50:36',_binary '\0'),(1531,3,'月','3','date_interval',0,'','','','1','2024-03-29 22:50:46','1','2024-03-29 22:50:54',_binary '\0'),(1532,4,'季度','4','date_interval',0,'','','','1','2024-03-29 22:51:01','1','2024-03-29 22:51:01',_binary '\0'),(1533,5,'年','5','date_interval',0,'','','','1','2024-03-29 22:51:07','1','2024-03-29 22:51:07',_binary '\0'),(1534,1,'赢单','1','crm_business_end_status_type',0,'success','','','1','2024-04-13 23:26:57','1','2024-04-13 23:26:57',_binary '\0'),(1535,2,'输单','2','crm_business_end_status_type',0,'primary','','','1','2024-04-13 23:27:31','1','2024-04-13 23:27:31',_binary '\0'),(1536,3,'无效','3','crm_business_end_status_type',0,'info','','','1','2024-04-13 23:27:59','1','2024-04-13 23:27:59',_binary '\0'),(1537,1,'OpenAI','OpenAI','ai_platform',0,'','','','1','2024-05-09 22:33:47','1','2024-05-09 22:58:46',_binary '\0'),(1538,2,'Ollama','Ollama','ai_platform',0,'','','','1','2024-05-17 23:02:55','1','2024-05-17 23:02:55',_binary '\0'),(1539,3,'文心一言','YiYan','ai_platform',0,'','','','1','2024-05-18 09:24:20','1','2024-05-18 09:29:01',_binary '\0'),(1540,4,'讯飞星火','XingHuo','ai_platform',0,'','','','1','2024-05-18 10:08:56','1','2024-05-18 10:08:56',_binary '\0'),(1541,5,'通义千问','TongYi','ai_platform',0,'','','','1','2024-05-18 10:32:29','1','2024-07-06 15:42:29',_binary '\0'),(1542,6,'StableDiffusion','StableDiffusion','ai_platform',0,'','','','1','2024-06-01 15:09:31','1','2024-06-01 15:10:25',_binary '\0'),(1543,10,'进行中','10','ai_image_status',0,'primary','','','1','2024-06-26 20:51:41','1','2024-06-26 20:52:48',_binary '\0'),(1544,20,'已完成','20','ai_image_status',0,'success','','','1','2024-06-26 20:52:07','1','2024-06-26 20:52:41',_binary '\0'),(1545,30,'已失败','30','ai_image_status',0,'warning','','','1','2024-06-26 20:52:25','1','2024-06-26 20:52:35',_binary '\0'),(1546,7,'Midjourney','Midjourney','ai_platform',0,'','','','1','2024-06-26 22:14:46','1','2024-06-26 22:14:46',_binary '\0'),(1547,10,'进行中','10','ai_music_status',0,'primary','','','1','2024-06-27 22:45:22','1','2024-06-28 00:56:17',_binary '\0'),(1548,20,'已完成','20','ai_music_status',0,'success','','','1','2024-06-27 22:45:33','1','2024-06-28 00:56:18',_binary '\0'),(1549,30,'已失败','30','ai_music_status',0,'danger','','','1','2024-06-27 22:45:44','1','2024-06-28 00:56:19',_binary '\0'),(1550,1,'歌词模式','1','ai_generate_mode',0,'','','','1','2024-06-27 22:46:31','1','2024-06-28 01:22:25',_binary '\0'),(1551,2,'描述模式','2','ai_generate_mode',0,'','','','1','2024-06-27 22:46:37','1','2024-06-28 01:22:24',_binary '\0'),(1552,8,'Suno','Suno','ai_platform',0,'','','','1','2024-06-29 09:13:36','1','2024-06-29 09:13:41',_binary '\0'),(1553,9,'DeepSeek','DeepSeek','ai_platform',0,'','','','1','2024-07-06 12:04:30','1','2024-07-06 12:05:20',_binary '\0'),(1554,13,'智谱','ZhiPu','ai_platform',0,'','','','1','2024-07-06 18:00:35','1','2025-02-24 20:18:41',_binary '\0'),(1555,4,'长','4','ai_write_length',0,'','','','1','2024-07-07 15:49:03','1','2024-07-07 15:49:03',_binary '\0'),(1556,5,'段落','5','ai_write_format',0,'','','','1','2024-07-07 15:49:54','1','2024-07-07 15:49:54',_binary '\0'),(1557,6,'文章','6','ai_write_format',0,'','','','1','2024-07-07 15:50:05','1','2024-07-07 15:50:05',_binary '\0'),(1558,7,'博客文章','7','ai_write_format',0,'','','','1','2024-07-07 15:50:23','1','2024-07-07 15:50:23',_binary '\0'),(1559,8,'想法','8','ai_write_format',0,'','','','1','2024-07-07 15:50:31','1','2024-07-07 15:50:31',_binary '\0'),(1560,9,'大纲','9','ai_write_format',0,'','','','1','2024-07-07 15:50:37','1','2024-07-07 15:50:37',_binary '\0'),(1561,1,'自动','1','ai_write_tone',0,'','','','1','2024-07-07 15:51:06','1','2024-07-07 15:51:06',_binary '\0'),(1562,2,'友善','2','ai_write_tone',0,'','','','1','2024-07-07 15:51:19','1','2024-07-07 15:51:19',_binary '\0'),(1563,3,'随意','3','ai_write_tone',0,'','','','1','2024-07-07 15:51:27','1','2024-07-07 15:51:27',_binary '\0'),(1564,4,'友好','4','ai_write_tone',0,'','','','1','2024-07-07 15:51:37','1','2024-07-07 15:51:37',_binary '\0'),(1565,5,'专业','5','ai_write_tone',0,'','','','1','2024-07-07 15:51:49','1','2024-07-07 15:52:02',_binary '\0'),(1566,6,'诙谐','6','ai_write_tone',0,'','','','1','2024-07-07 15:52:15','1','2024-07-07 15:52:15',_binary '\0'),(1567,7,'有趣','7','ai_write_tone',0,'','','','1','2024-07-07 15:52:24','1','2024-07-07 15:52:24',_binary '\0'),(1568,8,'正式','8','ai_write_tone',0,'','','','1','2024-07-07 15:54:33','1','2024-07-07 15:54:33',_binary '\0'),(1569,5,'段落','5','ai_write_format',0,'','','','1','2024-07-07 15:49:54','1','2024-07-07 15:49:54',_binary '\0'),(1570,1,'自动','1','ai_write_format',0,'','','','1','2024-07-07 15:19:34','1','2024-07-07 15:19:34',_binary '\0'),(1571,2,'电子邮件','2','ai_write_format',0,'','','','1','2024-07-07 15:19:50','1','2024-07-07 15:49:30',_binary '\0'),(1572,3,'消息','3','ai_write_format',0,'','','','1','2024-07-07 15:20:01','1','2024-07-07 15:49:38',_binary '\0'),(1573,4,'评论','4','ai_write_format',0,'','','','1','2024-07-07 15:20:13','1','2024-07-07 15:49:45',_binary '\0'),(1574,1,'自动','1','ai_write_language',0,'','','','1','2024-07-07 15:44:18','1','2024-07-07 15:44:18',_binary '\0'),(1575,2,'中文','2','ai_write_language',0,'','','','1','2024-07-07 15:44:28','1','2024-07-07 15:44:28',_binary '\0'),(1576,3,'英文','3','ai_write_language',0,'','','','1','2024-07-07 15:44:37','1','2024-07-07 15:44:37',_binary '\0'),(1577,4,'韩语','4','ai_write_language',0,'','','','1','2024-07-07 15:46:28','1','2024-07-07 15:46:28',_binary '\0'),(1578,5,'日语','5','ai_write_language',0,'','','','1','2024-07-07 15:46:44','1','2024-07-07 15:46:44',_binary '\0'),(1579,1,'自动','1','ai_write_length',0,'','','','1','2024-07-07 15:48:34','1','2024-07-07 15:48:34',_binary '\0'),(1580,2,'短','2','ai_write_length',0,'','','','1','2024-07-07 15:48:44','1','2024-07-07 15:48:44',_binary '\0'),(1581,3,'中等','3','ai_write_length',0,'','','','1','2024-07-07 15:48:52','1','2024-07-07 15:48:52',_binary '\0'),(1582,4,'长','4','ai_write_length',0,'','','','1','2024-07-07 15:49:03','1','2024-07-07 15:49:03',_binary '\0'),(1584,1,'撰写','1','ai_write_type',0,'','','','1','2024-07-10 21:26:00','1','2024-07-10 21:26:00',_binary '\0'),(1585,2,'回复','2','ai_write_type',0,'','','','1','2024-07-10 21:26:06','1','2024-07-10 21:26:06',_binary '\0'),(1586,2,'腾讯云','TENCENT','system_sms_channel_code',0,'','','','1','2024-07-22 22:23:16','1','2024-07-22 22:23:16',_binary '\0'),(1587,3,'华为云','HUAWEI','system_sms_channel_code',0,'','','','1','2024-07-22 22:23:46','1','2024-07-22 22:23:53',_binary '\0'),(1588,1,'OpenAI 微软','AzureOpenAI','ai_platform',0,'','','','1','2024-08-10 14:07:41','1','2024-08-10 14:07:41',_binary '\0'),(1589,10,'BPMN 设计器','10','bpm_model_type',0,'primary','','','1','2024-08-26 15:22:17','1','2024-08-26 16:46:02',_binary '\0'),(1590,20,'SIMPLE 设计器','20','bpm_model_type',0,'success','','','1','2024-08-26 15:22:27','1','2024-08-26 16:45:58',_binary '\0'),(1591,4,'七牛云','QINIU','system_sms_channel_code',0,'','','','1','2024-08-31 08:45:03','1','2024-08-31 08:45:24',_binary '\0'),(1592,3,'新人券','3','promotion_coupon_take_type',0,'info','','新人注册后，自动发放','1','2024-09-03 11:57:16','1','2024-09-03 11:57:28',_binary '\0'),(1593,5,'微信零钱','5','brokerage_withdraw_type',0,'','','API 打款','1','2024-10-13 11:06:48','1','2025-05-10 08:24:55',_binary '\0'),(1683,10,'字节豆包','DouBao','ai_platform',0,'','','','1','2025-02-23 19:51:40','1','2025-02-23 19:52:02',_binary '\0'),(1684,11,'腾讯混元','HunYuan','ai_platform',0,'','','','1','2025-02-23 20:58:04','1','2025-02-23 20:58:04',_binary '\0'),(1685,12,'硅基流动','SiliconFlow','ai_platform',0,'','','','1','2025-02-24 20:19:09','1','2025-02-24 20:19:09',_binary '\0'),(1686,1,'聊天','1','ai_model_type',0,'','','','1','2025-03-03 12:26:34','1','2025-03-03 12:26:34',_binary '\0'),(1687,2,'图像','2','ai_model_type',0,'','','','1','2025-03-03 12:27:23','1','2025-03-03 12:27:23',_binary '\0'),(1688,3,'音频','3','ai_model_type',0,'','','','1','2025-03-03 12:27:51','1','2025-03-03 12:27:51',_binary '\0'),(1689,4,'视频','4','ai_model_type',0,'','','','1','2025-03-03 12:28:03','1','2025-03-03 12:28:03',_binary '\0'),(1690,5,'向量','5','ai_model_type',0,'','','','1','2025-03-03 12:28:15','1','2025-03-03 12:28:15',_binary '\0'),(1691,6,'重排','6','ai_model_type',0,'','','','1','2025-03-03 12:28:26','1','2025-03-03 12:28:26',_binary '\0'),(1692,14,'MiniMax','MiniMax','ai_platform',0,'','','','1','2025-03-11 20:04:51','1','2025-03-11 20:04:51',_binary '\0'),(1693,15,'月之暗面','Moonshot','ai_platform',0,'','','','1','2025-03-11 20:05:08','1','2025-11-24 07:17:39',_binary '\0'),(2002,0,'直连设备','0','iot_product_device_type',0,'default','','','1','2024-08-10 11:54:58','1','2025-03-17 09:28:22',_binary '\0'),(2003,2,'网关设备','2','iot_product_device_type',0,'default','','','1','2024-08-10 11:55:08','1','2025-03-17 09:28:28',_binary '\0'),(2004,1,'网关子设备','1','iot_product_device_type',0,'default','','','1','2024-08-10 11:55:20','1','2025-03-17 09:28:31',_binary '\0'),(2005,1,'已发布','1','iot_product_status',0,'success','','','1','2024-08-10 12:10:33','1','2025-03-17 09:28:34',_binary '\0'),(2006,0,'开发中','0','iot_product_status',0,'default','','','1','2024-08-10 14:19:18','1','2025-03-17 09:28:39',_binary '\0'),(2009,0,'Wi-Fi','0','iot_net_type',0,'','','','1','2024-09-06 22:04:47','1','2025-03-17 09:28:47',_binary '\0'),(2010,1,'移动网络','1','iot_net_type',0,'','','','1','2024-09-06 22:05:14','1','2025-06-12 23:27:19',_binary '\0'),(2011,2,'以太网','2','iot_net_type',0,'','','','1','2024-09-06 22:05:35','1','2025-03-17 09:28:51',_binary '\0'),(2012,3,'其他','3','iot_net_type',0,'','','','1','2024-09-06 22:05:52','1','2025-03-17 09:28:54',_binary '\0'),(2018,0,'未激活','0','iot_device_state',0,'','','','1','2024-09-21 08:13:34','1','2025-03-17 09:29:09',_binary '\0'),(2019,1,'在线','1','iot_device_state',0,'','','','1','2024-09-21 08:13:48','1','2025-03-17 09:29:12',_binary '\0'),(2020,2,'离线','2','iot_device_state',0,'','','','1','2024-09-21 08:13:59','1','2025-03-17 09:29:14',_binary '\0'),(2021,1,'属性','1','iot_thing_model_type',0,'','','','1','2024-09-29 20:03:01','1','2025-03-17 09:29:24',_binary '\0'),(2022,2,'服务','2','iot_thing_model_type',0,'','','','1','2024-09-29 20:03:11','1','2025-03-17 09:29:27',_binary '\0'),(2023,3,'事件','3','iot_thing_model_type',0,'','','','1','2024-09-29 20:03:20','1','2025-03-17 09:29:29',_binary '\0'),(2030,1,'升每分钟','L/min','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:34:24',_binary '\0'),(2031,2,'毫克每千克','mg/kg','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:34:27',_binary '\0'),(2032,3,'浊度','NTU','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:34:31',_binary '\0'),(2033,4,'PH值','pH','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:34:36',_binary '\0'),(2034,5,'土壤EC值','dS/m','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:34:43',_binary '\0'),(2035,6,'太阳总辐射','W/㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:36:20',_binary '\0'),(2036,7,'降雨量','mm/hour','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:36:24',_binary '\0'),(2037,8,'乏','var','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:36:27',_binary '\0'),(2038,9,'厘泊','cP','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:36:33',_binary '\0'),(2039,10,'饱和度','aw','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:11',_binary '\0'),(2040,11,'个','pcs','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:19',_binary '\0'),(2041,12,'厘斯','cst','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:22',_binary '\0'),(2042,13,'巴','bar','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:24',_binary '\0'),(2043,14,'纳克每升','ppt','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:27',_binary '\0'),(2044,15,'微克每升','ppb','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:31',_binary '\0'),(2045,16,'微西每厘米','uS/cm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:34',_binary '\0'),(2046,17,'牛顿每库仑','N/C','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:38',_binary '\0'),(2047,18,'伏特每米','V/m','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:43',_binary '\0'),(2048,19,'滴速','ml/min','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:46',_binary '\0'),(2049,20,'毫米汞柱','mmHg','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:48',_binary '\0'),(2050,21,'血糖','mmol/L','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:37:54',_binary '\0'),(2051,22,'毫米每秒','mm/s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:02',_binary '\0'),(2052,23,'转每分钟','turn/m','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:07',_binary '\0'),(2053,24,'次','count','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:09',_binary '\0'),(2054,25,'档','gear','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:11',_binary '\0'),(2055,26,'步','stepCount','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:13',_binary '\0'),(2056,27,'标准立方米每小时','Nm3/h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:15',_binary '\0'),(2057,28,'千伏','kV','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:20',_binary '\0'),(2058,29,'千伏安','kVA','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:38:24',_binary '\0'),(2060,30,'千乏','kVar','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2061,31,'微瓦每平方厘米','uw/cm2','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2062,32,'只','只','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2063,33,'相对湿度','%RH','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2064,34,'立方米每秒','m³/s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2065,35,'公斤每秒','kg/s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2066,36,'转每分钟','r/min','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2067,37,'吨每小时','t/h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2068,38,'千卡每小时','KCL/h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2069,39,'升每秒','L/s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2070,40,'兆帕','Mpa','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2071,41,'立方米每小时','m³/h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2072,42,'千乏时','kvarh','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2073,43,'微克每升','μg/L','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2074,44,'千卡路里','kcal','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2075,45,'吉字节','GB','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2076,46,'兆字节','MB','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2077,47,'千字节','KB','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2078,48,'字节','B','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2079,49,'微克每平方分米每天','μg/(d㎡·d)','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2080,50,'无','','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2081,51,'百万分率','ppm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2082,52,'像素','pixel','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2083,53,'照度','Lux','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2084,54,'重力加速度','grav','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2085,55,'分贝','dB','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2086,56,'百分比','%','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2087,57,'流明','lm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2088,58,'比特','bit','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2089,59,'克每毫升','g/mL','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2090,60,'克每升','g/L','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2091,61,'毫克每升','mg/L','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2092,62,'微克每立方米','μg/m³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2093,63,'毫克每立方米','mg/m³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2094,64,'克每立方米','g/m³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2095,65,'千克每立方米','kg/m³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2096,66,'纳法','nF','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2097,67,'皮法','pF','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2098,68,'微法','μF','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2099,69,'法拉','F','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2100,70,'欧姆','Ω','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2101,71,'微安','μA','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2102,72,'毫安','mA','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2103,73,'千安','kA','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2104,74,'安培','A','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2105,75,'毫伏','mV','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2106,76,'伏特','V','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2107,77,'毫秒','ms','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2108,78,'秒','s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2109,79,'分钟','min','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2110,80,'小时','h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2111,81,'日','day','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2112,82,'周','week','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2113,83,'月','month','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2114,84,'年','year','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2115,85,'节','kn','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2116,86,'千米每小时','km/h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2117,87,'米每秒','m/s','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2118,88,'秒','″','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2119,89,'分','′','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2120,90,'度','°','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2121,91,'弧度','rad','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2122,92,'赫兹','Hz','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2123,93,'微瓦','μW','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2124,94,'毫瓦','mW','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2125,95,'千瓦特','kW','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2126,96,'瓦特','W','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2127,97,'卡路里','cal','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2128,98,'千瓦时','kW·h','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2129,99,'瓦时','Wh','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2130,100,'电子伏','eV','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2131,101,'千焦','kJ','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2132,102,'焦耳','J','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2133,103,'华氏度','℉','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2134,104,'开尔文','K','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2135,105,'吨','t','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2136,106,'摄氏度','°C','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2137,107,'毫帕','mPa','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2138,108,'百帕','hPa','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2139,109,'千帕','kPa','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2140,110,'帕斯卡','Pa','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2141,111,'毫克','mg','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2142,112,'克','g','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2143,113,'千克','kg','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2144,114,'牛','N','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2145,115,'毫升','mL','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2146,116,'升','L','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2147,117,'立方毫米','mm³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2148,118,'立方厘米','cm³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2149,119,'立方千米','km³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2150,120,'立方米','m³','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2151,121,'公顷','h㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2152,122,'平方厘米','c㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2153,123,'平方毫米','m㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2154,124,'平方千米','k㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2155,125,'平方米','㎡','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2156,126,'纳米','nm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2157,127,'微米','μm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2158,128,'毫米','mm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2159,129,'厘米','cm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2160,130,'分米','dm','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2161,131,'千米','km','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2162,132,'米','m','iot_thing_model_unit',0,'','','','1','2024-12-13 11:08:41','1','2025-03-17 09:40:46',_binary '\0'),(2165,1,'HTTP','1','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:39:54','1','2025-06-24 12:44:47',_binary '\0'),(2166,2,'TCP','2','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:40:06','1','2025-06-24 12:44:46',_binary '\0'),(2167,3,'WebSocket','3','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:40:24','1','2025-06-24 12:44:45',_binary '\0'),(2168,10,'MQTT','10','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:40:37','1','2025-06-24 12:44:44',_binary '\0'),(2169,20,'Database','20','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:41:05','1','2025-06-24 12:44:44',_binary '\0'),(2170,21,'Redis Stream','21','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:41:18','1','2025-06-24 12:44:43',_binary '\0'),(2171,30,'RocketMQ','30','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:41:30','1','2025-06-24 12:44:42',_binary '\0'),(2172,31,'RabbitMQ','31','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:41:47','1','2025-06-24 12:44:41',_binary '\0'),(2173,32,'Kafka','32','iot_data_sink_type_enum',0,'default','','','1','2025-03-09 12:41:59','1','2025-06-24 12:44:39',_binary '\0'),(2174,1,'设备上下线变更','1','iot_rule_scene_trigger_type_enum',0,'primary','','','1','2025-03-20 15:00:01','\"1\"','2025-07-06 10:28:16',_binary '\0'),(2175,2,'物模型属性上报','2','iot_rule_scene_trigger_type_enum',0,'primary','','','1','2025-03-20 15:00:09','\"1\"','2025-07-06 10:28:22',_binary '\0'),(2176,1,'设备状态','state','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:24:58','1','2025-03-20 15:24:58',_binary '\0'),(2177,2,'设备属性','property','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:25:09','1','2025-03-20 15:25:09',_binary '\0'),(2178,3,'设备事件','event','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:25:23','1','2025-03-20 15:25:23',_binary '\0'),(2179,4,'设备服务','service','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:25:39','1','2025-03-20 15:25:39',_binary '\0'),(2180,5,'设备配置','config','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:25:51','1','2025-03-20 15:25:57',_binary '\0'),(2181,6,'设备 OTA','ota','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:26:17','1','2025-03-20 15:26:17',_binary '\0'),(2182,7,'设备注册','register','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:26:35','1','2025-03-20 15:26:35',_binary '\0'),(2183,8,'设备拓扑','topology','iot_device_message_type_enum',0,'primary','','','1','2025-03-20 15:26:46','1','2025-03-20 15:26:46',_binary '\0'),(2184,1,'设备属性设置','1','iot_rule_scene_action_type_enum',0,'primary','','','1','2025-03-28 15:27:12','\"1\"','2025-07-06 10:37:33',_binary '\0'),(2185,2,'设备服务调用','2','iot_rule_scene_action_type_enum',0,'primary','','','1','2025-03-28 15:27:25','\"1\"','2025-07-06 10:37:41',_binary '\0'),(2186,100,'告警触发','100','iot_rule_scene_action_type_enum',0,'primary','','','1','2025-03-28 15:27:35','\"1\"','2025-07-06 10:37:50',_binary '\0'),(3000,16,'百川智能','BaiChuan','ai_platform',0,'','','','1','2025-03-23 12:15:46','1','2025-03-23 12:15:46',_binary '\0'),(3001,40,'Vben5.0 Ant Design Schema 模版','40','infra_codegen_front_type',0,'','',NULL,'1','2025-04-23 21:47:47','1','2025-09-04 23:25:12',_binary '\0'),(3002,6,'支付宝余额','6','brokerage_withdraw_type',0,'','','API 打款','1','2025-05-10 08:24:49','1','2025-05-10 08:24:49',_binary '\0'),(3003,1,'Alink','Alink','iot_codec_type',0,'','','阿里云 Alink','1','2025-06-12 22:56:06','1','2025-06-12 23:22:24',_binary '\0'),(3004,3,'WARN','3','iot_alert_level',0,'warning','','','1','2025-06-27 20:32:22','1','2025-06-27 20:34:31',_binary '\0'),(3005,1,'INFO','1','iot_alert_level',0,'primary','','','1','2025-06-27 20:33:28','1','2025-06-27 20:34:35',_binary '\0'),(3006,5,'ERROR','5','iot_alert_level',0,'danger','','','1','2025-06-27 20:33:50','1','2025-06-27 20:33:50',_binary '\0'),(3007,1,'短信','1','iot_alert_receive_type',0,'','','','1','2025-06-27 22:49:30','1','2025-06-27 22:49:30',_binary '\0'),(3008,2,'邮箱','2','iot_alert_receive_type',0,'','','','1','2025-06-27 22:49:39','1','2025-06-27 22:50:07',_binary '\0'),(3009,3,'站内信','3','iot_alert_receive_type',0,'','','','1','2025-06-27 22:50:20','1','2025-06-27 22:50:20',_binary '\0'),(3010,1,'全部设备','1','iot_ota_task_device_scope',0,'','','','1','2025-07-02 09:43:09','1','2025-07-02 09:43:09',_binary '\0'),(3011,2,'指定设备','2','iot_ota_task_device_scope',0,'','','','1','2025-07-02 09:43:15','1','2025-07-02 09:43:15',_binary '\0'),(3012,10,'进行中','10','iot_ota_task_status',0,'primary','','','1','2025-07-02 09:44:01','\"1\"','2025-07-02 09:44:21',_binary '\0'),(3013,20,'已结束','20','iot_ota_task_status',0,'success','','','1','2025-07-02 09:44:14','\"1\"','2025-07-02 23:56:12',_binary '\0'),(3014,30,'已取消','30','iot_ota_task_status',0,'danger','','','1','2025-07-02 09:44:36','1','2025-07-02 09:44:36',_binary '\0'),(3015,0,'待推送','0','iot_ota_task_record_status',0,'','','','1','2025-07-02 09:45:16','1','2025-07-02 09:45:16',_binary '\0'),(3016,10,'已推送','10','iot_ota_task_record_status',0,'','','','1','2025-07-02 09:45:25','1','2025-07-02 09:45:25',_binary '\0'),(3017,20,'升级中','20','iot_ota_task_record_status',0,'primary','','','1','2025-07-02 09:45:37','1','2025-07-02 09:45:37',_binary '\0'),(3018,30,'升级成功','30','iot_ota_task_record_status',0,'success','','','1','2025-07-02 09:45:47','1','2025-07-02 09:45:47',_binary '\0'),(3019,40,'升级失败','40','iot_ota_task_record_status',0,'danger','','','1','2025-07-02 09:46:02','1','2025-07-02 09:46:02',_binary '\0'),(3020,50,'升级取消','50','iot_ota_task_record_status',0,'warning','','','1','2025-07-02 09:46:09','\"1\"','2025-07-02 09:46:27',_binary '\0'),(3021,1,'IP 定位','1','iot_location_type',0,'','','','1','2025-07-05 09:56:46','1','2025-07-05 09:56:46',_binary '\0'),(3022,2,'设备上报','2','iot_location_type',0,'','','','1','2025-07-05 09:56:57','1','2025-07-05 09:56:57',_binary '\0'),(3023,3,'手动定位','3','iot_location_type',0,'','','','1','2025-07-05 09:57:05','1','2025-07-05 09:57:05',_binary '\0'),(3024,3,'设备事件上报','3','iot_rule_scene_trigger_type_enum',0,'','','','1','2025-07-06 10:28:29','1','2025-07-06 10:28:29',_binary '\0'),(3025,4,'设备服务调用','4','iot_rule_scene_trigger_type_enum',0,'','','','1','2025-07-06 10:28:35','1','2025-07-06 10:28:35',_binary '\0'),(3026,100,'定时触发','100','iot_rule_scene_trigger_type_enum',0,'','','','1','2025-07-06 10:28:48','1','2025-07-06 10:28:48',_binary '\0'),(3027,101,'告警恢复','101','iot_rule_scene_action_type_enum',0,'','','','1','2025-07-06 10:37:57','1','2025-07-06 10:37:57',_binary '\0'),(3028,2,'Anthropic','Anthropic','ai_platform',0,'','','','1','2025-08-21 22:54:24','1','2025-08-21 22:57:58',_binary '\0'),(3029,2,'谷歌 Gemini','Gemini','ai_platform',0,'','','','1','2025-08-22 22:39:35','1','2025-08-22 22:44:49',_binary '\0'),(3030,1,'文件系统','filesystem','ai_mcp_client_name',0,'','','','1','2025-08-28 13:58:43','1','2025-08-28 21:19:42',_binary '\0'),(3031,41,'Vben5.0 Ant Design 标准模版','41','infra_codegen_front_type',0,'','','','1','2025-09-04 23:26:07','1','2025-09-04 23:26:07',_binary '\0'),(3032,50,'Vben5.0 Element Plus Schema 模版','50','infra_codegen_front_type',0,'','','','1','2025-09-04 23:26:38','1','2025-09-04 23:26:38',_binary '\0'),(3033,51,'Vben5.0 Element Plus 标准模版','51','infra_codegen_front_type',0,'','','','1','2025-09-04 23:26:49','1','2025-09-04 23:26:49',_binary '\0'),(3034,1,'ttt','tt','iot_ota_task_record_status',0,'success','',NULL,'1','2025-09-06 00:02:21','1','2025-09-06 00:02:31',_binary '\0'),(3035,40,'支付宝小程序','40','system_social_type',0,'','','','1','2023-11-04 13:05:38','1','2023-11-04 13:07:16',_binary '\0');
/*!40000 ALTER TABLE `system_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_dict_type`
--

DROP TABLE IF EXISTS `system_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_dict_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `deleted_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_dict_type`
--

LOCK TABLES `system_dict_type` WRITE;
/*!40000 ALTER TABLE `system_dict_type` DISABLE KEYS */;
INSERT INTO `system_dict_type` VALUES (1,'用户性别','system_user_sex',0,NULL,'admin','2021-01-05 17:03:48','1','2022-05-16 20:29:32',_binary '\0',NULL),(6,'参数类型','infra_config_type',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:36:54',_binary '\0',NULL),(7,'通知类型','system_notice_type',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:35:26',_binary '\0',NULL),(9,'操作类型','infra_operate_type',0,NULL,'admin','2021-01-05 17:03:48','1','2024-03-14 12:44:01',_binary '\0',NULL),(10,'系统状态','common_status',0,NULL,'admin','2021-01-05 17:03:48','','2022-02-01 16:21:28',_binary '\0',NULL),(11,'Boolean 是否类型','infra_boolean_string',0,'boolean 转是否','','2021-01-19 03:20:08','','2022-02-01 16:37:10',_binary '\0',NULL),(104,'登陆结果','system_login_result',0,'登陆结果','','2021-01-18 06:17:11','','2022-02-01 16:36:00',_binary '\0',NULL),(106,'代码生成模板类型','infra_codegen_template_type',0,NULL,'','2021-02-05 07:08:06','1','2022-05-16 20:26:50',_binary '\0',NULL),(107,'定时任务状态','infra_job_status',0,NULL,'','2021-02-07 07:44:16','','2022-02-01 16:51:11',_binary '\0',NULL),(108,'定时任务日志状态','infra_job_log_status',0,NULL,'','2021-02-08 10:03:51','','2022-02-01 16:50:43',_binary '\0',NULL),(109,'用户类型','user_type',0,NULL,'','2021-02-26 00:15:51','','2021-02-26 00:15:51',_binary '\0',NULL),(110,'API 异常数据的处理状态','infra_api_error_log_process_status',0,NULL,'','2021-02-26 07:07:01','','2022-02-01 16:50:53',_binary '\0',NULL),(111,'短信渠道编码','system_sms_channel_code',0,NULL,'1','2021-04-05 01:04:50','1','2022-02-16 02:09:08',_binary '\0',NULL),(112,'短信模板的类型','system_sms_template_type',0,NULL,'1','2021-04-05 21:50:43','1','2022-02-01 16:35:06',_binary '\0',NULL),(113,'短信发送状态','system_sms_send_status',0,NULL,'1','2021-04-11 20:18:03','1','2022-02-01 16:35:09',_binary '\0',NULL),(114,'短信接收状态','system_sms_receive_status',0,NULL,'1','2021-04-11 20:27:14','1','2022-02-01 16:35:14',_binary '\0',NULL),(116,'登陆日志的类型','system_login_type',0,'登陆日志的类型','1','2021-10-06 00:50:46','1','2022-02-01 16:35:56',_binary '\0',NULL),(117,'OA 请假类型','bpm_oa_leave_type',0,NULL,'1','2021-09-21 22:34:33','1','2022-01-22 10:41:37',_binary '\0',NULL),(130,'支付渠道编码类型','pay_channel_code',0,'支付渠道的编码','1','2021-12-03 10:35:08','1','2023-07-10 10:11:39',_binary '\0',NULL),(131,'支付回调状态','pay_notify_status',0,'支付回调状态（包括退款回调）','1','2021-12-03 10:53:29','1','2023-07-19 18:09:43',_binary '\0',NULL),(132,'支付订单状态','pay_order_status',0,'支付订单状态','1','2021-12-03 11:17:50','1','2021-12-03 11:17:50',_binary '\0',NULL),(134,'退款订单状态','pay_refund_status',0,'退款订单状态','1','2021-12-10 16:42:50','1','2023-07-19 10:13:17',_binary '\0',NULL),(139,'流程实例的状态','bpm_process_instance_status',0,'流程实例的状态','1','2022-01-07 23:46:42','1','2022-01-07 23:46:42',_binary '\0',NULL),(140,'流程实例的结果','bpm_task_status',0,'流程实例的结果','1','2022-01-07 23:48:10','1','2024-03-08 22:42:03',_binary '\0',NULL),(141,'流程的表单类型','bpm_model_form_type',0,'流程的表单类型','103','2022-01-11 23:50:45','103','2022-01-11 23:50:45',_binary '\0',NULL),(142,'任务分配规则的类型','bpm_task_candidate_strategy',0,'BPM 任务的候选人的策略','103','2022-01-12 23:21:04','103','2024-03-06 02:53:59',_binary '\0',NULL),(144,'代码生成的场景枚举','infra_codegen_scene',0,'代码生成的场景枚举','1','2022-02-02 13:14:45','1','2022-03-10 16:33:46',_binary '\0',NULL),(145,'角色类型','system_role_type',0,'角色类型','1','2022-02-16 13:01:46','1','2022-02-16 13:01:46',_binary '\0',NULL),(146,'文件存储器','infra_file_storage',0,'文件存储器','1','2022-03-15 00:24:38','1','2022-03-15 00:24:38',_binary '\0',NULL),(147,'OAuth 2.0 授权类型','system_oauth2_grant_type',0,'OAuth 2.0 授权类型（模式）','1','2022-05-12 00:20:52','1','2022-05-11 16:25:49',_binary '\0',NULL),(149,'商品 SPU 状态','product_spu_status',0,'商品 SPU 状态','1','2022-10-24 21:19:04','1','2022-10-24 21:19:08',_binary '\0',NULL),(150,'优惠类型','promotion_discount_type',0,'优惠类型','1','2022-11-01 12:46:06','1','2022-11-01 12:46:06',_binary '\0',NULL),(151,'优惠劵模板的有限期类型','promotion_coupon_template_validity_type',0,'优惠劵模板的有限期类型','1','2022-11-02 00:06:20','1','2022-11-04 00:08:26',_binary '\0',NULL),(152,'营销的商品范围','promotion_product_scope',0,'营销的商品范围','1','2022-11-02 00:28:01','1','2022-11-02 00:28:01',_binary '\0',NULL),(153,'优惠劵的状态','promotion_coupon_status',0,'优惠劵的状态','1','2022-11-04 00:14:49','1','2022-11-04 00:14:49',_binary '\0',NULL),(154,'优惠劵的领取方式','promotion_coupon_take_type',0,'优惠劵的领取方式','1','2022-11-04 19:12:27','1','2022-11-04 19:12:27',_binary '\0',NULL),(155,'促销活动的状态','promotion_activity_status',0,'促销活动的状态','1','2022-11-04 22:54:23','1','2022-11-04 22:54:23',_binary '\0',NULL),(156,'营销的条件类型','promotion_condition_type',0,'营销的条件类型','1','2022-11-04 22:59:23','1','2022-11-04 22:59:23',_binary '\0',NULL),(157,'交易售后状态','trade_after_sale_status',0,'交易售后状态','1','2022-11-19 20:52:56','1','2022-11-19 20:52:56',_binary '\0',NULL),(158,'交易售后的类型','trade_after_sale_type',0,'交易售后的类型','1','2022-11-19 21:04:09','1','2022-11-19 21:04:09',_binary '\0',NULL),(159,'交易售后的方式','trade_after_sale_way',0,'交易售后的方式','1','2022-11-19 21:39:04','1','2022-11-19 21:39:04',_binary '\0',NULL),(160,'终端','terminal',0,'终端','1','2022-12-10 10:50:50','1','2022-12-10 10:53:11',_binary '\0',NULL),(161,'交易订单的类型','trade_order_type',0,'交易订单的类型','1','2022-12-10 16:33:54','1','2022-12-10 16:33:54',_binary '\0',NULL),(162,'交易订单的状态','trade_order_status',0,'交易订单的状态','1','2022-12-10 16:48:44','1','2022-12-10 16:48:44',_binary '\0',NULL),(163,'交易订单项的售后状态','trade_order_item_after_sale_status',0,'交易订单项的售后状态','1','2022-12-10 20:58:08','1','2022-12-10 20:58:08',_binary '\0',NULL),(164,'公众号自动回复的请求关键字匹配模式','mp_auto_reply_request_match',0,'公众号自动回复的请求关键字匹配模式','1','2023-01-16 23:29:56','1','2023-01-16 23:29:56',_binary '\0','1970-01-01 00:00:00'),(165,'公众号的消息类型','mp_message_type',0,'公众号的消息类型','1','2023-01-17 22:17:09','1','2023-01-17 22:17:09',_binary '\0','1970-01-01 00:00:00'),(166,'邮件发送状态','system_mail_send_status',0,'邮件发送状态','1','2023-01-26 09:53:13','1','2023-01-26 09:53:13',_binary '\0','1970-01-01 00:00:00'),(167,'站内信模版的类型','system_notify_template_type',0,'站内信模版的类型','1','2023-01-28 10:35:10','1','2023-01-28 10:35:10',_binary '\0','1970-01-01 00:00:00'),(168,'代码生成的前端类型','infra_codegen_front_type',0,'','1','2023-04-12 23:57:52','1','2023-04-12 23:57:52',_binary '\0','1970-01-01 00:00:00'),(170,'快递计费方式','trade_delivery_express_charge_mode',0,'用于商城交易模块配送管理','1','2023-05-21 22:45:03','1','2023-05-21 22:45:03',_binary '\0','1970-01-01 00:00:00'),(171,'积分业务类型','member_point_biz_type',0,'','1','2023-06-10 12:15:00','1','2023-06-28 13:48:20',_binary '\0','1970-01-01 00:00:00'),(173,'支付通知类型','pay_notify_type',0,NULL,'1','2023-07-20 12:23:03','1','2023-07-20 12:23:03',_binary '\0','1970-01-01 00:00:00'),(174,'会员经验业务类型','member_experience_biz_type',0,NULL,'','2023-08-22 12:41:01','','2023-08-22 12:41:01',_binary '\0',NULL),(175,'交易配送类型','trade_delivery_type',0,'','1','2023-08-23 00:03:14','1','2023-08-23 00:03:14',_binary '\0','1970-01-01 00:00:00'),(176,'分佣模式','brokerage_enabled_condition',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(177,'分销关系绑定模式','brokerage_bind_mode',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(178,'佣金提现类型','brokerage_withdraw_type',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(179,'佣金记录业务类型','brokerage_record_biz_type',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(180,'佣金记录状态','brokerage_record_status',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(181,'佣金提现状态','brokerage_withdraw_status',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(182,'佣金提现银行','brokerage_bank_name',0,NULL,'','2023-09-28 02:46:05','','2023-09-28 02:46:05',_binary '\0',NULL),(183,'砍价记录的状态','promotion_bargain_record_status',0,'','1','2023-10-05 10:41:08','1','2023-10-05 10:41:08',_binary '\0','1970-01-01 00:00:00'),(184,'拼团记录的状态','promotion_combination_record_status',0,'','1','2023-10-08 07:24:25','1','2023-10-08 07:24:25',_binary '\0','1970-01-01 00:00:00'),(185,'回款-回款方式','crm_receivable_return_type',0,'回款-回款方式','1','2023-10-18 21:54:10','1','2023-10-18 21:54:10',_binary '\0','1970-01-01 00:00:00'),(186,'CRM 客户行业','crm_customer_industry',0,'CRM 客户所属行业','1','2023-10-28 22:57:07','1','2024-02-18 23:30:22',_binary '\0',NULL),(187,'客户等级','crm_customer_level',0,'CRM 客户等级','1','2023-10-28 22:59:12','1','2023-10-28 15:11:16',_binary '\0',NULL),(188,'客户来源','crm_customer_source',0,'CRM 客户来源','1','2023-10-28 23:00:34','1','2023-10-28 15:11:16',_binary '\0',NULL),(600,'Banner 位置','promotion_banner_position',0,'','1','2023-10-08 07:24:25','1','2023-11-04 13:04:02',_binary '\0','1970-01-01 00:00:00'),(601,'社交类型','system_social_type',0,'','1','2023-11-04 13:03:54','1','2023-11-04 13:03:54',_binary '\0','1970-01-01 00:00:00'),(604,'产品状态','crm_product_status',0,'','1','2023-10-30 21:47:59','1','2023-10-30 21:48:45',_binary '\0','1970-01-01 00:00:00'),(605,'CRM 数据权限的级别','crm_permission_level',0,'','1','2023-11-30 09:51:59','1','2023-11-30 09:51:59',_binary '\0','1970-01-01 00:00:00'),(606,'CRM 审批状态','crm_audit_status',0,'','1','2023-11-30 18:56:23','1','2023-11-30 18:56:23',_binary '\0','1970-01-01 00:00:00'),(607,'CRM 产品单位','crm_product_unit',0,'','1','2023-12-05 23:01:51','1','2023-12-05 23:01:51',_binary '\0','1970-01-01 00:00:00'),(608,'CRM 跟进方式','crm_follow_up_type',0,'','1','2024-01-15 20:48:05','1','2024-01-15 20:48:05',_binary '\0','1970-01-01 00:00:00'),(610,'转账订单状态','pay_transfer_status',0,'','1','2023-10-28 16:18:32','1','2023-10-28 16:18:32',_binary '\0','1970-01-01 00:00:00'),(611,'ERP 库存明细的业务类型','erp_stock_record_biz_type',0,'ERP 库存明细的业务类型','1','2024-02-05 18:07:02','1','2024-02-05 18:07:02',_binary '\0','1970-01-01 00:00:00'),(612,'ERP 审批状态','erp_audit_status',0,'','1','2024-02-06 00:00:07','1','2024-02-06 00:00:07',_binary '\0','1970-01-01 00:00:00'),(613,'BPM 监听器类型','bpm_process_listener_type',0,'','1','2024-03-23 12:52:24','1','2024-03-09 15:54:28',_binary '\0','1970-01-01 00:00:00'),(615,'BPM 监听器值类型','bpm_process_listener_value_type',0,'','1','2024-03-23 13:00:31','1','2024-03-23 13:00:31',_binary '\0','1970-01-01 00:00:00'),(616,'时间间隔','date_interval',0,'','1','2024-03-29 22:50:09','1','2024-03-29 22:50:09',_binary '\0','1970-01-01 00:00:00'),(619,'CRM 商机结束状态类型','crm_business_end_status_type',0,'','1','2024-04-13 23:23:00','1','2024-04-13 23:23:00',_binary '\0','1970-01-01 00:00:00'),(620,'AI 模型平台','ai_platform',0,'','1','2024-05-09 22:27:38','1','2024-05-09 22:27:38',_binary '\0','1970-01-01 00:00:00'),(621,'AI 绘画状态','ai_image_status',0,'','1','2024-06-26 20:51:23','1','2024-06-26 20:51:23',_binary '\0','1970-01-01 00:00:00'),(622,'AI 音乐状态','ai_music_status',0,'','1','2024-06-27 22:45:07','1','2024-06-28 00:56:27',_binary '\0','1970-01-01 00:00:00'),(623,'AI 音乐生成模式','ai_generate_mode',0,'','1','2024-06-27 22:46:21','1','2024-06-28 01:22:29',_binary '\0','1970-01-01 00:00:00'),(624,'写作语气','ai_write_tone',0,'','1','2024-07-07 15:19:02','1','2024-07-07 15:19:02',_binary '\0','1970-01-01 00:00:00'),(625,'写作语言','ai_write_language',0,'','1','2024-07-07 15:18:52','1','2024-07-07 15:18:52',_binary '\0','1970-01-01 00:00:00'),(626,'写作长度','ai_write_length',0,'','1','2024-07-07 15:18:41','1','2024-07-07 15:18:41',_binary '\0','1970-01-01 00:00:00'),(627,'写作格式','ai_write_format',0,'','1','2024-07-07 15:14:34','1','2024-07-07 15:14:34',_binary '\0','1970-01-01 00:00:00'),(628,'AI 写作类型','ai_write_type',0,'','1','2024-07-10 21:25:29','1','2024-07-10 21:25:29',_binary '\0','1970-01-01 00:00:00'),(629,'BPM 流程模型类型','bpm_model_type',0,'','1','2024-08-26 15:21:43','1','2024-08-26 15:21:43',_binary '\0','1970-01-01 00:00:00'),(640,'AI 模型类型','ai_model_type',0,'','1','2025-03-03 12:24:07','1','2025-03-03 12:24:07',_binary '\0','1970-01-01 00:00:00'),(1001,'IoT 产品设备类型','iot_product_device_type',0,'','1','2024-08-10 11:54:30','1','2025-03-17 09:25:08',_binary '\0','1970-01-01 00:00:00'),(1002,'IoT 产品状态','iot_product_status',0,'','1','2024-08-10 12:06:09','1','2025-03-17 09:25:10',_binary '\0','1970-01-01 00:00:00'),(1004,'IoT 联网方式','iot_net_type',0,'','1','2024-09-06 22:04:13','1','2025-03-17 09:25:14',_binary '\0','1970-01-01 00:00:00'),(1006,'IoT 设备状态','iot_device_state',0,'','1','2024-09-21 08:12:55','1','2025-03-17 09:25:19',_binary '\0','1970-01-01 00:00:00'),(1007,'IoT 物模型功能类型','iot_thing_model_type',0,'','1','2024-09-29 20:02:36','1','2025-03-17 09:25:24',_binary '\0','1970-01-01 00:00:00'),(1011,'IoT 物模型单位','iot_thing_model_unit',0,'','1','2024-12-25 17:36:46','1','2025-03-17 09:25:35',_binary '\0','1970-01-01 00:00:00'),(1013,'IoT 数据流转目的的类型枚举','iot_data_sink_type_enum',0,'','1','2025-03-09 12:39:36','1','2025-06-24 12:45:24',_binary '\0','1970-01-01 00:00:00'),(1014,'IoT 场景流转的触发类型枚举','iot_rule_scene_trigger_type_enum',0,'','1','2025-03-20 14:59:44','1','2025-03-20 14:59:44',_binary '\0','1970-01-01 00:00:00'),(1015,'IoT 设备消息类型枚举','iot_device_message_type_enum',0,'','1','2025-03-20 15:01:15','1','2025-03-20 15:01:15',_binary '\0','1970-01-01 00:00:00'),(1016,'IoT 规则场景的触发类型枚举','iot_rule_scene_action_type_enum',0,'','1','2025-03-28 15:26:54','1','2025-03-28 15:29:13',_binary '\0','1970-01-01 00:00:00'),(2000,'IoT 数据格式','iot_codec_type',0,'IoT 编解码器类型','1','2025-06-12 22:55:46','1','2025-06-12 22:55:46',_binary '\0','1970-01-01 00:00:00'),(2001,'IoT 告警级别','iot_alert_level',0,'','1','2025-06-27 20:30:57','1','2025-06-27 20:30:57',_binary '\0','1970-01-01 00:00:00'),(2002,'IoT 告警','iot_alert_receive_type',0,'','1','2025-06-27 22:49:19','1','2025-06-27 22:49:19',_binary '\0','1970-01-01 00:00:00'),(2003,'IoT 固件设备范围','iot_ota_task_device_scope',0,'','1','2025-07-02 09:42:49','1','2025-07-02 09:42:49',_binary '\0','1970-01-01 00:00:00'),(2004,'IoT 固件升级任务状态','iot_ota_task_status',0,'','1','2025-07-02 09:43:43','1','2025-07-02 09:43:43',_binary '\0','1970-01-01 00:00:00'),(2005,'IoT 固件升级记录状态','iot_ota_task_record_status',0,'','1','2025-07-02 09:45:02','1','2025-07-02 09:45:02',_binary '\0','1970-01-01 00:00:00'),(2006,'IoT 定位类型','iot_location_type',0,'','1','2025-07-05 09:56:25','1','2025-07-05 09:56:25',_binary '\0','1970-01-01 00:00:00'),(2007,'AI MCP 客户端名字','ai_mcp_client_name',0,'','1','2025-08-28 13:57:40','1','2025-08-28 13:57:40',_binary '\0','1970-01-01 00:00:00');
/*!40000 ALTER TABLE `system_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_login_log`
--

DROP TABLE IF EXISTS `system_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `log_type` bigint NOT NULL COMMENT '日志类型',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户编号',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '用户类型',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户账号',
  `result` tinyint NOT NULL COMMENT '登陆结果',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器 UA',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4068 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_login_log`
--

LOCK TABLES `system_login_log` WRITE;
/*!40000 ALTER TABLE `system_login_log` DISABLE KEYS */;
INSERT INTO `system_login_log` VALUES (4066,100,'',1,2,'admin',0,'127.0.0.1','curl/7.87.0',NULL,'2026-02-01 19:02:21',NULL,'2026-02-01 19:02:21',_binary '\0',1),(4067,100,'',1,2,'admin',0,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0',NULL,'2026-02-01 19:18:20',NULL,'2026-02-01 19:18:20',_binary '\0',1);
/*!40000 ALTER TABLE `system_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_account`
--

DROP TABLE IF EXISTS `system_mail_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_mail_account` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'SMTP 服务器域名',
  `port` int NOT NULL COMMENT 'SMTP 服务器端口',
  `ssl_enable` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否开启 SSL',
  `starttls_enable` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否开启 STARTTLS',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱账号表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_account`
--

LOCK TABLES `system_mail_account` WRITE;
/*!40000 ALTER TABLE `system_mail_account` DISABLE KEYS */;
INSERT INTO `system_mail_account` VALUES (1,'7684413@qq.com','7684413@qq.com','1234576','127.0.0.1',8080,_binary '\0',_binary '\0','1','2023-01-25 17:39:52','1','2025-04-04 16:34:40',_binary '\0'),(2,'ydym_test@163.com','ydym_test@163.com','WBZTEINMIFVRYSOE','smtp.163.com',465,_binary '',_binary '\0','1','2023-01-26 01:26:03','1','2025-07-26 21:57:55',_binary '\0'),(3,'76854114@qq.com','3335','11234','yunai1.cn',466,_binary '\0',_binary '\0','1','2023-01-27 15:06:38','1','2023-01-27 07:08:36',_binary ''),(4,'7685413x@qq.com','2','3','4',5,_binary '',_binary '\0','1','2023-04-12 23:05:06','1','2023-04-12 15:05:11',_binary '');
/*!40000 ALTER TABLE `system_mail_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_log`
--

DROP TABLE IF EXISTS `system_mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_mail_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint DEFAULT NULL COMMENT '用户编号',
  `user_type` tinyint DEFAULT NULL COMMENT '用户类型',
  `to_mails` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接收邮箱地址',
  `cc_mails` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '抄送邮箱地址',
  `bcc_mails` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密送邮箱地址',
  `account_id` bigint NOT NULL COMMENT '邮箱账号编号',
  `from_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发送邮箱地址',
  `template_id` bigint NOT NULL COMMENT '模板编号',
  `template_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `template_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模版发送人名称',
  `template_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件标题',
  `template_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件内容',
  `template_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件参数',
  `send_status` tinyint NOT NULL DEFAULT '0' COMMENT '发送状态',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `send_message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发送返回的消息 ID',
  `send_exception` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发送异常',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮件日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_log`
--

LOCK TABLES `system_mail_log` WRITE;
/*!40000 ALTER TABLE `system_mail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_mail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_mail_template`
--

DROP TABLE IF EXISTS `system_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_mail_template` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `account_id` bigint NOT NULL COMMENT '发送的邮箱账号编号',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发送人名称',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板标题',
  `content` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板内容',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `status` tinyint NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮件模版表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_mail_template`
--

LOCK TABLES `system_mail_template` WRITE;
/*!40000 ALTER TABLE `system_mail_template` DISABLE KEYS */;
INSERT INTO `system_mail_template` VALUES (13,'后台用户短信登录','admin-sms-login',1,'奥特曼','你猜我猜','<p>您的验证码是{code}，名字是{name}</p>','[\"code\",\"name\"]',0,'3','1','2021-10-11 08:10:00','1','2023-12-02 19:51:14',_binary '\0'),(14,'测试模版','test_01',2,'芋艿','一个标题','<p>你是 {key01} 吗？</p><p><br></p><p>是的话，赶紧 {key02} 一下！</p>','[\"key01\",\"key02\"]',0,NULL,'1','2023-01-26 01:27:40','1','2025-07-26 21:48:45',_binary '\0'),(15,'3','2',2,'7','4','<p>45</p>','[]',1,'80','1','2023-01-27 15:50:35','1','2025-07-26 21:47:49',_binary '');
/*!40000 ALTER TABLE `system_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_menu`
--

DROP TABLE IF EXISTS `system_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限标识',
  `type` tinyint NOT NULL COMMENT '菜单类型',
  `sort` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `parent_id` bigint NOT NULL DEFAULT '0' COMMENT '父菜单ID',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '路由地址',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组件名',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '菜单状态',
  `visible` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否可见',
  `keep_alive` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否缓存',
  `always_show` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否总是显示',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5047 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_menu`
--

LOCK TABLES `system_menu` WRITE;
/*!40000 ALTER TABLE `system_menu` DISABLE KEYS */;
INSERT INTO `system_menu` VALUES (1,'系统管理','',1,10,0,'/system','ep:tools',NULL,NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2025-03-15 21:30:27',_binary '\0'),(2,'基础设施','',1,20,0,'/infra','ep:monitor',NULL,NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-03-01 08:28:40',_binary '\0'),(5,'OA 示例','',1,40,1185,'oa','fa:road',NULL,NULL,0,_binary '',_binary '',_binary '','admin','2021-09-20 16:26:19','1','2024-02-29 12:38:13',_binary '\0'),(100,'用户管理','system:user:list',2,1,1,'user','ep:avatar','system/user/index','SystemUser',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2025-03-15 21:30:41',_binary '\0'),(101,'角色管理','',2,2,1,'role','ep:user','system/role/index','SystemRole',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-05-01 18:35:29',_binary '\0'),(102,'菜单管理','',2,3,1,'menu','ep:menu','system/menu/index','SystemMenu',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:03:50',_binary '\0'),(103,'部门管理','',2,4,1,'dept','fa:address-card','system/dept/index','SystemDept',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:06:28',_binary '\0'),(104,'岗位管理','',2,5,1,'post','fa:address-book-o','system/post/index','SystemPost',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:06:39',_binary '\0'),(105,'字典管理','',2,6,1,'dict','ep:collection','system/dict/index','SystemDictType',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:07:12',_binary '\0'),(106,'配置管理','',2,8,2,'config','fa:connectdevelop','infra/config/index','InfraConfig',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-23 00:02:45',_binary '\0'),(107,'通知公告','',2,4,2739,'notice','ep:takeaway-box','system/notice/index','SystemNotice',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-22 23:56:17',_binary '\0'),(108,'审计日志','',1,9,1,'log','ep:document-copy','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:08:30',_binary '\0'),(109,'令牌管理','',2,2,1261,'token','fa:key','system/oauth2/token/index','SystemTokenClient',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:13:48',_binary '\0'),(110,'定时任务','',2,7,2,'job','fa-solid:tasks','infra/job/index','InfraJob',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 08:57:36',_binary '\0'),(111,'MySQL 监控','',2,1,2740,'druid','fa-solid:box','infra/druid/index','InfraDruid',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-23 00:05:58',_binary '\0'),(112,'Java 监控','',2,3,2740,'admin-server','ep:coffee-cup','infra/server/index','InfraAdminServer',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-23 00:06:57',_binary '\0'),(113,'Redis 监控','',2,2,2740,'redis','fa:reddit-square','infra/redis/index','InfraRedis',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-23 00:06:09',_binary '\0'),(114,'表单构建','infra:build:list',2,2,2,'build','fa:wpforms','infra/build/index','InfraBuild',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 08:51:35',_binary '\0'),(115,'代码生成','infra:codegen:query',2,1,2,'codegen','ep:document-copy','infra/codegen/index','InfraCodegen',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 08:51:06',_binary '\0'),(116,'API 接口','infra:swagger:list',2,3,2,'swagger','fa:fighter-jet','infra/swagger/index','InfraSwagger',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-04-23 00:01:24',_binary '\0'),(500,'操作日志','',2,1,108,'operate-log','ep:position','system/operatelog/index','SystemOperateLog',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:09:59',_binary '\0'),(501,'登录日志','',2,2,108,'login-log','ep:promotion','system/loginlog/index','SystemLoginLog',0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2024-02-29 01:10:29',_binary '\0'),(1001,'用户查询','system:user:query',3,1,100,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1002,'用户新增','system:user:create',3,2,100,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1003,'用户修改','system:user:update',3,3,100,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1004,'用户删除','system:user:delete',3,4,100,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1005,'用户导出','system:user:export',3,5,100,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1006,'用户导入','system:user:import',3,6,100,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1007,'重置密码','system:user:update-password',3,7,100,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1008,'角色查询','system:role:query',3,1,101,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1009,'角色新增','system:role:create',3,2,101,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1010,'角色修改','system:role:update',3,3,101,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1011,'角色删除','system:role:delete',3,4,101,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1012,'角色导出','system:role:export',3,5,101,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1013,'菜单查询','system:menu:query',3,1,102,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1014,'菜单新增','system:menu:create',3,2,102,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1015,'菜单修改','system:menu:update',3,3,102,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1016,'菜单删除','system:menu:delete',3,4,102,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1017,'部门查询','system:dept:query',3,1,103,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1018,'部门新增','system:dept:create',3,2,103,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1019,'部门修改','system:dept:update',3,3,103,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1020,'部门删除','system:dept:delete',3,4,103,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1021,'岗位查询','system:post:query',3,1,104,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1022,'岗位新增','system:post:create',3,2,104,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1023,'岗位修改','system:post:update',3,3,104,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1024,'岗位删除','system:post:delete',3,4,104,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1025,'岗位导出','system:post:export',3,5,104,'','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1026,'字典查询','system:dict:query',3,1,105,'#','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1027,'字典新增','system:dict:create',3,2,105,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1028,'字典修改','system:dict:update',3,3,105,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1029,'字典删除','system:dict:delete',3,4,105,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1030,'字典导出','system:dict:export',3,5,105,'#','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1031,'配置查询','infra:config:query',3,1,106,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1032,'配置新增','infra:config:create',3,2,106,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1033,'配置修改','infra:config:update',3,3,106,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1034,'配置删除','infra:config:delete',3,4,106,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1035,'配置导出','infra:config:export',3,5,106,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1036,'公告查询','system:notice:query',3,1,107,'#','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1037,'公告新增','system:notice:create',3,2,107,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1038,'公告修改','system:notice:update',3,3,107,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1039,'公告删除','system:notice:delete',3,4,107,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1040,'操作查询','system:operate-log:query',3,1,500,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1042,'日志导出','system:operate-log:export',3,2,500,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1043,'登录查询','system:login-log:query',3,1,501,'#','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1045,'日志导出','system:login-log:export',3,3,501,'#','#','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1046,'令牌列表','system:oauth2-token:page',3,1,109,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-05-09 23:54:42',_binary '\0'),(1048,'令牌删除','system:oauth2-token:delete',3,2,109,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-05-09 23:54:53',_binary '\0'),(1050,'任务新增','infra:job:create',3,2,110,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1051,'任务修改','infra:job:update',3,3,110,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1052,'任务删除','infra:job:delete',3,4,110,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1053,'状态修改','infra:job:update',3,5,110,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1054,'任务导出','infra:job:export',3,7,110,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','','2022-04-20 17:03:10',_binary '\0'),(1056,'生成修改','infra:codegen:update',3,2,115,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1057,'生成删除','infra:codegen:delete',3,3,115,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1058,'导入代码','infra:codegen:create',3,2,115,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1059,'预览代码','infra:codegen:preview',3,4,115,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1060,'生成代码','infra:codegen:download',3,5,115,'','','',NULL,0,_binary '',_binary '',_binary '','admin','2021-01-05 17:03:48','1','2022-04-20 17:03:10',_binary '\0'),(1063,'设置角色菜单权限','system:permission:assign-role-menu',3,6,101,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-01-06 17:53:44','','2022-04-20 17:03:10',_binary '\0'),(1064,'设置角色数据权限','system:permission:assign-role-data-scope',3,7,101,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-01-06 17:56:31','','2022-04-20 17:03:10',_binary '\0'),(1065,'设置用户角色','system:permission:assign-user-role',3,8,101,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-01-07 10:23:28','','2022-04-20 17:03:10',_binary '\0'),(1066,'获得 Redis 监控信息','infra:redis:get-monitor-info',3,1,113,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-01-26 01:02:31','','2022-04-20 17:03:10',_binary '\0'),(1067,'获得 Redis Key 列表','infra:redis:get-key-list',3,2,113,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-01-26 01:02:52','','2022-04-20 17:03:10',_binary '\0'),(1070,'代码生成案例','',1,1,2,'demo','ep:aim','infra/testDemo/index',NULL,0,_binary '',_binary '',_binary '','','2021-02-06 12:42:49','1','2023-11-15 23:45:53',_binary '\0'),(1075,'任务触发','infra:job:trigger',3,8,110,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-02-07 13:03:10','','2022-04-20 17:03:10',_binary '\0'),(1077,'链路追踪','',2,4,2740,'skywalking','fa:eye','infra/skywalking/index','InfraSkyWalking',0,_binary '',_binary '',_binary '','','2021-02-08 20:41:31','1','2024-04-23 00:07:15',_binary '\0'),(1078,'访问日志','',2,1,1083,'api-access-log','ep:place','infra/apiAccessLog/index','InfraApiAccessLog',0,_binary '',_binary '',_binary '','','2021-02-26 01:32:59','1','2024-02-29 08:54:57',_binary '\0'),(1082,'日志导出','infra:api-access-log:export',3,2,1078,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-02-26 01:32:59','1','2022-04-20 17:03:10',_binary '\0'),(1083,'API 日志','',2,4,2,'log','fa:tasks',NULL,NULL,0,_binary '',_binary '',_binary '','','2021-02-26 02:18:24','1','2024-04-22 23:58:36',_binary '\0'),(1084,'错误日志','infra:api-error-log:query',2,2,1083,'api-error-log','ep:warning-filled','infra/apiErrorLog/index','InfraApiErrorLog',0,_binary '',_binary '',_binary '','','2021-02-26 07:53:20','1','2024-02-29 08:55:17',_binary '\0'),(1085,'日志处理','infra:api-error-log:update-status',3,2,1084,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-02-26 07:53:20','1','2022-04-20 17:03:10',_binary '\0'),(1086,'日志导出','infra:api-error-log:export',3,3,1084,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-02-26 07:53:20','1','2022-04-20 17:03:10',_binary '\0'),(1087,'任务查询','infra:job:query',3,1,110,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-03-10 01:26:19','1','2022-04-20 17:03:10',_binary '\0'),(1088,'日志查询','infra:api-access-log:query',3,1,1078,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-03-10 01:28:04','1','2022-04-20 17:03:10',_binary '\0'),(1089,'日志查询','infra:api-error-log:query',3,1,1084,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-03-10 01:29:09','1','2022-04-20 17:03:10',_binary '\0'),(1090,'文件列表','',2,5,1243,'file','ep:upload-filled','infra/file/index','InfraFile',0,_binary '',_binary '',_binary '','','2021-03-12 20:16:20','1','2024-02-29 08:53:02',_binary '\0'),(1091,'文件查询','infra:file:query',3,1,1090,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-03-12 20:16:20','','2022-04-20 17:03:10',_binary '\0'),(1092,'文件删除','infra:file:delete',3,4,1090,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-03-12 20:16:20','','2022-04-20 17:03:10',_binary '\0'),(1093,'短信管理','',1,1,2739,'sms','ep:message',NULL,NULL,0,_binary '',_binary '',_binary '','1','2021-04-05 01:10:16','1','2024-04-22 23:56:03',_binary '\0'),(1094,'短信渠道','',2,0,1093,'sms-channel','fa:stack-exchange','system/sms/channel/index','SystemSmsChannel',0,_binary '',_binary '',_binary '','','2021-04-01 11:07:15','1','2024-02-29 01:15:54',_binary '\0'),(1095,'短信渠道查询','system:sms-channel:query',3,1,1094,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 11:07:15','','2022-04-20 17:03:10',_binary '\0'),(1096,'短信渠道创建','system:sms-channel:create',3,2,1094,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 11:07:15','','2022-04-20 17:03:10',_binary '\0'),(1097,'短信渠道更新','system:sms-channel:update',3,3,1094,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 11:07:15','','2022-04-20 17:03:10',_binary '\0'),(1098,'短信渠道删除','system:sms-channel:delete',3,4,1094,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 11:07:15','','2022-04-20 17:03:10',_binary '\0'),(1100,'短信模板','',2,1,1093,'sms-template','ep:connection','system/sms/template/index','SystemSmsTemplate',0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','1','2024-02-29 01:16:18',_binary '\0'),(1101,'短信模板查询','system:sms-template:query',3,1,1100,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','','2022-04-20 17:03:10',_binary '\0'),(1102,'短信模板创建','system:sms-template:create',3,2,1100,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','','2022-04-20 17:03:10',_binary '\0'),(1103,'短信模板更新','system:sms-template:update',3,3,1100,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','','2022-04-20 17:03:10',_binary '\0'),(1104,'短信模板删除','system:sms-template:delete',3,4,1100,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','','2022-04-20 17:03:10',_binary '\0'),(1105,'短信模板导出','system:sms-template:export',3,5,1100,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-01 17:35:17','','2022-04-20 17:03:10',_binary '\0'),(1106,'发送测试短信','system:sms-template:send-sms',3,6,1100,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-04-11 00:26:40','1','2022-04-20 17:03:10',_binary '\0'),(1107,'短信日志','',2,2,1093,'sms-log','fa:edit','system/sms/log/index','SystemSmsLog',0,_binary '',_binary '',_binary '','','2021-04-11 08:37:05','1','2024-02-29 08:49:02',_binary '\0'),(1108,'短信日志查询','system:sms-log:query',3,1,1107,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-11 08:37:05','','2022-04-20 17:03:10',_binary '\0'),(1109,'短信日志导出','system:sms-log:export',3,5,1107,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-04-11 08:37:05','','2022-04-20 17:03:10',_binary '\0'),(1117,'支付管理','',1,30,0,'/pay','ep:money',NULL,NULL,0,_binary '',_binary '',_binary '','1','2021-12-25 16:43:41','1','2024-02-29 08:58:38',_binary '\0'),(1118,'请假查询','',2,0,5,'leave','fa:leanpub','bpm/oa/leave/index','BpmOALeave',0,_binary '',_binary '',_binary '','','2021-09-20 08:51:03','1','2024-02-29 12:38:21',_binary '\0'),(1119,'请假申请查询','bpm:oa-leave:query',3,1,1118,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-09-20 08:51:03','1','2022-04-20 17:03:10',_binary '\0'),(1120,'请假申请创建','bpm:oa-leave:create',3,2,1118,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-09-20 08:51:03','1','2022-04-20 17:03:10',_binary '\0'),(1126,'应用信息','',2,1,1117,'app','fa:apple','pay/app/index','PayApp',0,_binary '',_binary '',_binary '','','2021-11-10 01:13:30','1','2024-02-29 08:59:55',_binary '\0'),(1127,'支付应用信息查询','pay:app:query',3,1,1126,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:31','','2022-04-20 17:03:10',_binary '\0'),(1128,'支付应用信息创建','pay:app:create',3,2,1126,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:31','','2022-04-20 17:03:10',_binary '\0'),(1129,'支付应用信息更新','pay:app:update',3,3,1126,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:31','','2022-04-20 17:03:10',_binary '\0'),(1130,'支付应用信息删除','pay:app:delete',3,4,1126,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:31','','2022-04-20 17:03:10',_binary '\0'),(1132,'秘钥解析','pay:channel:parsing',3,6,1129,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-11-08 15:15:47','1','2022-04-20 17:03:10',_binary '\0'),(1133,'支付商户信息查询','pay:merchant:query',3,1,1132,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:41','','2022-04-20 17:03:10',_binary '\0'),(1134,'支付商户信息创建','pay:merchant:create',3,2,1132,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:41','','2022-04-20 17:03:10',_binary '\0'),(1135,'支付商户信息更新','pay:merchant:update',3,3,1132,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:41','','2022-04-20 17:03:10',_binary '\0'),(1136,'支付商户信息删除','pay:merchant:delete',3,4,1132,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:41','','2022-04-20 17:03:10',_binary '\0'),(1137,'支付商户信息导出','pay:merchant:export',3,5,1132,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-11-10 01:13:41','','2022-04-20 17:03:10',_binary '\0'),(1138,'租户列表','',2,0,1224,'list','ep:house','system/tenant/index','SystemTenant',0,_binary '',_binary '',_binary '','','2021-12-14 12:31:43','1','2024-02-29 01:01:10',_binary '\0'),(1139,'租户查询','system:tenant:query',3,1,1138,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-14 12:31:44','','2022-04-20 17:03:10',_binary '\0'),(1140,'租户创建','system:tenant:create',3,2,1138,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-14 12:31:44','','2022-04-20 17:03:10',_binary '\0'),(1141,'租户更新','system:tenant:update',3,3,1138,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-14 12:31:44','','2022-04-20 17:03:10',_binary '\0'),(1142,'租户删除','system:tenant:delete',3,4,1138,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-14 12:31:44','','2022-04-20 17:03:10',_binary '\0'),(1143,'租户导出','system:tenant:export',3,5,1138,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-14 12:31:44','','2022-04-20 17:03:10',_binary '\0'),(1150,'秘钥解析','',3,6,1129,'','','',NULL,0,_binary '',_binary '',_binary '','1','2021-11-08 15:15:47','1','2022-04-20 17:03:10',_binary '\0'),(1161,'退款订单','',2,3,1117,'refund','fa:registered','pay/refund/index','PayRefund',0,_binary '',_binary '',_binary '','','2021-12-25 08:29:07','1','2024-02-29 08:59:20',_binary '\0'),(1162,'退款订单查询','pay:refund:query',3,1,1161,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-25 08:29:07','','2022-04-20 17:03:10',_binary '\0'),(1166,'退款订单导出','pay:refund:export',3,5,1161,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-25 08:29:07','','2022-04-20 17:03:10',_binary '\0'),(1173,'支付订单','',2,2,1117,'order','fa:cc-paypal','pay/order/index','PayOrder',0,_binary '',_binary '',_binary '','','2021-12-25 08:49:43','1','2024-02-29 08:59:43',_binary '\0'),(1174,'支付订单查询','pay:order:query',3,1,1173,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-25 08:49:43','','2022-04-20 17:03:10',_binary '\0'),(1178,'支付订单导出','pay:order:export',3,5,1173,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-25 08:49:43','','2022-04-20 17:03:10',_binary '\0'),(1185,'工作流程','',1,50,0,'/bpm','fa:medium',NULL,NULL,0,_binary '',_binary '',_binary '','1','2021-12-30 20:26:36','1','2024-02-29 12:43:43',_binary '\0'),(1186,'流程管理','',1,10,1185,'manager','fa:dedent',NULL,NULL,0,_binary '',_binary '',_binary '','1','2021-12-30 20:28:30','1','2024-02-29 12:36:02',_binary '\0'),(1187,'流程表单','',2,2,1186,'form','fa:hdd-o','bpm/form/index','BpmForm',0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2024-03-19 12:25:25',_binary '\0'),(1188,'表单查询','bpm:form:query',3,1,1187,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2022-04-20 17:03:10',_binary '\0'),(1189,'表单创建','bpm:form:create',3,2,1187,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2022-04-20 17:03:10',_binary '\0'),(1190,'表单更新','bpm:form:update',3,3,1187,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2022-04-20 17:03:10',_binary '\0'),(1191,'表单删除','bpm:form:delete',3,4,1187,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2022-04-20 17:03:10',_binary '\0'),(1192,'表单导出','bpm:form:export',3,5,1187,'','','',NULL,0,_binary '',_binary '',_binary '','','2021-12-30 12:38:22','1','2022-04-20 17:03:10',_binary '\0'),(1193,'流程模型','',2,1,1186,'model','fa-solid:project-diagram','bpm/model/index','BpmModel',0,_binary '',_binary '',_binary '','1','2021-12-31 23:24:58','1','2024-03-19 12:25:19',_binary '\0'),(1194,'模型查询','bpm:model:query',3,1,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-03 19:01:10','1','2022-04-20 17:03:10',_binary '\0'),(1195,'模型创建','bpm:model:create',3,2,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-03 19:01:24','1','2022-04-20 17:03:10',_binary '\0'),(1197,'模型更新','bpm:model:update',3,4,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-03 19:02:28','1','2022-04-20 17:03:10',_binary '\0'),(1198,'模型删除','bpm:model:delete',3,5,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-03 19:02:43','1','2022-04-20 17:03:10',_binary '\0'),(1199,'模型发布','bpm:model:deploy',3,6,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-03 19:03:24','1','2022-04-20 17:03:10',_binary '\0'),(1200,'审批中心','',2,20,1185,'task','fa:tasks',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-01-07 23:51:48','1','2024-03-21 00:33:15',_binary '\0'),(1201,'我的流程','',2,1,1200,'my','fa-solid:book','bpm/processInstance/index','BpmProcessInstanceMy',0,_binary '',_binary '',_binary '','','2022-01-07 15:53:44','1','2024-03-21 23:52:12',_binary '\0'),(1202,'流程实例的查询','bpm:process-instance:query',3,1,1201,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-01-07 15:53:44','1','2022-04-20 17:03:10',_binary '\0'),(1207,'待办任务','',2,10,1200,'todo','fa:slack','bpm/task/todo/index','BpmTodoTask',0,_binary '',_binary '',_binary '','1','2022-01-08 10:33:37','1','2024-02-29 12:37:39',_binary '\0'),(1208,'已办任务','',2,20,1200,'done','fa:delicious','bpm/task/done/index','BpmDoneTask',0,_binary '',_binary '',_binary '','1','2022-01-08 10:34:13','1','2024-02-29 12:37:54',_binary '\0'),(1209,'用户分组','',2,4,1186,'user-group','fa:user-secret','bpm/group/index','BpmUserGroup',0,_binary '',_binary '',_binary '','','2022-01-14 02:14:20','1','2024-03-21 23:55:29',_binary '\0'),(1210,'用户组查询','bpm:user-group:query',3,1,1209,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-01-14 02:14:20','','2022-04-20 17:03:10',_binary '\0'),(1211,'用户组创建','bpm:user-group:create',3,2,1209,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-01-14 02:14:20','','2022-04-20 17:03:10',_binary '\0'),(1212,'用户组更新','bpm:user-group:update',3,3,1209,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-01-14 02:14:20','','2022-04-20 17:03:10',_binary '\0'),(1213,'用户组删除','bpm:user-group:delete',3,4,1209,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-01-14 02:14:20','','2022-04-20 17:03:10',_binary '\0'),(1215,'流程定义查询','bpm:process-definition:query',3,10,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:21:43','1','2022-04-20 17:03:10',_binary '\0'),(1216,'流程任务分配规则查询','bpm:task-assign-rule:query',3,20,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:26:53','1','2022-04-20 17:03:10',_binary '\0'),(1217,'流程任务分配规则创建','bpm:task-assign-rule:create',3,21,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:28:15','1','2022-04-20 17:03:10',_binary '\0'),(1218,'流程任务分配规则更新','bpm:task-assign-rule:update',3,22,1193,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:28:41','1','2022-04-20 17:03:10',_binary '\0'),(1219,'流程实例的创建','bpm:process-instance:create',3,2,1201,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:36:15','1','2022-04-20 17:03:10',_binary '\0'),(1220,'流程实例的取消','bpm:process-instance:cancel',3,3,1201,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:36:33','1','2022-04-20 17:03:10',_binary '\0'),(1221,'流程任务的查询','bpm:task:query',3,1,1207,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:38:52','1','2022-04-20 17:03:10',_binary '\0'),(1222,'流程任务的更新','bpm:task:update',3,2,1207,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-01-23 00:39:24','1','2022-04-20 17:03:10',_binary '\0'),(1224,'租户管理','',2,0,1,'tenant','fa-solid:house-user',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-02-20 01:41:13','1','2024-02-29 00:59:29',_binary '\0'),(1225,'租户套餐','',2,0,1224,'package','fa:bars','system/tenantPackage/index','SystemTenantPackage',0,_binary '',_binary '',_binary '','','2022-02-19 17:44:06','1','2024-02-29 01:01:43',_binary '\0'),(1226,'租户套餐查询','system:tenant-package:query',3,1,1225,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-02-19 17:44:06','','2022-04-20 17:03:10',_binary '\0'),(1227,'租户套餐创建','system:tenant-package:create',3,2,1225,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-02-19 17:44:06','','2022-04-20 17:03:10',_binary '\0'),(1228,'租户套餐更新','system:tenant-package:update',3,3,1225,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-02-19 17:44:06','','2022-04-20 17:03:10',_binary '\0'),(1229,'租户套餐删除','system:tenant-package:delete',3,4,1225,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-02-19 17:44:06','','2022-04-20 17:03:10',_binary '\0'),(1237,'文件配置','',2,0,1243,'file-config','fa-solid:file-signature','infra/fileConfig/index','InfraFileConfig',0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','1','2024-02-29 08:52:54',_binary '\0'),(1238,'文件配置查询','infra:file-config:query',3,1,1237,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','','2022-04-20 17:03:10',_binary '\0'),(1239,'文件配置创建','infra:file-config:create',3,2,1237,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','','2022-04-20 17:03:10',_binary '\0'),(1240,'文件配置更新','infra:file-config:update',3,3,1237,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','','2022-04-20 17:03:10',_binary '\0'),(1241,'文件配置删除','infra:file-config:delete',3,4,1237,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','','2022-04-20 17:03:10',_binary '\0'),(1242,'文件配置导出','infra:file-config:export',3,5,1237,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-03-15 14:35:28','','2022-04-20 17:03:10',_binary '\0'),(1243,'文件管理','',2,6,2,'file','ep:files',NULL,'',0,_binary '',_binary '',_binary '','1','2022-03-16 23:47:40','1','2024-04-23 00:02:11',_binary '\0'),(1254,'作者动态','',1,0,0,'https://www.iocoder.cn','ep:avatar',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-04-23 01:03:15','1','2025-04-29 17:45:38',_binary '\0'),(1255,'数据源配置','',2,1,2,'data-source-config','ep:data-analysis','infra/dataSourceConfig/index','InfraDataSourceConfig',0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','1','2024-02-29 08:51:25',_binary '\0'),(1256,'数据源配置查询','infra:data-source-config:query',3,1,1255,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','','2022-04-27 14:37:32',_binary '\0'),(1257,'数据源配置创建','infra:data-source-config:create',3,2,1255,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','','2022-04-27 14:37:32',_binary '\0'),(1258,'数据源配置更新','infra:data-source-config:update',3,3,1255,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','','2022-04-27 14:37:32',_binary '\0'),(1259,'数据源配置删除','infra:data-source-config:delete',3,4,1255,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','','2022-04-27 14:37:32',_binary '\0'),(1260,'数据源配置导出','infra:data-source-config:export',3,5,1255,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-04-27 14:37:32','','2022-04-27 14:37:32',_binary '\0'),(1261,'OAuth 2.0','',2,10,1,'oauth2','fa:dashcube',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-05-09 23:38:17','1','2024-02-29 01:12:08',_binary '\0'),(1263,'应用管理','',2,0,1261,'oauth2/application','fa:hdd-o','system/oauth2/client/index','SystemOAuth2Client',0,_binary '',_binary '',_binary '','','2022-05-10 16:26:33','1','2024-02-29 01:13:14',_binary '\0'),(1264,'客户端查询','system:oauth2-client:query',3,1,1263,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-05-10 16:26:33','1','2022-05-11 00:31:06',_binary '\0'),(1265,'客户端创建','system:oauth2-client:create',3,2,1263,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-05-10 16:26:33','1','2022-05-11 00:31:23',_binary '\0'),(1266,'客户端更新','system:oauth2-client:update',3,3,1263,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-05-10 16:26:33','1','2022-05-11 00:31:28',_binary '\0'),(1267,'客户端删除','system:oauth2-client:delete',3,4,1263,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-05-10 16:26:33','1','2022-05-11 00:31:33',_binary '\0'),(1281,'报表管理','',2,40,0,'/report','ep:pie-chart',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-07-10 20:22:15','1','2024-02-29 12:33:03',_binary '\0'),(1282,'报表设计器','',2,1,1281,'jimu-report','ep:trend-charts','report/jmreport/index','JimuReport',0,_binary '',_binary '',_binary '','1','2022-07-10 20:26:36','1','2025-05-03 09:57:07',_binary '\0'),(2000,'商品中心','',1,60,2362,'product','fa:product-hunt',NULL,NULL,0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','1','2023-09-30 11:52:36',_binary '\0'),(2002,'商品分类','',2,2,2000,'category','ep:cellphone','mall/product/category/index','ProductCategory',0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','1','2023-08-21 10:27:15',_binary '\0'),(2003,'分类查询','product:category:query',3,1,2002,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','','2022-07-29 15:53:53',_binary '\0'),(2004,'分类创建','product:category:create',3,2,2002,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','','2022-07-29 15:53:53',_binary '\0'),(2005,'分类更新','product:category:update',3,3,2002,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','','2022-07-29 15:53:53',_binary '\0'),(2006,'分类删除','product:category:delete',3,4,2002,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-29 15:53:53','','2022-07-29 15:53:53',_binary '\0'),(2008,'商品品牌','',2,3,2000,'brand','ep:chicken','mall/product/brand/index','ProductBrand',0,_binary '',_binary '',_binary '','','2022-07-30 13:52:44','1','2023-08-21 10:27:28',_binary '\0'),(2009,'品牌查询','product:brand:query',3,1,2008,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 13:52:44','','2022-07-30 13:52:44',_binary '\0'),(2010,'品牌创建','product:brand:create',3,2,2008,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 13:52:44','','2022-07-30 13:52:44',_binary '\0'),(2011,'品牌更新','product:brand:update',3,3,2008,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 13:52:44','','2022-07-30 13:52:44',_binary '\0'),(2012,'品牌删除','product:brand:delete',3,4,2008,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 13:52:44','','2022-07-30 13:52:44',_binary '\0'),(2014,'商品列表','',2,1,2000,'spu','ep:apple','mall/product/spu/index','ProductSpu',0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','1','2025-10-08 10:36:52',_binary '\0'),(2015,'商品查询','product:spu:query',3,1,2014,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','','2022-07-30 14:22:58',_binary '\0'),(2016,'商品创建','product:spu:create',3,2,2014,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','','2022-07-30 14:22:58',_binary '\0'),(2017,'商品更新','product:spu:update',3,3,2014,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','','2022-07-30 14:22:58',_binary '\0'),(2018,'商品删除','product:spu:delete',3,4,2014,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','','2022-07-30 14:22:58',_binary '\0'),(2019,'商品属性','',2,4,2000,'property','ep:cold-drink','mall/product/property/index','ProductProperty',0,_binary '',_binary '',_binary '','','2022-08-01 14:55:35','1','2023-08-26 11:01:05',_binary '\0'),(2020,'规格查询','product:property:query',3,1,2019,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-08-01 14:55:35','','2022-12-12 20:26:24',_binary '\0'),(2021,'规格创建','product:property:create',3,2,2019,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-08-01 14:55:35','','2022-12-12 20:26:30',_binary '\0'),(2022,'规格更新','product:property:update',3,3,2019,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-08-01 14:55:35','','2022-12-12 20:26:33',_binary '\0'),(2023,'规格删除','product:property:delete',3,4,2019,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-08-01 14:55:35','','2022-12-12 20:26:37',_binary '\0'),(2025,'Banner','',2,100,2387,'banner','fa:bandcamp','mall/promotion/banner/index',NULL,0,_binary '',_binary '',_binary '','','2022-08-01 14:56:14','1','2023-10-24 20:20:06',_binary '\0'),(2026,'Banner查询','promotion:banner:query',3,1,2025,'','','','',0,_binary '',_binary '',_binary '','','2022-08-01 14:56:14','1','2023-10-24 20:20:18',_binary '\0'),(2027,'Banner创建','promotion:banner:create',3,2,2025,'','','','',0,_binary '',_binary '',_binary '','','2022-08-01 14:56:14','1','2023-10-24 20:20:23',_binary '\0'),(2028,'Banner更新','promotion:banner:update',3,3,2025,'','','','',0,_binary '',_binary '',_binary '','','2022-08-01 14:56:14','1','2023-10-24 20:20:28',_binary '\0'),(2029,'Banner删除','promotion:banner:delete',3,4,2025,'','','','',0,_binary '',_binary '',_binary '','','2022-08-01 14:56:14','1','2023-10-24 20:20:36',_binary '\0'),(2030,'营销中心','',1,70,2362,'promotion','ep:present',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-10-31 21:25:09','1','2023-09-30 11:54:27',_binary '\0'),(2032,'优惠劵列表','',2,1,2365,'template','ep:discount','mall/promotion/coupon/template/index','PromotionCouponTemplate',0,_binary '',_binary '',_binary '','','2022-10-31 22:27:14','1','2023-10-03 12:40:06',_binary '\0'),(2033,'优惠劵模板查询','promotion:coupon-template:query',3,1,2032,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-10-31 22:27:14','','2022-10-31 22:27:14',_binary '\0'),(2034,'优惠劵模板创建','promotion:coupon-template:create',3,2,2032,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-10-31 22:27:14','','2022-10-31 22:27:14',_binary '\0'),(2035,'优惠劵模板更新','promotion:coupon-template:update',3,3,2032,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-10-31 22:27:14','','2022-10-31 22:27:14',_binary '\0'),(2036,'优惠劵模板删除','promotion:coupon-template:delete',3,4,2032,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-10-31 22:27:14','','2022-10-31 22:27:14',_binary '\0'),(2038,'领取记录','',2,2,2365,'list','ep:collection-tag','mall/promotion/coupon/index','PromotionCoupon',0,_binary '',_binary '',_binary '','','2022-11-03 23:21:31','1','2023-10-03 12:55:30',_binary '\0'),(2039,'优惠劵查询','promotion:coupon:query',3,1,2038,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-03 23:21:31','','2022-11-03 23:21:31',_binary '\0'),(2040,'优惠劵删除','promotion:coupon:delete',3,4,2038,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-03 23:21:31','','2022-11-03 23:21:31',_binary '\0'),(2041,'满减送','',2,10,2390,'reward-activity','ep:goblet-square-full','mall/promotion/rewardActivity/index','PromotionRewardActivity',0,_binary '',_binary '',_binary '','','2022-11-04 23:47:49','1','2023-10-21 19:24:46',_binary '\0'),(2042,'满减送活动查询','promotion:reward-activity:query',3,1,2041,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-04 23:47:49','','2022-11-04 23:47:49',_binary '\0'),(2043,'满减送活动创建','promotion:reward-activity:create',3,2,2041,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-04 23:47:49','','2022-11-04 23:47:49',_binary '\0'),(2044,'满减送活动更新','promotion:reward-activity:update',3,3,2041,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-04 23:47:50','','2022-11-04 23:47:50',_binary '\0'),(2045,'满减送活动删除','promotion:reward-activity:delete',3,4,2041,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-04 23:47:50','','2022-11-04 23:47:50',_binary '\0'),(2046,'满减送活动关闭','promotion:reward-activity:close',3,5,2041,'','','',NULL,0,_binary '',_binary '',_binary '','1','2022-11-05 10:42:53','1','2022-11-05 10:42:53',_binary '\0'),(2047,'限时折扣','',2,7,2390,'discount-activity','ep:timer','mall/promotion/discountActivity/index','PromotionDiscountActivity',0,_binary '',_binary '',_binary '','','2022-11-05 17:12:15','1','2023-10-21 19:24:21',_binary '\0'),(2048,'限时折扣活动查询','promotion:discount-activity:query',3,1,2047,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-05 17:12:15','','2022-11-05 17:12:15',_binary '\0'),(2049,'限时折扣活动创建','promotion:discount-activity:create',3,2,2047,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-05 17:12:15','','2022-11-05 17:12:15',_binary '\0'),(2050,'限时折扣活动更新','promotion:discount-activity:update',3,3,2047,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-05 17:12:16','','2022-11-05 17:12:16',_binary '\0'),(2051,'限时折扣活动删除','promotion:discount-activity:delete',3,4,2047,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-05 17:12:16','','2022-11-05 17:12:16',_binary '\0'),(2052,'限时折扣活动关闭','promotion:discount-activity:close',3,5,2047,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-05 17:12:16','','2022-11-05 17:12:16',_binary '\0'),(2059,'秒杀商品','',2,2,2209,'activity','ep:basketball','mall/promotion/seckill/activity/index','PromotionSeckillActivity',0,_binary '',_binary '',_binary '','','2022-11-06 22:24:49','1','2023-06-24 18:57:25',_binary '\0'),(2060,'秒杀活动查询','promotion:seckill-activity:query',3,1,2059,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-06 22:24:49','','2022-11-06 22:24:49',_binary '\0'),(2061,'秒杀活动创建','promotion:seckill-activity:create',3,2,2059,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-06 22:24:49','','2022-11-06 22:24:49',_binary '\0'),(2062,'秒杀活动更新','promotion:seckill-activity:update',3,3,2059,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-06 22:24:49','','2022-11-06 22:24:49',_binary '\0'),(2063,'秒杀活动删除','promotion:seckill-activity:delete',3,4,2059,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-06 22:24:49','','2022-11-06 22:24:49',_binary '\0'),(2066,'秒杀时段','',2,1,2209,'config','ep:baseball','mall/promotion/seckill/config/index','PromotionSeckillConfig',0,_binary '',_binary '',_binary '','','2022-11-15 19:46:50','1','2023-06-24 18:57:14',_binary '\0'),(2067,'秒杀时段查询','promotion:seckill-config:query',3,1,2066,'','','','',0,_binary '',_binary '',_binary '','','2022-11-15 19:46:51','1','2023-06-24 17:50:25',_binary '\0'),(2068,'秒杀时段创建','promotion:seckill-config:create',3,2,2066,'','','','',0,_binary '',_binary '',_binary '','','2022-11-15 19:46:51','1','2023-06-24 17:48:39',_binary '\0'),(2069,'秒杀时段更新','promotion:seckill-config:update',3,3,2066,'','','','',0,_binary '',_binary '',_binary '','','2022-11-15 19:46:51','1','2023-06-24 17:50:29',_binary '\0'),(2070,'秒杀时段删除','promotion:seckill-config:delete',3,4,2066,'','','','',0,_binary '',_binary '',_binary '','','2022-11-15 19:46:51','1','2023-06-24 17:50:32',_binary '\0'),(2072,'订单中心','',1,65,2362,'trade','ep:eleme',NULL,NULL,0,_binary '',_binary '',_binary '','1','2022-11-19 18:57:19','1','2023-09-30 11:54:07',_binary '\0'),(2073,'售后退款','',2,2,2072,'after-sale','ep:refrigerator','mall/trade/afterSale/index','TradeAfterSale',0,_binary '',_binary '',_binary '','','2022-11-19 20:15:32','1','2023-10-01 21:42:21',_binary '\0'),(2074,'售后查询','trade:after-sale:query',3,1,2073,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-11-19 20:15:33','1','2022-12-10 21:04:29',_binary '\0'),(2075,'秒杀活动关闭','promotion:seckill-activity:close',3,5,2059,'','','','',0,_binary '',_binary '',_binary '','1','2022-11-28 20:20:15','1','2023-10-03 18:34:28',_binary '\0'),(2076,'订单列表','',2,1,2072,'order','ep:list','mall/trade/order/index','TradeOrder',0,_binary '',_binary '',_binary '','1','2022-12-10 21:05:44','1','2023-10-01 21:42:08',_binary '\0'),(2083,'地区管理','',2,14,1,'area','fa:map-marker','system/area/index','SystemArea',0,_binary '',_binary '',_binary '','1','2022-12-23 17:35:05','1','2024-02-29 08:50:28',_binary '\0'),(2084,'公众号管理','',1,100,0,'/mp','ep:compass',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-01-01 20:11:04','1','2024-02-29 12:39:30',_binary '\0'),(2085,'账号管理','',2,1,2084,'account','fa:user','mp/account/index','MpAccount',0,_binary '',_binary '',_binary '','1','2023-01-01 20:13:31','1','2024-02-29 12:42:10',_binary '\0'),(2086,'新增账号','mp:account:create',3,1,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-01 20:21:40','1','2023-01-07 17:32:53',_binary '\0'),(2087,'修改账号','mp:account:update',3,2,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-07 17:32:46','1','2023-01-07 17:32:46',_binary '\0'),(2088,'查询账号','mp:account:query',3,0,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-07 17:33:07','1','2023-01-07 17:33:07',_binary '\0'),(2089,'删除账号','mp:account:delete',3,3,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-07 17:33:21','1','2023-01-07 17:33:21',_binary '\0'),(2090,'生成二维码','mp:account:qr-code',3,4,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-07 17:33:58','1','2023-01-07 17:33:58',_binary '\0'),(2091,'清空 API 配额','mp:account:clear-quota',3,5,2085,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-07 18:20:32','1','2023-01-07 18:20:59',_binary '\0'),(2092,'数据统计','mp:statistics:query',2,2,2084,'statistics','ep:trend-charts','mp/statistics/index','MpStatistics',0,_binary '',_binary '',_binary '','1','2023-01-07 20:17:36','1','2024-02-29 12:42:21',_binary '\0'),(2093,'标签管理','',2,3,2084,'tag','ep:collection-tag','mp/tag/index','MpTag',0,_binary '',_binary '',_binary '','1','2023-01-08 11:37:32','1','2024-02-29 12:42:29',_binary '\0'),(2094,'查询标签','mp:tag:query',3,0,2093,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 11:59:03','1','2023-01-08 11:59:03',_binary '\0'),(2095,'新增标签','mp:tag:create',3,1,2093,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 11:59:23','1','2023-01-08 11:59:23',_binary '\0'),(2096,'修改标签','mp:tag:update',3,2,2093,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 11:59:41','1','2023-01-08 11:59:41',_binary '\0'),(2097,'删除标签','mp:tag:delete',3,3,2093,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 12:00:04','1','2023-01-08 12:00:13',_binary '\0'),(2098,'同步标签','mp:tag:sync',3,4,2093,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 12:00:29','1','2023-01-08 12:00:29',_binary '\0'),(2099,'粉丝管理','',2,4,2084,'user','fa:user-secret','mp/user/index','MpUser',0,_binary '',_binary '',_binary '','1','2023-01-08 16:51:20','1','2024-02-29 12:42:39',_binary '\0'),(2100,'查询粉丝','mp:user:query',3,0,2099,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 17:16:59','1','2023-01-08 17:17:23',_binary '\0'),(2101,'修改粉丝','mp:user:update',3,1,2099,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 17:17:11','1','2023-01-08 17:17:11',_binary '\0'),(2102,'同步粉丝','mp:user:sync',3,2,2099,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-08 17:17:40','1','2023-01-08 17:17:40',_binary '\0'),(2103,'消息管理','',2,5,2084,'message','ep:message','mp/message/index','MpMessage',0,_binary '',_binary '',_binary '','1','2023-01-08 18:44:19','1','2024-02-29 12:42:50',_binary '\0'),(2104,'图文发表记录','',2,10,2084,'free-publish','ep:edit-pen','mp/freePublish/index','MpFreePublish',0,_binary '',_binary '',_binary '','1','2023-01-13 00:30:50','1','2024-02-29 12:43:31',_binary '\0'),(2105,'查询发布列表','mp:free-publish:query',3,1,2104,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-13 07:19:17','1','2023-01-13 07:19:17',_binary '\0'),(2106,'发布草稿','mp:free-publish:submit',3,2,2104,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-13 07:19:46','1','2023-01-13 07:19:46',_binary '\0'),(2107,'删除发布记录','mp:free-publish:delete',3,3,2104,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-13 07:20:01','1','2023-01-13 07:20:01',_binary '\0'),(2108,'图文草稿箱','',2,9,2084,'draft','ep:edit','mp/draft/index','MpDraft',0,_binary '',_binary '',_binary '','1','2023-01-13 07:40:21','1','2024-02-29 12:43:26',_binary '\0'),(2109,'新建草稿','mp:draft:create',3,1,2108,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-13 23:15:30','1','2023-01-13 23:15:44',_binary '\0'),(2110,'修改草稿','mp:draft:update',3,2,2108,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 10:08:47','1','2023-01-14 10:08:47',_binary '\0'),(2111,'查询草稿','mp:draft:query',3,0,2108,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 10:09:01','1','2023-01-14 10:09:01',_binary '\0'),(2112,'删除草稿','mp:draft:delete',3,3,2108,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 10:09:19','1','2023-01-14 10:09:19',_binary '\0'),(2113,'素材管理','',2,8,2084,'material','ep:basketball','mp/material/index','MpMaterial',0,_binary '',_binary '',_binary '','1','2023-01-14 14:12:07','1','2024-02-29 12:43:18',_binary '\0'),(2114,'上传临时素材','mp:material:upload-temporary',3,1,2113,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 15:33:55','1','2023-01-14 15:33:55',_binary '\0'),(2115,'上传永久素材','mp:material:upload-permanent',3,2,2113,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 15:34:14','1','2023-01-14 15:34:14',_binary '\0'),(2116,'删除素材','mp:material:delete',3,3,2113,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 15:35:37','1','2023-01-14 15:35:37',_binary '\0'),(2117,'上传图文图片','mp:material:upload-news-image',3,4,2113,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 15:36:31','1','2023-01-14 15:36:31',_binary '\0'),(2118,'查询素材','mp:material:query',3,5,2113,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-14 15:39:22','1','2023-01-14 15:39:22',_binary '\0'),(2119,'菜单管理','',2,6,2084,'menu','ep:menu','mp/menu/index','MpMenu',0,_binary '',_binary '',_binary '','1','2023-01-14 17:43:54','1','2025-04-01 20:21:02',_binary '\0'),(2120,'自动回复','',2,7,2084,'auto-reply','fa-solid:republican','mp/autoReply/index','MpAutoReply',0,_binary '',_binary '',_binary '','1','2023-01-15 22:13:09','1','2024-02-29 12:43:10',_binary '\0'),(2121,'查询回复','mp:auto-reply:query',3,0,2120,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-16 22:28:41','1','2023-01-16 22:28:41',_binary '\0'),(2122,'新增回复','mp:auto-reply:create',3,1,2120,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-16 22:28:54','1','2023-01-16 22:28:54',_binary '\0'),(2123,'修改回复','mp:auto-reply:update',3,2,2120,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-16 22:29:05','1','2023-01-16 22:29:05',_binary '\0'),(2124,'删除回复','mp:auto-reply:delete',3,3,2120,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-16 22:29:34','1','2023-01-16 22:29:34',_binary '\0'),(2125,'查询菜单','mp:menu:query',3,0,2119,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-17 23:05:41','1','2023-01-17 23:05:41',_binary '\0'),(2126,'保存菜单','mp:menu:save',3,1,2119,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-17 23:06:01','1','2023-01-17 23:06:01',_binary '\0'),(2127,'删除菜单','mp:menu:delete',3,2,2119,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-17 23:06:16','1','2023-01-17 23:06:16',_binary '\0'),(2128,'查询消息','mp:message:query',3,0,2103,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-17 23:07:14','1','2023-01-17 23:07:14',_binary '\0'),(2129,'发送消息','mp:message:send',3,1,2103,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-17 23:07:26','1','2023-01-17 23:07:26',_binary '\0'),(2130,'邮箱管理','',2,2,2739,'mail','fa-solid:mail-bulk',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-01-25 17:27:44','1','2024-04-22 23:56:08',_binary '\0'),(2131,'邮箱账号','',2,0,2130,'mail-account','fa:universal-access','system/mail/account/index','SystemMailAccount',0,_binary '',_binary '',_binary '','','2023-01-25 09:33:48','1','2024-02-29 08:48:16',_binary '\0'),(2132,'账号查询','system:mail-account:query',3,1,2131,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 09:33:48','','2023-01-25 09:33:48',_binary '\0'),(2133,'账号创建','system:mail-account:create',3,2,2131,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 09:33:48','','2023-01-25 09:33:48',_binary '\0'),(2134,'账号更新','system:mail-account:update',3,3,2131,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 09:33:48','','2023-01-25 09:33:48',_binary '\0'),(2135,'账号删除','system:mail-account:delete',3,4,2131,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 09:33:48','','2023-01-25 09:33:48',_binary '\0'),(2136,'邮件模版','',2,0,2130,'mail-template','fa:tag','system/mail/template/index','SystemMailTemplate',0,_binary '',_binary '',_binary '','','2023-01-25 12:05:31','1','2024-02-29 08:48:41',_binary '\0'),(2137,'模版查询','system:mail-template:query',3,1,2136,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 12:05:31','','2023-01-25 12:05:31',_binary '\0'),(2138,'模版创建','system:mail-template:create',3,2,2136,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 12:05:31','','2023-01-25 12:05:31',_binary '\0'),(2139,'模版更新','system:mail-template:update',3,3,2136,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 12:05:31','','2023-01-25 12:05:31',_binary '\0'),(2140,'模版删除','system:mail-template:delete',3,4,2136,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-25 12:05:31','','2023-01-25 12:05:31',_binary '\0'),(2141,'邮件记录','',2,0,2130,'mail-log','fa:edit','system/mail/log/index','SystemMailLog',0,_binary '',_binary '',_binary '','','2023-01-26 02:16:50','1','2024-02-29 08:48:51',_binary '\0'),(2142,'日志查询','system:mail-log:query',3,1,2141,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-26 02:16:50','','2023-01-26 02:16:50',_binary '\0'),(2143,'发送测试邮件','system:mail-template:send-mail',3,5,2136,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-26 23:29:15','1','2023-01-26 23:29:15',_binary '\0'),(2144,'站内信管理','',1,3,2739,'notify','ep:message-box',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-01-28 10:25:18','1','2024-04-22 23:56:12',_binary '\0'),(2145,'模板管理','',2,0,2144,'notify-template','fa:archive','system/notify/template/index','SystemNotifyTemplate',0,_binary '',_binary '',_binary '','','2023-01-28 02:26:42','1','2024-02-29 08:49:14',_binary '\0'),(2146,'站内信模板查询','system:notify-template:query',3,1,2145,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-28 02:26:42','','2023-01-28 02:26:42',_binary '\0'),(2147,'站内信模板创建','system:notify-template:create',3,2,2145,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-28 02:26:42','','2023-01-28 02:26:42',_binary '\0'),(2148,'站内信模板更新','system:notify-template:update',3,3,2145,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-28 02:26:42','','2023-01-28 02:26:42',_binary '\0'),(2149,'站内信模板删除','system:notify-template:delete',3,4,2145,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-28 02:26:42','','2023-01-28 02:26:42',_binary '\0'),(2150,'发送测试站内信','system:notify-template:send-notify',3,5,2145,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-01-28 10:54:43','1','2023-01-28 10:54:43',_binary '\0'),(2151,'消息记录','',2,0,2144,'notify-message','fa:edit','system/notify/message/index','SystemNotifyMessage',0,_binary '',_binary '',_binary '','','2023-01-28 04:28:22','1','2024-02-29 08:49:22',_binary '\0'),(2152,'站内信消息查询','system:notify-message:query',3,1,2151,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-01-28 04:28:22','','2023-01-28 04:28:22',_binary '\0'),(2153,'大屏设计器','',2,2,1281,'go-view','fa:area-chart','report/goview/index','GoView',0,_binary '',_binary '',_binary '','1','2023-02-07 00:03:19','1','2025-05-03 09:57:03',_binary '\0'),(2154,'创建项目','report:go-view-project:create',3,1,2153,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-02-07 19:25:14','1','2023-02-07 19:25:14',_binary '\0'),(2155,'更新项目','report:go-view-project:update',3,2,2153,'','','','',0,_binary '',_binary '',_binary '','1','2023-02-07 19:25:34','1','2024-04-24 20:01:18',_binary '\0'),(2156,'查询项目','report:go-view-project:query',3,0,2153,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-02-07 19:25:53','1','2023-02-07 19:25:53',_binary '\0'),(2157,'使用 SQL 查询数据','report:go-view-data:get-by-sql',3,3,2153,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-02-07 19:26:15','1','2023-02-07 19:26:15',_binary '\0'),(2158,'使用 HTTP 查询数据','report:go-view-data:get-by-http',3,4,2153,'','','',NULL,0,_binary '',_binary '',_binary '','1','2023-02-07 19:26:35','1','2023-02-07 19:26:35',_binary '\0'),(2159,'Boot 开发文档','',1,1,0,'https://doc.iocoder.cn/','ep:document',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-02-10 22:46:28','1','2024-07-28 11:36:48',_binary '\0'),(2160,'Cloud 开发文档','',1,2,0,'https://cloud.iocoder.cn','ep:document-copy',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-02-10 22:47:07','1','2023-12-02 21:32:29',_binary '\0'),(2161,'接入示例','',1,99,1117,'demo','fa-solid:dragon','pay/demo/index',NULL,0,_binary '',_binary '',_binary '','','2023-02-11 14:21:42','1','2024-01-18 23:50:00',_binary '\0'),(2162,'商品导出','product:spu:export',3,5,2014,'','','',NULL,0,_binary '',_binary '',_binary '','','2022-07-30 14:22:58','','2022-07-30 14:22:58',_binary '\0'),(2164,'配送管理','',1,3,2072,'delivery','ep:shopping-cart','','',0,_binary '',_binary '',_binary '','1','2023-05-18 09:18:02','1','2023-09-28 10:58:09',_binary '\0'),(2165,'快递发货','',1,0,2164,'express','ep:bicycle','','',0,_binary '',_binary '',_binary '','1','2023-05-18 09:22:06','1','2023-08-30 21:02:49',_binary '\0'),(2166,'门店自提','',1,1,2164,'pick-up-store','ep:add-location','','',0,_binary '',_binary '',_binary '','1','2023-05-18 09:23:14','1','2023-08-30 21:03:21',_binary '\0'),(2167,'快递公司','',2,0,2165,'express','ep:compass','mall/trade/delivery/express/index','Express',0,_binary '',_binary '',_binary '','1','2023-05-18 09:27:21','1','2024-11-29 11:20:54',_binary '\0'),(2168,'快递公司查询','trade:delivery:express:query',3,1,2167,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-18 09:37:53','','2023-05-18 09:37:53',_binary '\0'),(2169,'快递公司创建','trade:delivery:express:create',3,2,2167,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-18 09:37:53','','2023-05-18 09:37:53',_binary '\0'),(2170,'快递公司更新','trade:delivery:express:update',3,3,2167,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-18 09:37:53','','2023-05-18 09:37:53',_binary '\0'),(2171,'快递公司删除','trade:delivery:express:delete',3,4,2167,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-18 09:37:53','','2023-05-18 09:37:53',_binary '\0'),(2172,'快递公司导出','trade:delivery:express:export',3,5,2167,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-18 09:37:53','','2023-05-18 09:37:53',_binary '\0'),(2173,'运费模版','trade:delivery:express-template:query',2,1,2165,'express-template','ep:coordinate','mall/trade/delivery/expressTemplate/index','ExpressTemplate',0,_binary '',_binary '',_binary '','1','2023-05-20 06:48:10','1','2023-08-30 21:03:13',_binary '\0'),(2174,'快递运费模板查询','trade:delivery:express-template:query',3,1,2173,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-20 06:49:53','','2023-05-20 06:49:53',_binary '\0'),(2175,'快递运费模板创建','trade:delivery:express-template:create',3,2,2173,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-20 06:49:53','','2023-05-20 06:49:53',_binary '\0'),(2176,'快递运费模板更新','trade:delivery:express-template:update',3,3,2173,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-20 06:49:53','','2023-05-20 06:49:53',_binary '\0'),(2177,'快递运费模板删除','trade:delivery:express-template:delete',3,4,2173,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-20 06:49:53','','2023-05-20 06:49:53',_binary '\0'),(2178,'快递运费模板导出','trade:delivery:express-template:export',3,5,2173,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-20 06:49:53','','2023-05-20 06:49:53',_binary '\0'),(2179,'门店管理','',2,1,2166,'pick-up-store','ep:basketball','mall/trade/delivery/pickUpStore/index','PickUpStore',0,_binary '',_binary '',_binary '','1','2023-05-25 10:50:00','1','2023-08-30 21:03:28',_binary '\0'),(2180,'自提门店查询','trade:delivery:pick-up-store:query',3,1,2179,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-25 10:53:29','','2023-05-25 10:53:29',_binary '\0'),(2181,'自提门店创建','trade:delivery:pick-up-store:create',3,2,2179,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-25 10:53:29','','2023-05-25 10:53:29',_binary '\0'),(2182,'自提门店更新','trade:delivery:pick-up-store:update',3,3,2179,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-25 10:53:29','','2023-05-25 10:53:29',_binary '\0'),(2183,'自提门店删除','trade:delivery:pick-up-store:delete',3,4,2179,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-25 10:53:29','','2023-05-25 10:53:29',_binary '\0'),(2184,'自提门店导出','trade:delivery:pick-up-store:export',3,5,2179,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-05-25 10:53:29','','2023-05-25 10:53:29',_binary '\0'),(2209,'秒杀活动','',2,3,2030,'seckill','ep:place','','',0,_binary '',_binary '',_binary '','1','2023-06-24 17:39:13','1','2023-06-24 18:55:15',_binary '\0'),(2262,'会员中心','',1,55,0,'/member','ep:bicycle',NULL,NULL,0,_binary '',_binary '',_binary '','1','2023-06-10 00:42:03','1','2023-08-20 09:23:56',_binary '\0'),(2275,'会员配置','',2,0,2262,'config','fa:archive','member/config/index','MemberConfig',0,_binary '',_binary '',_binary '','','2023-06-10 02:07:44','1','2023-10-01 23:41:29',_binary '\0'),(2276,'会员配置查询','member:config:query',3,1,2275,'','','','',0,_binary '',_binary '',_binary '','','2023-06-10 02:07:44','1','2024-04-24 19:48:58',_binary '\0'),(2277,'会员配置保存','member:config:save',3,2,2275,'','','','',0,_binary '',_binary '',_binary '','','2023-06-10 02:07:44','1','2024-04-24 19:49:28',_binary '\0'),(2281,'签到配置','',2,2,2300,'config','ep:calendar','member/signin/config/index','SignInConfig',0,_binary '',_binary '',_binary '','','2023-06-10 03:26:12','1','2023-08-20 19:25:51',_binary '\0'),(2282,'积分签到规则查询','point:sign-in-config:query',3,1,2281,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 03:26:12','','2023-06-10 03:26:12',_binary '\0'),(2283,'积分签到规则创建','point:sign-in-config:create',3,2,2281,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 03:26:12','','2023-06-10 03:26:12',_binary '\0'),(2284,'积分签到规则更新','point:sign-in-config:update',3,3,2281,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 03:26:12','','2023-06-10 03:26:12',_binary '\0'),(2285,'积分签到规则删除','point:sign-in-config:delete',3,4,2281,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 03:26:12','','2023-06-10 03:26:12',_binary '\0'),(2287,'会员积分','',2,10,2262,'record','fa:asterisk','member/point/record/index','PointRecord',0,_binary '',_binary '',_binary '','','2023-06-10 04:18:50','1','2023-10-01 23:42:11',_binary '\0'),(2288,'用户积分记录查询','point:record:query',3,1,2287,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 04:18:50','','2023-06-10 04:18:50',_binary '\0'),(2293,'签到记录','',2,3,2300,'record','ep:chicken','member/signin/record/index','SignInRecord',0,_binary '',_binary '',_binary '','','2023-06-10 04:48:22','1','2023-08-20 19:26:02',_binary '\0'),(2294,'用户签到积分查询','point:sign-in-record:query',3,1,2293,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 04:48:22','','2023-06-10 04:48:22',_binary '\0'),(2297,'用户签到积分删除','point:sign-in-record:delete',3,4,2293,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-06-10 04:48:22','','2023-06-10 04:48:22',_binary '\0'),(2300,'会员签到','',1,11,2262,'signin','ep:alarm-clock','','',0,_binary '',_binary '',_binary '','1','2023-06-27 22:49:53','1','2023-08-20 09:23:48',_binary '\0'),(2301,'回调通知','',2,5,1117,'notify','ep:mute-notification','pay/notify/index','PayNotify',0,_binary '',_binary '',_binary '','','2023-07-20 04:41:32','1','2024-01-18 23:56:48',_binary '\0'),(2302,'支付通知查询','pay:notify:query',3,1,2301,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-07-20 04:41:32','','2023-07-20 04:41:32',_binary '\0'),(2303,'拼团活动','',2,3,2030,'combination','fa:group','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:19:54','1','2023-08-12 17:20:05',_binary '\0'),(2304,'拼团商品','',2,1,2303,'acitivity','ep:apple','mall/promotion/combination/activity/index','PromotionCombinationActivity',0,_binary '',_binary '',_binary '','1','2023-08-12 17:22:03','1','2023-08-12 17:22:29',_binary '\0'),(2305,'拼团活动查询','promotion:combination-activity:query',3,1,2304,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:54:32','1','2023-11-24 11:57:40',_binary '\0'),(2306,'拼团活动创建','promotion:combination-activity:create',3,2,2304,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:54:49','1','2023-08-12 17:54:49',_binary '\0'),(2307,'拼团活动更新','promotion:combination-activity:update',3,3,2304,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:55:04','1','2023-08-12 17:55:04',_binary '\0'),(2308,'拼团活动删除','promotion:combination-activity:delete',3,4,2304,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:55:23','1','2023-08-12 17:55:23',_binary '\0'),(2309,'拼团活动关闭','promotion:combination-activity:close',3,5,2304,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-12 17:55:37','1','2023-10-06 10:51:57',_binary '\0'),(2310,'砍价活动','',2,4,2030,'bargain','ep:box','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:27:25','1','2023-08-13 00:27:25',_binary '\0'),(2311,'砍价商品','',2,1,2310,'activity','ep:burger','mall/promotion/bargain/activity/index','PromotionBargainActivity',0,_binary '',_binary '',_binary '','1','2023-08-13 00:28:49','1','2023-10-05 01:16:23',_binary '\0'),(2312,'砍价活动查询','promotion:bargain-activity:query',3,1,2311,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:32:30','1','2023-08-13 00:32:30',_binary '\0'),(2313,'砍价活动创建','promotion:bargain-activity:create',3,2,2311,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:32:44','1','2023-08-13 00:32:44',_binary '\0'),(2314,'砍价活动更新','promotion:bargain-activity:update',3,3,2311,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:32:55','1','2023-08-13 00:32:55',_binary '\0'),(2315,'砍价活动删除','promotion:bargain-activity:delete',3,4,2311,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:34:50','1','2023-08-13 00:34:50',_binary '\0'),(2316,'砍价活动关闭','promotion:bargain-activity:close',3,5,2311,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-13 00:35:02','1','2023-08-13 00:35:02',_binary '\0'),(2317,'会员管理','',2,0,2262,'user','ep:avatar','member/user/index','MemberUser',0,_binary '',_binary '',_binary '','','2023-08-19 04:12:15','1','2023-08-24 00:50:55',_binary '\0'),(2318,'会员用户查询','member:user:query',3,1,2317,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-19 04:12:15','','2023-08-19 04:12:15',_binary '\0'),(2319,'会员用户更新','member:user:update',3,3,2317,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-19 04:12:15','','2023-08-19 04:12:15',_binary '\0'),(2320,'会员标签','',2,1,2262,'tag','ep:collection-tag','member/tag/index','MemberTag',0,_binary '',_binary '',_binary '','','2023-08-20 01:03:08','1','2023-08-20 09:23:19',_binary '\0'),(2321,'会员标签查询','member:tag:query',3,1,2320,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-20 01:03:08','','2023-08-20 01:03:08',_binary '\0'),(2322,'会员标签创建','member:tag:create',3,2,2320,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-20 01:03:08','','2023-08-20 01:03:08',_binary '\0'),(2323,'会员标签更新','member:tag:update',3,3,2320,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-20 01:03:08','','2023-08-20 01:03:08',_binary '\0'),(2324,'会员标签删除','member:tag:delete',3,4,2320,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-20 01:03:08','','2023-08-20 01:03:08',_binary '\0'),(2325,'会员等级','',2,2,2262,'level','fa:level-up','member/level/index','MemberLevel',0,_binary '',_binary '',_binary '','','2023-08-22 12:41:01','1','2023-08-22 21:47:00',_binary '\0'),(2326,'会员等级查询','member:level:query',3,1,2325,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 12:41:02','','2023-08-22 12:41:02',_binary '\0'),(2327,'会员等级创建','member:level:create',3,2,2325,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 12:41:02','','2023-08-22 12:41:02',_binary '\0'),(2328,'会员等级更新','member:level:update',3,3,2325,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 12:41:02','','2023-08-22 12:41:02',_binary '\0'),(2329,'会员等级删除','member:level:delete',3,4,2325,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 12:41:02','','2023-08-22 12:41:02',_binary '\0'),(2330,'会员分组','',2,3,2262,'group','fa:group','member/group/index','MemberGroup',0,_binary '',_binary '',_binary '','','2023-08-22 13:50:06','1','2023-10-01 23:42:01',_binary '\0'),(2331,'用户分组查询','member:group:query',3,1,2330,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 13:50:06','','2023-08-22 13:50:06',_binary '\0'),(2332,'用户分组创建','member:group:create',3,2,2330,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 13:50:06','','2023-08-22 13:50:06',_binary '\0'),(2333,'用户分组更新','member:group:update',3,3,2330,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 13:50:06','','2023-08-22 13:50:06',_binary '\0'),(2334,'用户分组删除','member:group:delete',3,4,2330,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-22 13:50:06','','2023-08-22 13:50:06',_binary '\0'),(2335,'用户等级修改','member:user:update-level',3,5,2317,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-08-23 16:49:05','','2023-08-23 16:50:48',_binary '\0'),(2336,'商品评论','',2,5,2000,'comment','ep:comment','mall/product/comment/index','ProductComment',0,_binary '',_binary '',_binary '','1','2023-08-26 11:03:00','1','2023-08-26 11:03:38',_binary '\0'),(2337,'评论查询','product:comment:query',3,1,2336,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-26 11:04:01','1','2023-08-26 11:04:01',_binary '\0'),(2338,'添加自评','product:comment:create',3,2,2336,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-26 11:04:23','1','2023-08-26 11:08:18',_binary '\0'),(2339,'商家回复','product:comment:update',3,3,2336,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-26 11:04:37','1','2023-08-26 11:04:37',_binary '\0'),(2340,'显隐评论','product:comment:update',3,4,2336,'','','','',0,_binary '',_binary '',_binary '','1','2023-08-26 11:04:55','1','2023-08-26 11:04:55',_binary '\0'),(2341,'优惠劵发送','promotion:coupon:send',3,2,2038,'','','','',0,_binary '',_binary '',_binary '','1','2023-09-02 00:03:14','1','2023-09-02 00:03:14',_binary '\0'),(2342,'交易配置','',2,0,2072,'config','ep:setting','mall/trade/config/index','TradeConfig',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-02-26 20:30:53',_binary '\0'),(2343,'交易中心配置查询','trade:config:query',3,1,2342,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2344,'交易中心配置保存','trade:config:save',3,2,2342,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2345,'分销管理','',1,4,2072,'brokerage','fa-solid:project-diagram','','',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2023-09-28 10:58:44',_binary '\0'),(2346,'分销用户','',2,0,2345,'brokerage-user','fa-solid:user-tie','mall/trade/brokerage/user/index','TradeBrokerageUser',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-02-26 20:33:23',_binary '\0'),(2347,'分销用户查询','trade:brokerage-user:query',3,1,2346,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2348,'分销用户推广人查询','trade:brokerage-user:user-query',3,2,2346,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2349,'分销用户推广订单查询','trade:brokerage-user:order-query',3,3,2346,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2350,'分销用户修改推广资格','trade:brokerage-user:update-brokerage-enable',3,4,2346,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2351,'修改推广员','trade:brokerage-user:update-bind-user',3,5,2346,'','','','',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-12-01 14:33:07',_binary '\0'),(2352,'清除推广员','trade:brokerage-user:clear-bind-user',3,6,2346,'','','','',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-12-01 14:33:14',_binary '\0'),(2353,'佣金记录','',2,1,2345,'brokerage-record','fa:money','mall/trade/brokerage/record/index','TradeBrokerageRecord',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-02-26 20:33:30',_binary '\0'),(2354,'佣金记录查询','trade:brokerage-record:query',3,1,2353,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2355,'佣金提现','',2,2,2345,'brokerage-withdraw','fa:credit-card','mall/trade/brokerage/withdraw/index','TradeBrokerageWithdraw',0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','1','2024-02-26 20:33:35',_binary '\0'),(2356,'佣金提现查询','trade:brokerage-withdraw:query',3,1,2355,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2357,'佣金提现审核','trade:brokerage-withdraw:audit',3,2,2355,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-28 02:46:22','','2023-09-28 02:46:22',_binary '\0'),(2358,'统计中心','',1,75,2362,'statistics','ep:data-line','','',0,_binary '',_binary '',_binary '','','2023-09-30 03:22:40','1','2023-09-30 11:54:48',_binary '\0'),(2359,'交易统计','',2,4,2358,'trade','fa-solid:credit-card','mall/statistics/trade/index','TradeStatistics',0,_binary '',_binary '',_binary '','','2023-09-30 03:22:40','1','2024-02-26 20:42:00',_binary '\0'),(2360,'交易统计查询','statistics:trade:query',3,1,2359,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-30 03:22:40','','2023-09-30 03:22:40',_binary '\0'),(2361,'交易统计导出','statistics:trade:export',3,2,2359,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-09-30 03:22:40','','2023-09-30 03:22:40',_binary '\0'),(2362,'商城系统','',1,59,0,'/mall','ep:shop','','',0,_binary '',_binary '',_binary '','1','2023-09-30 11:52:02','1','2023-09-30 11:52:18',_binary '\0'),(2363,'用户积分修改','member:user:update-point',3,6,2317,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-01 14:39:43','','2023-10-01 14:39:43',_binary '\0'),(2364,'用户余额修改','pay:wallet:update-balance',3,7,2317,'','','','',0,_binary '',_binary '',_binary '','','2023-10-01 14:39:43','1','2024-10-01 09:42:57',_binary '\0'),(2365,'优惠劵','',1,2,2030,'coupon','fa-solid:disease','','',0,_binary '',_binary '',_binary '','1','2023-10-03 12:39:15','1','2023-10-05 00:16:07',_binary '\0'),(2366,'砍价记录','',2,2,2310,'record','ep:list','mall/promotion/bargain/record/index','PromotionBargainRecord',0,_binary '',_binary '',_binary '','','2023-10-05 02:49:06','1','2023-10-05 10:50:38',_binary '\0'),(2367,'砍价记录查询','promotion:bargain-record:query',3,1,2366,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-05 02:49:06','','2023-10-05 02:49:06',_binary '\0'),(2368,'助力记录查询','promotion:bargain-help:query',3,2,2366,'','','','',0,_binary '',_binary '',_binary '','1','2023-10-05 12:27:49','1','2023-10-05 12:27:49',_binary '\0'),(2369,'拼团记录','promotion:combination-record:query',2,2,2303,'record','ep:avatar','mall/promotion/combination/record/index.vue','PromotionCombinationRecord',0,_binary '',_binary '',_binary '','1','2023-10-08 07:10:22','1','2023-10-08 07:34:11',_binary '\0'),(2374,'会员统计','',2,2,2358,'member','ep:avatar','mall/statistics/member/index','MemberStatistics',0,_binary '',_binary '',_binary '','','2023-10-11 04:39:24','1','2024-02-26 20:41:46',_binary '\0'),(2375,'会员统计查询','statistics:member:query',3,1,2374,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-11 04:39:24','','2023-10-11 04:39:24',_binary '\0'),(2376,'订单核销','trade:order:pick-up',3,10,2076,'','','','',0,_binary '',_binary '',_binary '','1','2023-10-14 17:11:58','1','2023-10-14 17:11:58',_binary '\0'),(2377,'文章分类','',2,0,2387,'article/category','fa:certificate','mall/promotion/article/category/index','ArticleCategory',0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','1','2023-10-16 09:38:26',_binary '\0'),(2378,'分类查询','promotion:article-category:query',3,1,2377,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2379,'分类创建','promotion:article-category:create',3,2,2377,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2380,'分类更新','promotion:article-category:update',3,3,2377,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2381,'分类删除','promotion:article-category:delete',3,4,2377,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2382,'文章列表','',2,2,2387,'article','ep:connection','mall/promotion/article/index','Article',0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','1','2023-10-16 09:41:19',_binary '\0'),(2383,'文章管理查询','promotion:article:query',3,1,2382,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2384,'文章管理创建','promotion:article:create',3,2,2382,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2385,'文章管理更新','promotion:article:update',3,3,2382,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2386,'文章管理删除','promotion:article:delete',3,4,2382,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-16 01:26:18','','2023-10-16 01:26:18',_binary '\0'),(2387,'内容管理','',1,1,2030,'content','ep:collection','','',0,_binary '',_binary '',_binary '','1','2023-10-16 09:37:31','1','2023-10-16 09:37:31',_binary '\0'),(2388,'商城首页','',2,1,2362,'home','ep:home-filled','mall/home/index','MallHome',0,_binary '',_binary '',_binary '','','2023-10-16 12:10:33','','2023-10-16 12:10:33',_binary '\0'),(2389,'核销订单','',2,2,2166,'pick-up-order','ep:list','mall/trade/delivery/pickUpOrder/index','PickUpOrder',0,_binary '',_binary '',_binary '','','2023-10-19 16:09:51','','2023-10-19 16:09:51',_binary '\0'),(2390,'优惠活动','',1,99,2030,'youhui','ep:aim','','',0,_binary '',_binary '',_binary '','1','2023-10-21 19:23:49','1','2023-10-21 19:23:49',_binary '\0'),(2391,'客户管理','',2,10,2397,'customer','fa:address-book-o','crm/customer/index','CrmCustomer',0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','1','2024-02-17 17:13:32',_binary '\0'),(2392,'客户查询','crm:customer:query',3,1,2391,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','','2023-10-29 09:04:21',_binary '\0'),(2393,'客户创建','crm:customer:create',3,2,2391,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','','2023-10-29 09:04:21',_binary '\0'),(2394,'客户更新','crm:customer:update',3,3,2391,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','','2023-10-29 09:04:21',_binary '\0'),(2395,'客户删除','crm:customer:delete',3,4,2391,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','','2023-10-29 09:04:21',_binary '\0'),(2396,'客户导出','crm:customer:export',3,5,2391,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 09:04:21','','2023-10-29 09:04:21',_binary '\0'),(2397,'CRM 系统','',1,200,0,'/crm','simple-icons:civicrm','','',0,_binary '',_binary '',_binary '','1','2023-10-29 17:08:30','1','2025-04-19 18:56:38',_binary '\0'),(2398,'合同管理','',2,50,2397,'contract','ep:notebook','crm/contract/index','CrmContract',0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','1','2024-02-17 17:15:09',_binary '\0'),(2399,'合同查询','crm:contract:query',3,1,2398,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','','2023-10-29 10:50:41',_binary '\0'),(2400,'合同创建','crm:contract:create',3,2,2398,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','','2023-10-29 10:50:41',_binary '\0'),(2401,'合同更新','crm:contract:update',3,3,2398,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','','2023-10-29 10:50:41',_binary '\0'),(2402,'合同删除','crm:contract:delete',3,4,2398,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','','2023-10-29 10:50:41',_binary '\0'),(2403,'合同导出','crm:contract:export',3,5,2398,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 10:50:41','','2023-10-29 10:50:41',_binary '\0'),(2404,'线索管理','',2,8,2397,'clue','fa:pagelines','crm/clue/index','CrmClue',0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','1','2024-02-17 17:15:41',_binary '\0'),(2405,'线索查询','crm:clue:query',3,1,2404,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','','2023-10-29 11:06:29',_binary '\0'),(2406,'线索创建','crm:clue:create',3,2,2404,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','','2023-10-29 11:06:29',_binary '\0'),(2407,'线索更新','crm:clue:update',3,3,2404,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','','2023-10-29 11:06:29',_binary '\0'),(2408,'线索删除','crm:clue:delete',3,4,2404,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','','2023-10-29 11:06:29',_binary '\0'),(2409,'线索导出','crm:clue:export',3,5,2404,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:06:29','','2023-10-29 11:06:29',_binary '\0'),(2410,'商机管理','',2,40,2397,'business','fa:bus','crm/business/index','CrmBusiness',0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','1','2024-02-17 17:14:55',_binary '\0'),(2411,'商机查询','crm:business:query',3,1,2410,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','','2023-10-29 11:12:35',_binary '\0'),(2412,'商机创建','crm:business:create',3,2,2410,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','','2023-10-29 11:12:35',_binary '\0'),(2413,'商机更新','crm:business:update',3,3,2410,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','','2023-10-29 11:12:35',_binary '\0'),(2414,'商机删除','crm:business:delete',3,4,2410,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','','2023-10-29 11:12:35',_binary '\0'),(2415,'商机导出','crm:business:export',3,5,2410,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:12:35','','2023-10-29 11:12:35',_binary '\0'),(2416,'联系人管理','',2,20,2397,'contact','fa:address-book-o','crm/contact/index','CrmContact',0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','1','2024-02-17 17:13:49',_binary '\0'),(2417,'联系人查询','crm:contact:query',3,1,2416,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','','2023-10-29 11:14:56',_binary '\0'),(2418,'联系人创建','crm:contact:create',3,2,2416,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','','2023-10-29 11:14:56',_binary '\0'),(2419,'联系人更新','crm:contact:update',3,3,2416,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','','2023-10-29 11:14:56',_binary '\0'),(2420,'联系人删除','crm:contact:delete',3,4,2416,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','','2023-10-29 11:14:56',_binary '\0'),(2421,'联系人导出','crm:contact:export',3,5,2416,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:14:56','','2023-10-29 11:14:56',_binary '\0'),(2422,'回款管理','',2,60,2397,'receivable','ep:money','crm/receivable/index','CrmReceivable',0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','1','2024-02-17 17:16:18',_binary '\0'),(2423,'回款管理查询','crm:receivable:query',3,1,2422,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2424,'回款管理创建','crm:receivable:create',3,2,2422,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2425,'回款管理更新','crm:receivable:update',3,3,2422,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2426,'回款管理删除','crm:receivable:delete',3,4,2422,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2427,'回款管理导出','crm:receivable:export',3,5,2422,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2428,'回款计划','',2,61,2397,'receivable-plan','fa:money','crm/receivable/plan/index','CrmReceivablePlan',0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','1','2024-02-17 17:16:11',_binary '\0'),(2429,'回款计划查询','crm:receivable-plan:query',3,1,2428,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2430,'回款计划创建','crm:receivable-plan:create',3,2,2428,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2431,'回款计划更新','crm:receivable-plan:update',3,3,2428,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2432,'回款计划删除','crm:receivable-plan:delete',3,4,2428,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2433,'回款计划导出','crm:receivable-plan:export',3,5,2428,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 11:18:09','','2023-10-29 11:18:09',_binary '\0'),(2435,'商城装修','',2,20,2030,'diy-template','fa6-solid:brush','mall/promotion/diy/template/index','',0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','1','2025-03-15 21:34:33',_binary '\0'),(2436,'装修模板','',2,1,2435,'diy-template','fa6-solid:brush','mall/promotion/diy/template/index','DiyTemplate',0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2437,'装修模板查询','promotion:diy-template:query',3,1,2436,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2438,'装修模板创建','promotion:diy-template:create',3,2,2436,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2439,'装修模板更新','promotion:diy-template:update',3,3,2436,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2440,'装修模板删除','promotion:diy-template:delete',3,4,2436,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2441,'装修模板使用','promotion:diy-template:use',3,5,2436,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2442,'装修页面','',2,2,2435,'diy-page','foundation:page-edit','mall/promotion/diy/page/index','DiyPage',0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2443,'装修页面查询','promotion:diy-page:query',3,1,2442,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:25','','2023-10-29 14:19:25',_binary '\0'),(2444,'装修页面创建','promotion:diy-page:create',3,2,2442,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:26','','2023-10-29 14:19:26',_binary '\0'),(2445,'装修页面更新','promotion:diy-page:update',3,3,2442,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:26','','2023-10-29 14:19:26',_binary '\0'),(2446,'装修页面删除','promotion:diy-page:delete',3,4,2442,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-10-29 14:19:26','','2023-10-29 14:19:26',_binary '\0'),(2447,'三方登录','',1,10,1,'social','fa:rocket','','',0,_binary '',_binary '',_binary '','1','2023-11-04 12:12:01','1','2024-02-29 01:14:05',_binary '\0'),(2448,'三方应用','',2,1,2447,'client','ep:set-up','system/social/client/index.vue','SocialClient',0,_binary '',_binary '',_binary '','1','2023-11-04 12:17:19','1','2024-05-04 19:09:54',_binary '\0'),(2449,'三方应用查询','system:social-client:query',3,1,2448,'','','','',0,_binary '',_binary '',_binary '','1','2023-11-04 12:43:12','1','2023-11-04 12:43:33',_binary '\0'),(2450,'三方应用创建','system:social-client:create',3,2,2448,'','','','',0,_binary '',_binary '',_binary '','1','2023-11-04 12:43:58','1','2023-11-04 12:43:58',_binary '\0'),(2451,'三方应用更新','system:social-client:update',3,3,2448,'','','','',0,_binary '',_binary '',_binary '','1','2023-11-04 12:44:27','1','2023-11-04 12:44:27',_binary '\0'),(2452,'三方应用删除','system:social-client:delete',3,4,2448,'','','','',0,_binary '',_binary '',_binary '','1','2023-11-04 12:44:43','1','2023-11-04 12:44:43',_binary '\0'),(2453,'三方用户','system:social-user:query',2,2,2447,'user','ep:avatar','system/social/user/index.vue','SocialUser',0,_binary '',_binary '',_binary '','1','2023-11-04 14:01:05','1','2023-11-04 14:01:05',_binary '\0'),(2472,'主子表（内嵌）','',2,12,1070,'demo03-inner','fa:power-off','infra/demo/demo03/inner/index','Demo03StudentInner',0,_binary '',_binary '',_binary '','','2023-11-13 04:39:51','1','2023-11-16 23:53:46',_binary '\0'),(2478,'单表（增删改查）','',2,1,1070,'demo01-contact','ep:bicycle','infra/demo/demo01/index','Demo01Contact',0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','1','2023-11-16 20:34:40',_binary '\0'),(2479,'示例联系人查询','infra:demo01-contact:query',3,1,2478,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','','2023-11-15 14:42:30',_binary '\0'),(2480,'示例联系人创建','infra:demo01-contact:create',3,2,2478,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','','2023-11-15 14:42:30',_binary '\0'),(2481,'示例联系人更新','infra:demo01-contact:update',3,3,2478,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','','2023-11-15 14:42:30',_binary '\0'),(2482,'示例联系人删除','infra:demo01-contact:delete',3,4,2478,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','','2023-11-15 14:42:30',_binary '\0'),(2483,'示例联系人导出','infra:demo01-contact:export',3,5,2478,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-15 14:42:30','','2023-11-15 14:42:30',_binary '\0'),(2484,'树表（增删改查）','',2,2,1070,'demo02-category','fa:tree','infra/demo/demo02/index','Demo02Category',0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','1','2023-11-16 20:35:01',_binary '\0'),(2485,'示例分类查询','infra:demo02-category:query',3,1,2484,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','','2023-11-16 12:18:27',_binary '\0'),(2486,'示例分类创建','infra:demo02-category:create',3,2,2484,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','','2023-11-16 12:18:27',_binary '\0'),(2487,'示例分类更新','infra:demo02-category:update',3,3,2484,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','','2023-11-16 12:18:27',_binary '\0'),(2488,'示例分类删除','infra:demo02-category:delete',3,4,2484,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','','2023-11-16 12:18:27',_binary '\0'),(2489,'示例分类导出','infra:demo02-category:export',3,5,2484,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:18:27','','2023-11-16 12:18:27',_binary '\0'),(2490,'主子表（标准）','',2,10,1070,'demo03-normal','fa:battery-3','infra/demo/demo03/normal/index','Demo03StudentNormal',0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','1','2023-11-16 23:10:03',_binary '\0'),(2491,'学生查询','infra:demo03-student:query',3,1,2490,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','','2023-11-16 12:53:37',_binary '\0'),(2492,'学生创建','infra:demo03-student:create',3,2,2490,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','','2023-11-16 12:53:37',_binary '\0'),(2493,'学生更新','infra:demo03-student:update',3,3,2490,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','','2023-11-16 12:53:37',_binary '\0'),(2494,'学生删除','infra:demo03-student:delete',3,4,2490,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','','2023-11-16 12:53:37',_binary '\0'),(2495,'学生导出','infra:demo03-student:export',3,5,2490,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-16 12:53:37','','2023-11-16 12:53:37',_binary '\0'),(2497,'主子表（ERP）','',2,11,1070,'demo03-erp','ep:calendar','infra/demo/demo03/erp/index','Demo03StudentERP',0,_binary '',_binary '',_binary '','','2023-11-16 15:50:59','1','2023-11-17 13:19:56',_binary '\0'),(2516,'客户公海配置','',2,0,2524,'customer-pool-config','ep:data-analysis','crm/customer/poolConfig/index','CrmCustomerPoolConfig',0,_binary '',_binary '',_binary '','','2023-11-18 13:33:31','1','2024-01-03 19:52:06',_binary '\0'),(2517,'客户公海配置保存','crm:customer-pool-config:update',3,1,2516,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:31','','2023-11-18 13:33:31',_binary '\0'),(2518,'客户限制配置','',2,1,2524,'customer-limit-config','ep:avatar','crm/customer/limitConfig/index','CrmCustomerLimitConfig',0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','1','2024-02-24 16:43:33',_binary '\0'),(2519,'客户限制配置查询','crm:customer-limit-config:query',3,1,2518,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','','2023-11-18 13:33:53',_binary '\0'),(2520,'客户限制配置创建','crm:customer-limit-config:create',3,2,2518,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','','2023-11-18 13:33:53',_binary '\0'),(2521,'客户限制配置更新','crm:customer-limit-config:update',3,3,2518,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','','2023-11-18 13:33:53',_binary '\0'),(2522,'客户限制配置删除','crm:customer-limit-config:delete',3,4,2518,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','','2023-11-18 13:33:53',_binary '\0'),(2523,'客户限制配置导出','crm:customer-limit-config:export',3,5,2518,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-11-18 13:33:53','','2023-11-18 13:33:53',_binary '\0'),(2524,'系统配置','',1,999,2397,'config','ep:connection','','',0,_binary '',_binary '',_binary '','1','2023-11-18 21:58:00','1','2024-02-17 17:14:34',_binary '\0'),(2525,'WebSocket','',2,5,2,'websocket','ep:connection','infra/webSocket/index','InfraWebSocket',0,_binary '',_binary '',_binary '','1','2023-11-23 19:41:55','1','2024-04-23 00:02:00',_binary '\0'),(2526,'产品管理','',2,80,2397,'product','fa:product-hunt','crm/product/index','CrmProduct',0,_binary '',_binary '',_binary '','1','2023-12-05 22:45:26','1','2024-02-20 20:36:20',_binary '\0'),(2527,'产品查询','crm:product:query',3,1,2526,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-05 22:47:16','1','2023-12-05 22:47:16',_binary '\0'),(2528,'产品创建','crm:product:create',3,2,2526,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-05 22:47:41','1','2023-12-05 22:47:48',_binary '\0'),(2529,'产品更新','crm:product:update',3,3,2526,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-05 22:48:03','1','2023-12-05 22:48:03',_binary '\0'),(2530,'产品删除','crm:product:delete',3,4,2526,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-05 22:48:17','1','2023-12-05 22:48:17',_binary '\0'),(2531,'产品导出','crm:product:export',3,5,2526,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-05 22:48:29','1','2023-12-05 22:48:29',_binary '\0'),(2532,'产品分类配置','',2,3,2524,'product/category','fa-solid:window-restore','crm/product/category/index','CrmProductCategory',0,_binary '',_binary '',_binary '','1','2023-12-06 12:52:36','1','2023-12-06 12:52:51',_binary '\0'),(2533,'产品分类查询','crm:product-category:query',3,1,2532,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-06 12:53:23','1','2023-12-06 12:53:23',_binary '\0'),(2534,'产品分类创建','crm:product-category:create',3,2,2532,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-06 12:53:41','1','2023-12-06 12:53:41',_binary '\0'),(2535,'产品分类更新','crm:product-category:update',3,3,2532,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-06 12:53:59','1','2023-12-06 12:53:59',_binary '\0'),(2536,'产品分类删除','crm:product-category:delete',3,4,2532,'','','','',0,_binary '',_binary '',_binary '','1','2023-12-06 12:54:14','1','2023-12-06 12:54:14',_binary '\0'),(2543,'关联商机','crm:contact:create-business',3,10,2416,'','','','',0,_binary '',_binary '',_binary '','1','2024-01-02 17:28:25','1','2024-01-02 17:28:25',_binary '\0'),(2544,'取关商机','crm:contact:delete-business',3,11,2416,'','','','',0,_binary '',_binary '',_binary '','1','2024-01-02 17:28:43','1','2024-01-02 17:28:51',_binary '\0'),(2545,'商品统计','',2,3,2358,'product','fa:product-hunt','mall/statistics/product/index','ProductStatistics',0,_binary '',_binary '',_binary '','','2023-12-15 18:54:28','1','2024-02-26 20:41:52',_binary '\0'),(2546,'客户公海','',2,30,2397,'customer/pool','fa-solid:swimming-pool','crm/customer/pool/index','CrmCustomerPool',0,_binary '',_binary '',_binary '','1','2024-01-15 21:29:34','1','2024-02-17 17:14:18',_binary '\0'),(2547,'订单查询','trade:order:query',3,1,2076,'','','','',0,_binary '',_binary '',_binary '','1','2024-01-16 08:52:00','1','2024-01-16 08:52:00',_binary '\0'),(2548,'订单更新','trade:order:update',3,2,2076,'','','','',0,_binary '',_binary '',_binary '','1','2024-01-16 08:52:21','1','2024-01-16 08:52:21',_binary '\0'),(2549,'支付&退款案例','',2,1,2161,'order','fa:paypal','pay/demo/order/index','',0,_binary '',_binary '',_binary '','1','2024-01-18 23:45:00','1','2024-01-18 23:47:21',_binary '\0'),(2550,'提现转账案例','',2,2,2161,'transfer','fa:transgender-alt','pay/demo/withdraw/index','',0,_binary '',_binary '',_binary '','1','2024-01-18 23:51:16','1','2025-05-08 13:04:36',_binary '\0'),(2551,'钱包管理','',1,4,1117,'wallet','ep:wallet','','',0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','1','2024-02-29 08:58:54',_binary '\0'),(2552,'充值套餐','',2,2,2551,'wallet-recharge-package','fa:leaf','pay/wallet/rechargePackage/index','WalletRechargePackage',0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2553,'钱包充值套餐查询','pay:wallet-recharge-package:query',3,1,2552,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2554,'钱包充值套餐创建','pay:wallet-recharge-package:create',3,2,2552,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2555,'钱包充值套餐更新','pay:wallet-recharge-package:update',3,3,2552,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2556,'钱包充值套餐删除','pay:wallet-recharge-package:delete',3,4,2552,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2557,'钱包余额','',2,1,2551,'wallet-balance','fa:leaf','pay/wallet/balance/index','WalletBalance',0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2558,'钱包余额查询','pay:wallet:query',3,1,2557,'','','',NULL,0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2559,'转账订单','',2,3,1117,'transfer','ep:credit-card','pay/transfer/index','PayTransfer',0,_binary '',_binary '',_binary '','','2023-12-29 02:32:54','','2023-12-29 02:32:54',_binary '\0'),(2560,'数据统计','',1,200,2397,'statistics','ep:data-line','','',0,_binary '',_binary '',_binary '','1','2024-01-26 22:50:35','1','2024-02-24 20:10:07',_binary '\0'),(2561,'排行榜','crm:statistics-rank:query',2,1,2560,'ranking','fa:area-chart','crm/statistics/rank/index','CrmStatisticsRank',0,_binary '',_binary '',_binary '','1','2024-01-26 22:52:09','1','2024-04-24 19:39:11',_binary '\0'),(2562,'客户导入','crm:customer:import',3,6,2391,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-01 13:09:00','1','2024-02-01 13:09:05',_binary '\0'),(2563,'ERP 系统','',1,300,0,'/erp','simple-icons:erpnext','','',0,_binary '',_binary '',_binary '','1','2024-02-04 15:37:25','1','2025-04-19 18:56:15',_binary '\0'),(2564,'产品管理','',1,40,2563,'product','fa:product-hunt','','',0,_binary '',_binary '',_binary '','1','2024-02-04 15:38:43','1','2024-02-04 15:38:43',_binary '\0'),(2565,'产品信息','',2,0,2564,'product','fa-solid:apple-alt','erp/product/product/index','ErpProduct',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-05 14:42:11',_binary '\0'),(2566,'产品查询','erp:product:query',3,1,2565,'','','','',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-04 17:21:57',_binary '\0'),(2567,'产品创建','erp:product:create',3,2,2565,'','','','',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-04 17:22:12',_binary '\0'),(2568,'产品更新','erp:product:update',3,3,2565,'','','','',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-04 17:22:16',_binary '\0'),(2569,'产品删除','erp:product:delete',3,4,2565,'','','','',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-04 17:22:22',_binary '\0'),(2570,'产品导出','erp:product:export',3,5,2565,'','','','',0,_binary '',_binary '',_binary '','','2024-02-04 07:52:15','1','2024-02-04 17:22:26',_binary '\0'),(2571,'产品分类','',2,1,2564,'product-category','fa:certificate','erp/product/category/index','ErpProductCategory',0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','1','2024-02-04 17:24:58',_binary '\0'),(2572,'分类查询','erp:product-category:query',3,1,2571,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','','2024-02-04 09:21:04',_binary '\0'),(2573,'分类创建','erp:product-category:create',3,2,2571,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','','2024-02-04 09:21:04',_binary '\0'),(2574,'分类更新','erp:product-category:update',3,3,2571,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','','2024-02-04 09:21:04',_binary '\0'),(2575,'分类删除','erp:product-category:delete',3,4,2571,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','','2024-02-04 09:21:04',_binary '\0'),(2576,'分类导出','erp:product-category:export',3,5,2571,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 09:21:04','','2024-02-04 09:21:04',_binary '\0'),(2577,'产品单位','',2,2,2564,'unit','ep:opportunity','erp/product/unit/index','ErpProductUnit',0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','1','2024-02-04 19:54:37',_binary '\0'),(2578,'单位查询','erp:product-unit:query',3,1,2577,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','','2024-02-04 11:54:08',_binary '\0'),(2579,'单位创建','erp:product-unit:create',3,2,2577,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','','2024-02-04 11:54:08',_binary '\0'),(2580,'单位更新','erp:product-unit:update',3,3,2577,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','','2024-02-04 11:54:08',_binary '\0'),(2581,'单位删除','erp:product-unit:delete',3,4,2577,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','','2024-02-04 11:54:08',_binary '\0'),(2582,'单位导出','erp:product-unit:export',3,5,2577,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 11:54:08','','2024-02-04 11:54:08',_binary '\0'),(2583,'库存管理','',1,30,2563,'stock','fa:window-restore','','',0,_binary '',_binary '',_binary '','1','2024-02-05 00:29:37','1','2024-02-05 00:29:37',_binary '\0'),(2584,'仓库信息','',2,0,2583,'warehouse','ep:house','erp/stock/warehouse/index','ErpWarehouse',0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','1','2024-02-05 01:12:53',_binary '\0'),(2585,'仓库查询','erp:warehouse:query',3,1,2584,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','','2024-02-04 17:12:09',_binary '\0'),(2586,'仓库创建','erp:warehouse:create',3,2,2584,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','','2024-02-04 17:12:09',_binary '\0'),(2587,'仓库更新','erp:warehouse:update',3,3,2584,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','','2024-02-04 17:12:09',_binary '\0'),(2588,'仓库删除','erp:warehouse:delete',3,4,2584,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','','2024-02-04 17:12:09',_binary '\0'),(2589,'仓库导出','erp:warehouse:export',3,5,2584,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-04 17:12:09','','2024-02-04 17:12:09',_binary '\0'),(2590,'产品库存','',2,1,2583,'stock','ep:coffee','erp/stock/stock/index','ErpStock',0,_binary '',_binary '',_binary '','','2024-02-05 06:40:50','1','2024-02-05 14:42:44',_binary '\0'),(2591,'库存查询','erp:stock:query',3,1,2590,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 06:40:50','','2024-02-05 06:40:50',_binary '\0'),(2592,'库存导出','erp:stock:export',3,5,2590,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 06:40:50','','2024-02-05 06:40:50',_binary '\0'),(2593,'出入库明细','',2,2,2583,'record','fa-solid:blog','erp/stock/record/index','ErpStockRecord',0,_binary '',_binary '',_binary '','','2024-02-05 10:27:21','1','2024-02-06 17:26:11',_binary '\0'),(2594,'库存明细查询','erp:stock-record:query',3,1,2593,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 10:27:21','','2024-02-05 10:27:21',_binary '\0'),(2595,'库存明细导出','erp:stock-record:export',3,5,2593,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 10:27:21','','2024-02-05 10:27:21',_binary '\0'),(2596,'其它入库','',2,3,2583,'in','ep:zoom-in','erp/stock/in/index','ErpStockIn',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-07 19:06:51',_binary '\0'),(2597,'其它入库单查询','erp:stock-in:query',3,1,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2598,'其它入库单创建','erp:stock-in:create',3,2,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2599,'其它入库单更新','erp:stock-in:update',3,3,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2600,'其它入库单删除','erp:stock-in:delete',3,4,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2601,'其它入库单导出','erp:stock-in:export',3,5,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2602,'采购管理','',1,10,2563,'purchase','fa:buysellads','','',0,_binary '',_binary '',_binary '','1','2024-02-06 16:01:01','1','2024-02-06 16:01:23',_binary '\0'),(2603,'供应商信息','',2,4,2602,'supplier','fa:superpowers','erp/purchase/supplier/index','ErpSupplier',0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','1','2024-02-06 16:22:25',_binary '\0'),(2604,'供应商查询','erp:supplier:query',3,1,2603,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','','2024-02-06 08:21:55',_binary '\0'),(2605,'供应商创建','erp:supplier:create',3,2,2603,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','','2024-02-06 08:21:55',_binary '\0'),(2606,'供应商更新','erp:supplier:update',3,3,2603,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','','2024-02-06 08:21:55',_binary '\0'),(2607,'供应商删除','erp:supplier:delete',3,4,2603,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','','2024-02-06 08:21:55',_binary '\0'),(2608,'供应商导出','erp:supplier:export',3,5,2603,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-06 08:21:55','','2024-02-06 08:21:55',_binary '\0'),(2609,'其它入库单审批','erp:stock-in:update-status',3,6,2596,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-05 16:08:56',_binary '\0'),(2610,'其它出库','',2,4,2583,'out','ep:zoom-out','erp/stock/out/index','ErpStockOut',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-07 19:06:55',_binary '\0'),(2611,'其它出库单查询','erp:stock-out:query',3,1,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:39',_binary '\0'),(2612,'其它出库单创建','erp:stock-out:create',3,2,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:42',_binary '\0'),(2613,'其它出库单更新','erp:stock-out:update',3,3,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:44',_binary '\0'),(2614,'其它出库单删除','erp:stock-out:delete',3,4,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:56',_binary '\0'),(2615,'其它出库单导出','erp:stock-out:export',3,5,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:57',_binary '\0'),(2616,'其它出库单审批','erp:stock-out:update-status',3,6,2610,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 06:43:58',_binary '\0'),(2617,'销售管理','',1,20,2563,'sale','fa:sellsy','','',0,_binary '',_binary '',_binary '','1','2024-02-07 15:12:32','1','2024-02-07 15:12:32',_binary '\0'),(2618,'客户信息','',2,4,2617,'customer','ep:avatar','erp/sale/customer/index','ErpCustomer',0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','1','2024-02-07 15:22:25',_binary '\0'),(2619,'客户查询','erp:customer:query',3,1,2618,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','','2024-02-07 07:21:45',_binary '\0'),(2620,'客户创建','erp:customer:create',3,2,2618,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','','2024-02-07 07:21:45',_binary '\0'),(2621,'客户更新','erp:customer:update',3,3,2618,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','','2024-02-07 07:21:45',_binary '\0'),(2622,'客户删除','erp:customer:delete',3,4,2618,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','','2024-02-07 07:21:45',_binary '\0'),(2623,'客户导出','erp:customer:export',3,5,2618,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-07 07:21:45','','2024-02-07 07:21:45',_binary '\0'),(2624,'库存调拨','',2,5,2583,'move','ep:folder-remove','erp/stock/move/index','ErpStockMove',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-16 18:53:55',_binary '\0'),(2625,'库存调度单查询','erp:stock-move:query',3,1,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:49',_binary '\0'),(2626,'库存调度单创建','erp:stock-move:create',3,2,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:52',_binary '\0'),(2627,'库存调度单更新','erp:stock-move:update',3,3,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:55',_binary '\0'),(2628,'库存调度单删除','erp:stock-move:delete',3,4,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:57',_binary '\0'),(2629,'库存调度单导出','erp:stock-move:export',3,5,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:59',_binary '\0'),(2630,'库存调度单审批','erp:stock-move:update-status',3,6,2624,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:13:03',_binary '\0'),(2631,'库存盘点','',2,6,2583,'check','ep:circle-check-filled','erp/stock/check/index','ErpStockCheck',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-08 08:31:09',_binary '\0'),(2632,'库存盘点单查询','erp:stock-check:query',3,1,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:49',_binary '\0'),(2633,'库存盘点单创建','erp:stock-check:create',3,2,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:52',_binary '\0'),(2634,'库存盘点单更新','erp:stock-check:update',3,3,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:55',_binary '\0'),(2635,'库存盘点单删除','erp:stock-check:delete',3,4,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:57',_binary '\0'),(2636,'库存盘点单导出','erp:stock-check:export',3,5,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:59',_binary '\0'),(2637,'库存盘点单审批','erp:stock-check:update-status',3,6,2631,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:13:03',_binary '\0'),(2638,'销售订单','',2,1,2617,'order','fa:first-order','erp/sale/order/index','ErpSaleOrder',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-10 21:59:20',_binary '\0'),(2639,'销售订单查询','erp:sale-order:query',3,1,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:49',_binary '\0'),(2640,'销售订单创建','erp:sale-order:create',3,2,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:52',_binary '\0'),(2641,'销售订单更新','erp:sale-order:update',3,3,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:55',_binary '\0'),(2642,'销售订单删除','erp:sale-order:delete',3,4,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:57',_binary '\0'),(2643,'销售订单导出','erp:sale-order:export',3,5,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:59',_binary '\0'),(2644,'销售订单审批','erp:sale-order:update-status',3,6,2638,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:13:03',_binary '\0'),(2645,'财务管理','',1,50,2563,'finance','ep:money','','',0,_binary '',_binary '',_binary '','1','2024-02-10 08:05:58','1','2024-02-10 08:06:07',_binary '\0'),(2646,'结算账户','',2,10,2645,'account','fa:universal-access','erp/finance/account/index','ErpAccount',0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','1','2024-02-14 08:24:31',_binary '\0'),(2647,'结算账户查询','erp:account:query',3,1,2646,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','','2024-02-10 00:15:07',_binary '\0'),(2648,'结算账户创建','erp:account:create',3,2,2646,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','','2024-02-10 00:15:07',_binary '\0'),(2649,'结算账户更新','erp:account:update',3,3,2646,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','','2024-02-10 00:15:07',_binary '\0'),(2650,'结算账户删除','erp:account:delete',3,4,2646,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','','2024-02-10 00:15:07',_binary '\0'),(2651,'结算账户导出','erp:account:export',3,5,2646,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-10 00:15:07','','2024-02-10 00:15:07',_binary '\0'),(2652,'销售出库','',2,2,2617,'out','ep:sold-out','erp/sale/out/index','ErpSaleOut',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-10 22:02:07',_binary '\0'),(2653,'销售出库查询','erp:sale-out:query',3,1,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:49',_binary '\0'),(2654,'销售出库创建','erp:sale-out:create',3,2,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:52',_binary '\0'),(2655,'销售出库更新','erp:sale-out:update',3,3,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:55',_binary '\0'),(2656,'销售出库删除','erp:sale-out:delete',3,4,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:57',_binary '\0'),(2657,'销售出库导出','erp:sale-out:export',3,5,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:59',_binary '\0'),(2658,'销售出库审批','erp:sale-out:update-status',3,6,2652,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:13:03',_binary '\0'),(2659,'销售退货','',2,3,2617,'return','fa-solid:bone','erp/sale/return/index','ErpSaleReturn',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-12 06:12:58',_binary '\0'),(2660,'销售退货查询','erp:sale-return:query',3,1,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:49',_binary '\0'),(2661,'销售退货创建','erp:sale-return:create',3,2,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:52',_binary '\0'),(2662,'销售退货更新','erp:sale-return:update',3,3,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:55',_binary '\0'),(2663,'销售退货删除','erp:sale-return:delete',3,4,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:57',_binary '\0'),(2664,'销售退货导出','erp:sale-return:export',3,5,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:12:59',_binary '\0'),(2665,'销售退货审批','erp:sale-return:update-status',3,6,2659,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-07 11:13:03',_binary '\0'),(2666,'采购订单','',2,1,2602,'order','fa-solid:border-all','erp/purchase/order/index','ErpPurchaseOrder',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-12 08:51:49',_binary '\0'),(2667,'采购订单查询','erp:purchase-order:query',3,1,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:17',_binary '\0'),(2668,'采购订单创建','erp:purchase-order:create',3,2,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:54',_binary '\0'),(2669,'采购订单更新','erp:purchase-order:update',3,3,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:58',_binary '\0'),(2670,'采购订单删除','erp:purchase-order:delete',3,4,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:00',_binary '\0'),(2671,'采购订单导出','erp:purchase-order:export',3,5,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:05',_binary '\0'),(2672,'采购订单审批','erp:purchase-order:update-status',3,6,2666,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:08',_binary '\0'),(2673,'采购入库','',2,2,2602,'in','fa-solid:gopuram','erp/purchase/in/index','ErpPurchaseIn',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-12 11:19:27',_binary '\0'),(2674,'采购入库查询','erp:purchase-in:query',3,1,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:17',_binary '\0'),(2675,'采购入库创建','erp:purchase-in:create',3,2,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:54',_binary '\0'),(2676,'采购入库更新','erp:purchase-in:update',3,3,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:58',_binary '\0'),(2677,'采购入库删除','erp:purchase-in:delete',3,4,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:00',_binary '\0'),(2678,'采购入库导出','erp:purchase-in:export',3,5,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:05',_binary '\0'),(2679,'采购入库审批','erp:purchase-in:update-status',3,6,2673,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:08',_binary '\0'),(2680,'采购退货','',2,3,2602,'return','ep:minus','erp/purchase/return/index','ErpPurchaseReturn',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-12 20:51:02',_binary '\0'),(2681,'采购退货查询','erp:purchase-return:query',3,1,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:17',_binary '\0'),(2682,'采购退货创建','erp:purchase-return:create',3,2,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:54',_binary '\0'),(2683,'采购退货更新','erp:purchase-return:update',3,3,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:58',_binary '\0'),(2684,'采购退货删除','erp:purchase-return:delete',3,4,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:00',_binary '\0'),(2685,'采购退货导出','erp:purchase-return:export',3,5,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:05',_binary '\0'),(2686,'采购退货审批','erp:purchase-return:update-status',3,6,2680,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:08',_binary '\0'),(2687,'付款单','',2,1,2645,'payment','ep:caret-right','erp/finance/payment/index','ErpFinancePayment',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-14 08:24:23',_binary '\0'),(2688,'付款单查询','erp:finance-payment:query',3,1,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:17',_binary '\0'),(2689,'付款单创建','erp:finance-payment:create',3,2,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:54',_binary '\0'),(2690,'付款单更新','erp:finance-payment:update',3,3,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:58',_binary '\0'),(2691,'付款单删除','erp:finance-payment:delete',3,4,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:00',_binary '\0'),(2692,'付款单导出','erp:finance-payment:export',3,5,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:05',_binary '\0'),(2693,'付款单审批','erp:finance-payment:update-status',3,6,2687,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:08',_binary '\0'),(2694,'收款单','',2,2,2645,'receipt','ep:expand','erp/finance/receipt/index','ErpFinanceReceipt',0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','1','2024-02-15 19:35:45',_binary '\0'),(2695,'收款单查询','erp:finance-receipt:query',3,1,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:17',_binary '\0'),(2696,'收款单创建','erp:finance-receipt:create',3,2,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:54',_binary '\0'),(2697,'收款单更新','erp:finance-receipt:update',3,3,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:44:58',_binary '\0'),(2698,'收款单删除','erp:finance-receipt:delete',3,4,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:00',_binary '\0'),(2699,'收款单导出','erp:finance-receipt:export',3,5,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:05',_binary '\0'),(2700,'收款单审批','erp:finance-receipt:update-status',3,6,2694,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-02-05 16:08:56','','2024-02-12 00:45:08',_binary '\0'),(2701,'待办事项','',2,0,2397,'backlog','fa-solid:tasks','crm/backlog/index','CrmBacklog',0,_binary '',_binary '',_binary '','1','2024-02-17 17:17:11','1','2024-02-17 17:17:11',_binary '\0'),(2702,'ERP 首页','erp:statistics:query',2,0,2563,'home','ep:home-filled','erp/home/index.vue','ErpHome',0,_binary '',_binary '',_binary '','1','2024-02-18 16:49:40','1','2024-02-26 21:12:18',_binary '\0'),(2703,'商机状态配置','',2,4,2524,'business-status','fa-solid:charging-station','crm/business/status/index','CrmBusinessStatus',0,_binary '',_binary '',_binary '','1','2024-02-21 20:15:17','1','2024-02-21 20:15:17',_binary '\0'),(2704,'商机状态查询','crm:business-status:query',3,1,2703,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-21 20:35:36','1','2024-02-21 20:36:06',_binary '\0'),(2705,'商机状态创建','crm:business-status:create',3,2,2703,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-21 20:35:57','1','2024-02-21 20:35:57',_binary '\0'),(2706,'商机状态更新','crm:business-status:update',3,3,2703,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-21 20:36:21','1','2024-02-21 20:36:21',_binary '\0'),(2707,'商机状态删除','crm:business-status:delete',3,4,2703,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-21 20:36:36','1','2024-02-21 20:36:36',_binary '\0'),(2708,'合同配置','',2,5,2524,'contract-config','ep:connection','crm/contract/config/index','CrmContractConfig',0,_binary '',_binary '',_binary '','1','2024-02-24 16:44:40','1','2024-02-24 16:44:48',_binary '\0'),(2709,'客户公海配置查询','crm:customer-pool-config:query',3,2,2516,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-24 16:45:19','1','2024-02-24 16:45:28',_binary '\0'),(2710,'合同配置更新','crm:contract-config:update',3,1,2708,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-24 16:45:56','1','2024-02-24 16:45:56',_binary '\0'),(2711,'合同配置查询','crm:contract-config:query',3,2,2708,'','','','',0,_binary '',_binary '',_binary '','1','2024-02-24 16:46:16','1','2024-02-24 16:46:16',_binary '\0'),(2712,'客户分析','crm:statistics-customer:query',2,0,2560,'customer','ep:avatar','crm/statistics/customer/index.vue','CrmStatisticsCustomer',0,_binary '',_binary '',_binary '','1','2024-03-09 16:43:56','1','2024-05-04 20:38:50',_binary '\0'),(2713,'抄送我的','bpm:process-instance-cc:query',2,30,1200,'copy','ep:copy-document','bpm/task/copy/index','BpmProcessInstanceCopy',0,_binary '',_binary '',_binary '','1','2024-03-17 21:50:23','1','2024-04-24 19:55:12',_binary '\0'),(2714,'流程分类','',2,3,1186,'category','fa:object-ungroup','bpm/category/index','BpmCategory',0,_binary '',_binary '',_binary '','','2024-03-08 02:00:51','1','2024-03-21 23:51:18',_binary '\0'),(2715,'分类查询','bpm:category:query',3,1,2714,'','','','',0,_binary '',_binary '',_binary '','','2024-03-08 02:00:51','1','2024-03-19 14:36:25',_binary '\0'),(2716,'分类创建','bpm:category:create',3,2,2714,'','','','',0,_binary '',_binary '',_binary '','','2024-03-08 02:00:51','1','2024-03-19 14:36:31',_binary '\0'),(2717,'分类更新','bpm:category:update',3,3,2714,'','','','',0,_binary '',_binary '',_binary '','','2024-03-08 02:00:51','1','2024-03-19 14:36:35',_binary '\0'),(2718,'分类删除','bpm:category:delete',3,4,2714,'','','','',0,_binary '',_binary '',_binary '','','2024-03-08 02:00:51','1','2024-03-19 14:36:41',_binary '\0'),(2720,'发起流程','',2,0,1200,'create','fa-solid:grin-stars','bpm/processInstance/create/index','BpmProcessInstanceCreate',0,_binary '',_binary '\0',_binary '','1','2024-03-19 19:46:05','1','2024-03-23 19:03:42',_binary '\0'),(2721,'流程实例','',2,10,1186,'process-instance/manager','fa:square','bpm/processInstance/manager/index','BpmProcessInstanceManager',0,_binary '',_binary '',_binary '','1','2024-03-21 23:57:30','1','2024-03-21 23:57:30',_binary '\0'),(2722,'流程实例的查询（管理员）','bpm:process-instance:manager-query',3,1,2721,'','','','',0,_binary '',_binary '',_binary '','1','2024-03-22 08:18:27','1','2024-03-22 08:19:05',_binary '\0'),(2723,'流程实例的取消（管理员）','bpm:process-instance:cancel-by-admin',3,2,2721,'','','','',0,_binary '',_binary '',_binary '','1','2024-03-22 08:19:25','1','2024-03-22 08:19:25',_binary '\0'),(2724,'流程任务','',2,11,1186,'process-tasnk','ep:collection-tag','bpm/task/manager/index','BpmManagerTask',0,_binary '',_binary '',_binary '','1','2024-03-22 08:43:22','1','2024-03-22 08:43:27',_binary '\0'),(2725,'流程任务的查询（管理员）','bpm:task:mananger-query',3,1,2724,'','','','',0,_binary '',_binary '',_binary '','1','2024-03-22 08:43:49','1','2024-03-22 08:43:49',_binary '\0'),(2726,'流程监听器','',2,5,1186,'process-listener','fa:assistive-listening-systems','bpm/processListener/index','BpmProcessListener',0,_binary '',_binary '',_binary '','','2024-03-09 16:05:34','1','2024-03-23 13:13:38',_binary '\0'),(2727,'流程监听器查询','bpm:process-listener:query',3,1,2726,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 16:05:34','','2024-03-09 16:05:34',_binary '\0'),(2728,'流程监听器创建','bpm:process-listener:create',3,2,2726,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 16:05:34','','2024-03-09 16:05:34',_binary '\0'),(2729,'流程监听器更新','bpm:process-listener:update',3,3,2726,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 16:05:34','','2024-03-09 16:05:34',_binary '\0'),(2730,'流程监听器删除','bpm:process-listener:delete',3,4,2726,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 16:05:34','','2024-03-09 16:05:34',_binary '\0'),(2731,'流程表达式','',2,6,1186,'process-expression','fa:wpexplorer','bpm/processExpression/index','BpmProcessExpression',0,_binary '',_binary '',_binary '','','2024-03-09 22:35:08','1','2024-03-23 19:43:05',_binary '\0'),(2732,'流程表达式查询','bpm:process-expression:query',3,1,2731,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 22:35:08','','2024-03-09 22:35:08',_binary '\0'),(2733,'流程表达式创建','bpm:process-expression:create',3,2,2731,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 22:35:08','','2024-03-09 22:35:08',_binary '\0'),(2734,'流程表达式更新','bpm:process-expression:update',3,3,2731,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 22:35:08','','2024-03-09 22:35:08',_binary '\0'),(2735,'流程表达式删除','bpm:process-expression:delete',3,4,2731,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-03-09 22:35:08','','2024-03-09 22:35:08',_binary '\0'),(2736,'员工业绩','crm:statistics-performance:query',2,3,2560,'performance','ep:dish-dot','crm/statistics/performance/index','CrmStatisticsPerformance',0,_binary '',_binary '',_binary '','1','2024-04-05 13:49:20','1','2024-04-24 19:42:43',_binary '\0'),(2737,'客户画像','crm:statistics-portrait:query',2,4,2560,'portrait','ep:picture','crm/statistics/portrait/index','CrmStatisticsPortrait',0,_binary '',_binary '',_binary '','1','2024-04-05 13:57:40','1','2024-04-24 19:42:24',_binary '\0'),(2738,'销售漏斗','crm:statistics-funnel:query',2,5,2560,'funnel','ep:grape','crm/statistics/funnel/index','CrmStatisticsFunnel',0,_binary '',_binary '',_binary '','1','2024-04-13 10:53:26','1','2024-04-24 19:39:33',_binary '\0'),(2739,'消息中心','',1,7,1,'messages','ep:chat-dot-round','','',0,_binary '',_binary '',_binary '','1','2024-04-22 23:54:30','1','2024-04-23 09:36:35',_binary '\0'),(2740,'监控中心','',1,10,2,'monitors','ep:monitor','','',0,_binary '',_binary '',_binary '','1','2024-04-23 00:04:44','1','2024-04-23 00:04:44',_binary '\0'),(2741,'领取公海客户','crm:customer:receive',3,1,2546,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:47:45','1','2024-04-24 19:47:45',_binary '\0'),(2742,'分配公海客户','crm:customer:distribute',3,2,2546,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:48:05','1','2024-04-24 19:48:05',_binary '\0'),(2743,'商品统计查询','statistics:product:query',3,1,2545,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:50:05','1','2024-04-24 19:50:05',_binary '\0'),(2744,'商品统计导出','statistics:product:export',3,2,2545,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:50:26','1','2024-04-24 19:50:26',_binary '\0'),(2745,'支付渠道查询','pay:channel:query',3,10,1126,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:53:01','1','2024-04-24 19:53:01',_binary '\0'),(2746,'支付渠道创建','pay:channel:create',3,11,1126,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:53:18','1','2024-04-24 19:53:18',_binary '\0'),(2747,'支付渠道更新','pay:channel:update',3,12,1126,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:53:32','1','2024-04-24 19:53:58',_binary '\0'),(2748,'支付渠道删除','pay:channel:delete',3,13,1126,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:54:34','1','2024-04-24 19:54:34',_binary '\0'),(2749,'商品收藏查询','product:favorite:query',3,10,2014,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:55:47','1','2024-04-24 19:55:47',_binary '\0'),(2750,'商品浏览查询','product:browse-history:query',3,20,2014,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:57:43','1','2024-04-24 19:57:43',_binary '\0'),(2751,'售后同意','trade:after-sale:agree',3,2,2073,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:58:40','1','2024-04-24 19:58:40',_binary '\0'),(2752,'售后不同意','trade:after-sale:disagree',3,3,2073,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 19:59:03','1','2024-04-24 19:59:03',_binary '\0'),(2753,'售后确认退货','trade:after-sale:receive',3,4,2073,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 20:00:07','1','2024-04-24 20:00:07',_binary '\0'),(2754,'售后确认退款','trade:after-sale:refund',3,5,2073,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 20:00:24','1','2024-04-24 20:00:24',_binary '\0'),(2755,'删除项目','report:go-view-project:delete',3,2,2153,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 20:01:37','1','2024-04-24 20:01:37',_binary '\0'),(2756,'会员等级记录查询','member:level-record:query',3,10,2325,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 20:02:32','1','2024-04-24 20:02:32',_binary '\0'),(2757,'会员经验记录查询','member:experience-record:query',3,11,2325,'','','','',0,_binary '',_binary '',_binary '','1','2024-04-24 20:02:51','1','2024-04-24 20:02:51',_binary '\0'),(2758,'AI 大模型','',1,400,0,'/ai','tabler:ai','','',0,_binary '',_binary '',_binary '','1','2024-05-07 15:07:56','1','2025-04-19 18:57:05',_binary '\0'),(2759,'AI 对话','',2,1,2758,'chat','ep:message','ai/chat/index/index.vue','AiChat',0,_binary '',_binary '',_binary '','1','2024-05-07 15:09:14','1','2024-07-07 17:15:36',_binary '\0'),(2760,'控制台','',1,100,2758,'console','ep:setting','','',0,_binary '',_binary '',_binary '','1','2024-05-09 22:39:09','1','2024-05-24 23:34:21',_binary '\0'),(2761,'API 密钥','',2,0,2760,'api-key','ep:key','ai/model/apiKey/index.vue','AiApiKey',0,_binary '',_binary '',_binary '','','2024-05-09 14:52:56','1','2024-05-10 22:44:08',_binary '\0'),(2762,'API 密钥查询','ai:api-key:query',3,1,2761,'','','','',0,_binary '',_binary '',_binary '','','2024-05-09 14:52:56','1','2024-05-13 20:36:32',_binary '\0'),(2763,'API 密钥创建','ai:api-key:create',3,2,2761,'','','','',0,_binary '',_binary '',_binary '','','2024-05-09 14:52:56','1','2024-05-13 20:36:26',_binary '\0'),(2764,'API 密钥更新','ai:api-key:update',3,3,2761,'','','','',0,_binary '',_binary '',_binary '','','2024-05-09 14:52:56','1','2024-05-13 20:36:42',_binary '\0'),(2765,'API 密钥删除','ai:api-key:delete',3,4,2761,'','','','',0,_binary '',_binary '',_binary '','','2024-05-09 14:52:56','1','2024-05-13 20:36:48',_binary '\0'),(2767,'模型配置','',2,0,2760,'model','fa-solid:abacus','ai/model/model/index.vue','AiModel',0,_binary '',_binary '',_binary '','','2024-05-10 14:42:48','1','2025-03-03 09:57:41',_binary '\0'),(2768,'聊天模型查询','ai:model:query',3,1,2767,'','','','',0,_binary '',_binary '',_binary '','','2024-05-10 14:42:48','1','2025-03-03 09:19:46',_binary '\0'),(2769,'聊天模型创建','ai:model:create',3,2,2767,'','','','',0,_binary '',_binary '',_binary '','','2024-05-10 14:42:48','1','2025-03-03 09:20:10',_binary '\0'),(2770,'聊天模型更新','ai:model:update',3,3,2767,'','','','',0,_binary '',_binary '',_binary '','','2024-05-10 14:42:48','1','2025-03-03 09:20:14',_binary '\0'),(2771,'聊天模型删除','ai:model:delete',3,4,2767,'','','','',0,_binary '',_binary '',_binary '','','2024-05-10 14:42:48','1','2025-03-03 09:20:27',_binary '\0'),(2773,'聊天角色','',2,0,2760,'chat-role','fa:user-secret','ai/model/chatRole/index.vue','AiChatRole',0,_binary '',_binary '',_binary '','','2024-05-13 12:39:28','1','2024-05-13 20:41:45',_binary '\0'),(2774,'聊天角色查询','ai:chat-role:query',3,1,2773,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-05-13 12:39:28','','2024-05-13 12:39:28',_binary '\0'),(2775,'聊天角色创建','ai:chat-role:create',3,2,2773,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-05-13 12:39:28','','2024-05-13 12:39:28',_binary '\0'),(2776,'聊天角色更新','ai:chat-role:update',3,3,2773,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-05-13 12:39:28','','2024-05-13 12:39:28',_binary '\0'),(2777,'聊天角色删除','ai:chat-role:delete',3,4,2773,'','','','',0,_binary '',_binary '',_binary '','1','2024-05-13 21:43:38','1','2024-05-13 21:43:38',_binary '\0'),(2778,'聊天管理','',2,10,2760,'chat-conversation','ep:chat-square','ai/chat/manager/index.vue','AiChatManager',0,_binary '',_binary '',_binary '','','2024-05-24 15:39:18','1','2024-06-26 21:36:56',_binary '\0'),(2779,'会话查询','ai:chat-conversation:query',3,1,2778,'','','','',0,_binary '',_binary '',_binary '','','2024-05-24 15:39:18','1','2024-05-25 08:38:30',_binary '\0'),(2780,'会话删除','ai:chat-conversation:delete',3,2,2778,'','','','',0,_binary '',_binary '',_binary '','','2024-05-24 15:39:18','1','2024-05-25 08:38:40',_binary '\0'),(2781,'消息查询','ai:chat-message:query',3,11,2778,'','','','',0,_binary '',_binary '',_binary '','1','2024-05-25 08:38:56','1','2024-05-25 08:38:56',_binary '\0'),(2782,'消息删除','ai:chat-message:delete',3,12,2778,'','','','',0,_binary '',_binary '',_binary '','1','2024-05-25 08:39:10','1','2024-05-25 08:39:10',_binary '\0'),(2783,'AI 绘画','',2,2,2758,'image','ep:picture-rounded','ai/image/index/index.vue','AiImage',0,_binary '',_binary '',_binary '','1','2024-05-26 11:45:17','1','2024-07-07 17:18:59',_binary '\0'),(2784,'绘画管理','',2,11,2760,'image','fa:file-image-o','ai/image/manager/index.vue','AiImageManager',0,_binary '',_binary '',_binary '','','2024-06-26 13:32:31','1','2024-06-26 21:37:13',_binary '\0'),(2785,'绘画查询','ai:image:query',3,1,2784,'','','','',0,_binary '',_binary '',_binary '','','2024-06-26 13:32:31','1','2024-06-26 22:21:57',_binary '\0'),(2786,'绘画删除','ai:image:delete',3,4,2784,'','','','',0,_binary '',_binary '',_binary '','','2024-06-26 13:32:31','1','2024-06-26 22:22:08',_binary '\0'),(2787,'绘图更新','ai:image:update',3,2,2784,'','','','',0,_binary '',_binary '',_binary '','1','2024-06-26 22:47:56','1','2024-08-31 09:21:35',_binary '\0'),(2788,'音乐管理','',2,12,2760,'music','fa:music','ai/music/manager/index.vue','AiMusicManager',0,_binary '',_binary '',_binary '','','2024-06-27 15:03:33','1','2024-06-27 23:04:19',_binary '\0'),(2789,'音乐查询','ai:music:query',3,1,2788,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-06-27 15:03:33','','2024-06-27 15:03:33',_binary '\0'),(2790,'音乐更新','ai:music:update',3,3,2788,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-06-27 15:03:33','','2024-06-27 15:03:33',_binary '\0'),(2791,'音乐删除','ai:music:delete',3,4,2788,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-06-27 15:03:33','','2024-06-27 15:03:33',_binary '\0'),(2792,'AI 写作','',2,3,2758,'write','fa-solid:book-reader','ai/write/index/index.vue','AiWrite',0,_binary '',_binary '',_binary '','1','2024-07-08 09:26:44','1','2024-07-16 13:03:06',_binary '\0'),(2793,'写作管理','',2,13,2760,'write','fa:bookmark-o','ai/write/manager/index.vue','AiWriteManager',0,_binary '',_binary '',_binary '','','2024-07-10 13:24:34','1','2024-07-10 21:31:59',_binary '\0'),(2794,'AI 写作查询','ai:write:query',3,1,2793,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-07-10 13:24:34','','2024-07-10 13:24:34',_binary '\0'),(2795,'AI 写作删除','ai:write:delete',3,4,2793,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-07-10 13:24:34','','2024-07-10 13:24:34',_binary '\0'),(2796,'AI 音乐','',2,4,2758,'music','fa:music','ai/music/index/index.vue','AiMusic',0,_binary '',_binary '',_binary '','1','2024-07-17 09:21:12','1','2024-07-29 21:11:52',_binary '\0'),(2797,'客服中心','',2,100,2362,'kefu','fa-solid:user-alt','mall/promotion/kefu/index','KeFu',0,_binary '',_binary '',_binary '','1','2024-07-17 23:49:05','1','2024-07-17 23:49:16',_binary '\0'),(2798,'AI 思维导图','',2,6,2758,'mind-map','fa:sitemap','ai/mindmap/index/index.vue','AiMindMap',0,_binary '',_binary '',_binary '','1','2024-07-29 21:31:59','1','2025-03-02 18:57:31',_binary '\0'),(2799,'导图管理','',2,14,2760,'mind-map','fa:map','ai/mindmap/manager/index','AiMindMapManager',0,_binary '',_binary '',_binary '','','2024-08-10 09:15:09','1','2024-08-10 17:24:28',_binary '\0'),(2800,'思维导图查询','ai:mind-map:query',3,1,2799,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 09:15:09','','2024-08-10 09:15:09',_binary '\0'),(2801,'思维导图删除','ai:mind-map:delete',3,4,2799,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 09:15:09','','2024-08-10 09:15:09',_binary '\0'),(2802,'会话查询','promotion:kefu-conversation:query',3,1,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:17:52','1','2024-08-31 09:18:52',_binary '\0'),(2803,'会话更新','promotion:kefu-conversation:update',3,2,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:18:15','1','2024-08-31 09:19:29',_binary '\0'),(2804,'消息查询','promotion:kefu-message:query',3,10,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:18:42','1','2024-08-31 09:18:42',_binary '\0'),(2805,'会话删除','promotion:kefu-conversation:delete',3,3,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:19:51','1','2024-08-31 09:20:32',_binary '\0'),(2806,'消息发送','promotion:kefu-message:send',3,12,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:20:06','1','2024-08-31 09:20:06',_binary '\0'),(2807,'消息更新','promotion:kefu-message:update',3,11,2797,'','','','',0,_binary '',_binary '',_binary '','1','2024-08-31 09:20:22','1','2024-08-31 09:20:22',_binary '\0'),(2808,'积分商城','',2,5,2030,'point-activity','ep:bowl','mall/promotion/point/activity/index','PointActivity',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-23 09:14:43',_binary '\0'),(2809,'积分商城活动查询','promotion:point-activity:query',3,1,2808,'','','','',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-22 14:49:05',_binary '\0'),(2810,'积分商城活动创建','promotion:point-activity:create',3,2,2808,'','','','',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-22 14:49:08',_binary '\0'),(2811,'积分商城活动更新','promotion:point-activity:update',3,3,2808,'','','','',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-22 14:49:10',_binary '\0'),(2812,'积分商城活动删除','promotion:point-activity:delete',3,4,2808,'','','','',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-22 14:49:12',_binary '\0'),(2813,'积分商城活动导出','promotion:point-activity:export',3,5,2808,'','','','',0,_binary '',_binary '',_binary '','','2024-09-21 05:36:42','1','2024-09-22 14:49:27',_binary '\0'),(2912,'创建推广员','trade:brokerage-user:create',3,7,2346,'','','','',0,_binary '',_binary '',_binary '','1','2024-12-01 14:32:39','1','2024-12-01 14:32:39',_binary '\0'),(2913,'流程清理','bpm:model:clean',3,7,1193,'','','','',0,_binary '',_binary '',_binary '','1','2025-01-17 19:32:06','1','2025-01-17 19:32:06',_binary '\0'),(2914,'积分商城活动关闭','promotion:point-activity:close',3,6,2808,'','','','',0,_binary '',_binary '',_binary '','1','2025-01-23 20:23:34','1','2025-01-23 20:23:34',_binary '\0'),(2915,'AI 知识库','',2,5,2758,'knowledge','ep:notebook','ai/knowledge/knowledge/index','AiKnowledge',0,_binary '',_binary '',_binary '','','2025-02-28 07:04:21','1','2025-03-02 18:58:37',_binary '\0'),(2916,'AI 知识库查询','ai:knowledge:query',3,1,2915,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-02-28 07:04:21','','2025-02-28 07:04:21',_binary '\0'),(2917,'AI 知识库创建','ai:knowledge:create',3,2,2915,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-02-28 07:04:21','','2025-02-28 07:04:21',_binary '\0'),(2918,'AI 知识库更新','ai:knowledge:update',3,3,2915,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-02-28 07:04:21','','2025-02-28 07:04:21',_binary '\0'),(2919,'AI 知识库删除','ai:knowledge:delete',3,4,2915,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-02-28 07:04:21','','2025-02-28 07:04:21',_binary '\0'),(2920,'工具管理','',2,0,2760,'tool','fa-solid:tools','ai/model/tool/index.vue','AiTool',0,_binary '',_binary '',_binary '','','2025-03-14 11:19:29','1','2025-03-14 19:20:18',_binary '\0'),(2921,'工具查询','ai:tool:query',3,1,2920,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-03-14 11:19:29','','2025-03-14 11:19:29',_binary '\0'),(2922,'工具创建','ai:tool:create',3,2,2920,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-03-14 11:19:29','','2025-03-14 11:19:29',_binary '\0'),(2923,'工具更新','ai:tool:update',3,3,2920,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-03-14 11:19:29','','2025-03-14 11:19:29',_binary '\0'),(2924,'工具删除','ai:tool:delete',3,4,2920,'','','',NULL,0,_binary '',_binary '',_binary '','','2025-03-14 11:19:29','','2025-03-14 11:19:29',_binary '\0'),(4000,'IoT 物联网','',1,500,0,'/iot','fa-solid:hdd','','',0,_binary '',_binary '',_binary '','1','2024-08-10 09:55:28','1','2024-12-07 15:58:34',_binary '\0'),(4001,'设备接入','',1,2,4000,'device','ep:platform','','',0,_binary '',_binary '',_binary '','1','2024-08-10 09:57:56','1','2025-02-27 08:39:49',_binary '\0'),(4002,'产品管理','',2,1,4001,'product','fa-solid:tools','iot/product/product/index','IoTProduct',0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','1','2025-06-15 20:56:06',_binary '\0'),(4003,'产品查询','iot:product:query',3,1,4002,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','','2024-12-07 15:55:00',_binary '\0'),(4004,'产品创建','iot:product:create',3,2,4002,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','','2024-12-07 15:55:03',_binary '\0'),(4005,'产品更新','iot:product:update',3,3,4002,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','','2024-12-07 15:55:05',_binary '\0'),(4006,'产品删除','iot:product:delete',3,4,4002,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','','2024-12-07 15:55:06',_binary '\0'),(4007,'产品导出','iot:product:export',3,5,4002,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-08-10 02:38:02','','2024-12-07 15:55:13',_binary '\0'),(4008,'设备管理','',2,2,4001,'device','fa:mobile','iot/device/device/index','IoTDevice',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2025-06-15 20:56:10',_binary '\0'),(4009,'设备查询','iot:device:query',3,1,4008,'','','','',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2024-12-07 15:55:40',_binary '\0'),(4010,'设备创建','iot:device:create',3,2,4008,'','','','',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2024-12-07 15:55:41',_binary '\0'),(4011,'设备更新','iot:device:update',3,3,4008,'','','','',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2024-12-07 15:55:42',_binary '\0'),(4012,'设备删除','iot:device:delete',3,4,4008,'','','','',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2024-12-07 15:55:43',_binary '\0'),(4013,'设备导出','iot:device:export',3,5,4008,'','','','',0,_binary '',_binary '',_binary '','','2024-09-16 18:48:19','1','2024-12-07 15:55:44',_binary '\0'),(4014,'产品分类','',2,3,4001,'product-category','ep:notebook','iot/product/category/index','IotProductCategory',0,_binary '',_binary '',_binary '','','2024-12-07 16:01:35','1','2025-06-15 20:56:39',_binary '\0'),(4015,'产品分类查询','iot:product-category:query',3,1,4014,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-07 16:01:35','','2024-12-07 16:01:35',_binary '\0'),(4016,'产品分类创建','iot:product-category:create',3,2,4014,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-07 16:01:35','','2024-12-07 16:01:35',_binary '\0'),(4017,'产品分类更新','iot:product-category:update',3,3,4014,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-07 16:01:35','','2024-12-07 16:01:35',_binary '\0'),(4018,'产品分类删除','iot:product-category:delete',3,4,4014,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-07 16:01:35','','2024-12-07 16:01:35',_binary '\0'),(4031,'设备分组','',2,3,4001,'device-group','fa-solid:layer-group','iot/device/group/index','IotDeviceGroup',0,_binary '',_binary '',_binary '','','2024-12-14 17:08:29','1','2024-12-14 17:09:17',_binary '\0'),(4032,'设备分组查询','iot:device-group:query',3,1,4031,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-14 17:08:29','','2024-12-14 17:08:29',_binary '\0'),(4033,'设备分组创建','iot:device-group:create',3,2,4031,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-14 17:08:29','','2024-12-14 17:08:29',_binary '\0'),(4034,'设备分组更新','iot:device-group:update',3,3,4031,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-14 17:08:29','','2024-12-14 17:08:29',_binary '\0'),(4035,'设备分组删除','iot:device-group:delete',3,4,4031,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-14 17:08:29','','2024-12-14 17:08:29',_binary '\0'),(4036,'设备导入','iot:device:import',3,6,4008,'','','','',0,_binary '',_binary '',_binary '','1','2024-12-15 10:35:47','1','2024-12-15 10:35:47',_binary '\0'),(4037,'产品物模型','',2,99,4001,'thing-model','ep:mostly-cloudy','iot/thingmodel/index','IoTThingModel',0,_binary '\0',_binary '\0',_binary '\0','','2024-12-16 17:17:50','1','2025-06-15 20:56:19',_binary '\0'),(4038,'产品物模型功能查询','iot:thing-model:query',3,1,4037,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-16 17:17:51','','2025-03-17 09:14:54',_binary '\0'),(4039,'产品物模型功能创建','iot:thing-model:create',3,2,4037,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-16 17:17:52','','2025-03-17 09:14:58',_binary '\0'),(4040,'产品物模型功能更新','iot:thing-model:update',3,3,4037,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-16 17:17:52','','2025-03-17 09:15:03',_binary '\0'),(4041,'产品物模型功能删除','iot:thing-model:delete',3,4,4037,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-16 17:17:52','','2025-03-17 09:15:06',_binary '\0'),(4042,'产品物模型功能导出','iot:thing-model:export',3,5,4037,'','','',NULL,0,_binary '',_binary '',_binary '','','2024-12-16 17:17:53','','2025-03-17 09:15:09',_binary '\0'),(4043,'设备消息发送','iot:device:message-send',3,12,4008,'','','','',0,_binary '',_binary '',_binary '','1','2025-01-28 04:40:16','1','2025-06-14 14:09:26',_binary '\0'),(4044,'设备属性查询','iot:device:property-query',3,10,4008,'','','','',0,_binary '',_binary '',_binary '','1','2025-01-28 11:52:54','1','2025-01-28 11:52:54',_binary '\0'),(4045,'设备消息查询','iot:device:message-query',3,11,4008,'','','','',0,_binary '',_binary '',_binary '','1','2025-01-28 11:53:22','1','2025-06-14 11:11:20',_binary '\0'),(4047,'运维管理','',1,4,4000,'operation','fa:align-center','','',0,_binary '',_binary '',_binary '','1','2025-02-05 22:21:37','\"1\"','2025-06-30 20:12:48',_binary '\0'),(4048,'规则引擎','',1,3,4000,'rule','fa-solid:cogs','','',0,_binary '',_binary '',_binary '','1','2025-02-11 14:10:54','1','2025-02-11 14:10:54',_binary '\0'),(4049,'场景联动','',2,1,4048,'scene','ep:link','iot/rule/scene/index','IoTSceneRule',0,_binary '',_binary '',_binary '','1','2025-02-11 14:12:44','\"1\"','2025-08-09 15:38:32',_binary '\0'),(4050,'IoT 首页','',2,1,4000,'home','ep:home-filled','iot/home/index','IotHome',0,_binary '',_binary '',_binary '','1','2025-02-27 08:39:35','1','2025-06-24 14:22:50',_binary '\0'),(4051,'数据流转','',2,2,4048,'data-rule','ep:guide','iot/rule/data/index','IoTDataRule',0,_binary '',_binary '',_binary '','','2025-03-09 13:47:11','\"1\"','2025-08-09 15:38:37',_binary '\0'),(4052,'数据流转规则查询','iot:data-rule:query',3,1,4051,'','','','',0,_binary '',_binary '',_binary '','','2025-03-09 13:47:11','1','2025-06-24 20:48:04',_binary '\0'),(4053,'数据流转规则创建','iot:data-rule:create',3,2,4051,'','','','',0,_binary '',_binary '',_binary '','','2025-03-09 13:47:11','1','2025-06-24 20:48:08',_binary '\0'),(4054,'数据流转规则更新','iot:data-rule:update',3,3,4051,'','','','',0,_binary '',_binary '',_binary '','','2025-03-09 13:47:11','1','2025-06-24 20:48:11',_binary '\0'),(4055,'数据流转规则删除','iot:data-rule:delete',3,4,4051,'','','','',0,_binary '',_binary '',_binary '','','2025-03-09 13:47:12','1','2025-06-24 20:48:15',_binary '\0'),(5000,'AI 工作流','',2,5,2758,'workflow','fa:hand-grab-o','ai/workflow/index.vue','AiWorkflow',0,_binary '',_binary '',_binary '','1','2025-03-25 09:50:27','1','2025-05-03 18:55:12',_binary '\0'),(5001,'AI 工作流查询','ai:workflow:query',3,1,5000,'','','','',0,_binary '',_binary '',_binary '','1','2025-03-25 09:51:11','1','2025-03-25 09:51:11',_binary '\0'),(5002,'AI 工作流创建','ai:workflow:create',3,2,5000,'','','','',0,_binary '',_binary '',_binary '','1','2025-03-25 09:51:28','1','2025-03-25 09:51:28',_binary '\0'),(5003,'AI 工作流更新','ai:workflow:update',3,3,5000,'','','','',0,_binary '',_binary '',_binary '','1','2025-03-25 09:51:42','1','2025-03-25 09:51:42',_binary '\0'),(5004,'AI 工作流删除','ai:workflow:delete',3,4,5000,'','','','',0,_binary '',_binary '',_binary '','1','2025-03-25 09:51:55','1','2025-03-25 09:52:03',_binary '\0'),(5005,'AI 工作流测试','ai:workflow:test',3,5,5000,'','','','',0,_binary '',_binary '',_binary '','1','2025-03-30 10:29:41','1','2025-03-30 10:29:41',_binary '\0'),(5009,'仪表盘设计器','',2,1,1281,'jimu-bi','fa:y-combinator','report/jmreport/bi','JimuBI',0,_binary '',_binary '',_binary '','1','2025-05-03 09:57:15','1','2025-05-03 10:02:05',_binary '\0'),(5010,'租户切换','system:tenant:visit',3,999,1138,'','','','',0,_binary '',_binary '',_binary '','1','2025-05-05 15:25:32','1','2025-05-05 15:25:32',_binary '\0'),(5011,'转账订单查询','pay:transfer:query',3,1,2559,'','','','',0,_binary '',_binary '',_binary '','1','2025-05-08 12:46:53','1','2025-05-08 12:46:53',_binary '\0'),(5012,'转账订单导出','pay:transfer:export',3,2,2559,'','','','',0,_binary '',_binary '',_binary '','1','2025-05-10 17:00:28','1','2025-05-10 17:00:28',_binary '\0'),(5013,'场景联动查询','iot:rule-scene:query',3,1,4049,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-20 16:53:01','1','2025-06-20 16:53:01',_binary '\0'),(5014,'场景联动创建','iot:rule-scene:create',3,2,4049,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-20 16:54:31','1','2025-06-20 16:54:31',_binary '\0'),(5015,'场景联动更新','iot:rule-scene:update',3,3,4049,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-20 16:54:47','1','2025-06-20 16:54:47',_binary '\0'),(5016,'场景联动删除','iot:rule-scene:delete',3,4,4049,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-20 16:55:04','1','2025-06-20 16:55:27',_binary '\0'),(5017,'场景联动导出','iot:rule-scene:export',3,5,4049,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-20 16:57:56','1','2025-06-20 16:57:56',_binary '\0'),(5018,'数据流转目的查询','iot:data-sink:query',3,11,4051,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-24 20:48:40','1','2025-06-24 20:48:40',_binary '\0'),(5019,'数据流转目的创建','iot:data-sink:create',3,12,4051,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-24 20:48:57','1','2025-06-24 20:48:57',_binary '\0'),(5020,'数据流转目的更新','iot:data-sink:update',3,13,4051,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-24 20:49:10','1','2025-06-24 20:49:10',_binary '\0'),(5021,'数据流转目的删除','iot:data-sink:delete',3,14,4051,'','','','',0,_binary '',_binary '',_binary '','1','2025-06-24 20:49:23','1','2025-06-24 20:49:23',_binary '\0'),(5022,'告警配置','',2,1,5028,'config','fa:connectdevelop','iot/alert/config/index','IotAlertConfig',0,_binary '',_binary '',_binary '','','2025-06-27 14:28:59','1','2025-06-27 22:31:19',_binary '\0'),(5023,'告警配置查询','iot:alert-config:query',3,1,5022,'','','','',0,_binary '',_binary '',_binary '','','2025-06-27 14:28:59','1','2025-06-28 16:00:31',_binary '\0'),(5024,'告警配置创建','iot:alert-config:create',3,2,5022,'','','','',0,_binary '',_binary '',_binary '','','2025-06-27 14:28:59','1','2025-06-28 16:00:35',_binary '\0'),(5025,'告警配置更新','iot:alert-config:update',3,3,5022,'','','','',0,_binary '',_binary '',_binary '','','2025-06-27 14:28:59','1','2025-06-28 16:00:43',_binary '\0'),(5026,'告警配置删除','iot:alert-config:delete',3,4,5022,'','','','',0,_binary '',_binary '',_binary '','','2025-06-27 14:29:00','1','2025-06-28 16:00:39',_binary '\0'),(5028,'告警中心','',1,3,4000,'alert','fa:soundcloud','','',0,_binary '',_binary '',_binary '','1','2025-06-27 22:30:04','1','2025-06-27 22:30:19',_binary '\0'),(5029,'告警记录','',2,2,5028,'record','fa-solid:record-vinyl','iot/alert/record/index','IotAlertRecord',0,_binary '',_binary '',_binary '','','2025-06-28 07:59:32','1','2025-06-28 16:01:48',_binary '\0'),(5030,'告警记录查询','iot:alert-record:query',3,1,5029,'','','','',0,_binary '',_binary '',_binary '','','2025-06-28 07:59:32','1','2025-06-28 16:00:53',_binary '\0'),(5031,'告警记录处理','iot:alert-record:process',3,2,5029,'','','','',0,_binary '',_binary '',_binary '','','2025-06-28 07:59:32','1','2025-06-28 16:01:04',_binary '\0'),(5032,'OTA 固件','',2,1,4047,'ota/firmware','fa-solid:award','iot/ota/firmware/index','IoTOtaFirmware',0,_binary '',_binary '',_binary '','','2025-06-30 07:50:29','\"1\"','2025-06-30 20:13:28',_binary '\0'),(5033,'OTA 固件查询','iot:ota-firmware:query',3,1,5032,'','','','',0,_binary '',_binary '',_binary '','','2025-06-30 07:50:29','\"1\"','2025-06-30 17:38:12',_binary '\0'),(5034,'OTA 固件创建','iot:ota-firmware:create',3,2,5032,'','','','',0,_binary '',_binary '',_binary '','','2025-06-30 07:50:29','\"1\"','2025-06-30 17:38:21',_binary '\0'),(5035,'OTA 固件更新','iot:ota-firmware:update',3,3,5032,'','','','',0,_binary '',_binary '',_binary '','','2025-06-30 07:50:29','\"1\"','2025-06-30 17:38:29',_binary '\0'),(5036,'OTA 固件删除','iot:ota-firmware:delete',3,4,5032,'','','','',0,_binary '',_binary '',_binary '','','2025-06-30 07:50:29','\"1\"','2025-06-30 17:38:37',_binary '\0'),(5037,'OTA 升级任务查询','iot:ota-task:create',3,11,5032,'','','','',0,_binary '',_binary '',_binary '','1','2025-07-02 23:56:56','1','2025-07-02 23:56:56',_binary '\0'),(5038,'OTA 升级任务取消','iot:ota-task:cancel',3,13,5032,'','','','',0,_binary '',_binary '',_binary '','1','2025-07-02 23:57:26','1','2025-07-02 23:57:26',_binary '\0'),(5039,'OTA 升级任务创建','iot:ota-task:create',3,12,5032,'','','','',0,_binary '',_binary '',_binary '','1','2025-07-02 23:57:52','1','2025-07-02 23:57:52',_binary '\0'),(5040,'OTA 升级记录查询','iot:ota-task-record:query',3,21,5032,'','','','',0,_binary '',_binary '',_binary '','1','2025-07-02 23:58:30','1','2025-07-02 23:58:30',_binary '\0'),(5041,'OTA 升级记录取消','iot:ota-task-record:cancel',3,23,5032,'','','','',0,_binary '',_binary '',_binary '','1','2025-07-02 23:59:18','1','2025-07-02 23:59:18',_binary '\0'),(5042,'模版消息','',2,5,2084,'message-template','ep:notebook','mp/messageTemplate/index','MpMessageTemplate',0,_binary '',_binary '',_binary '','1','2025-11-26 16:45:35','1','2025-11-26 18:44:52',_binary '\0'),(5043,'查询模版消息','mp:message-template:query',3,1,5042,'','','','',0,_binary '',_binary '',_binary '','1','2025-11-26 17:00:15','1','2025-11-26 18:45:00',_binary '\0'),(5044,'删除模版消息','mp:message-template:delete',3,2,5042,'','','','',0,_binary '',_binary '',_binary '','1','2025-11-26 17:00:31','1','2025-11-26 18:45:05',_binary '\0'),(5045,'同步公众号模板','mp:message-template:sync',3,3,5042,'','','','',0,_binary '',_binary '',_binary '','1','2025-11-26 17:00:55','1','2025-11-26 17:00:55',_binary '\0'),(5046,'给粉丝发送模版消息','mp:message-template:send',3,4,5042,'','','','',0,_binary '',_binary '',_binary '','1','2025-11-26 17:01:11','1','2025-11-26 17:01:11',_binary '\0');
/*!40000 ALTER TABLE `system_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notice`
--

DROP TABLE IF EXISTS `system_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_notice` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告内容',
  `type` tinyint NOT NULL COMMENT '公告类型（1通知 2公告）',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notice`
--

LOCK TABLES `system_notice` WRITE;
/*!40000 ALTER TABLE `system_notice` DISABLE KEYS */;
INSERT INTO `system_notice` VALUES (1,'芋道的公众','<p>新版本内容133222</p>',1,0,'admin','2021-01-05 17:03:48','\"1\"','2025-08-31 09:38:22',_binary '\0',1),(2,'维护通知：2018-07-01 系统凌晨维护','<p><img src=\"http://test.yudao.iocoder.cn/b7cb3cf49b4b3258bf7309a09dd2f4e5.jpg\" alt=\"\" data-href=\"\">11112222<img src=\"http://test.yudao.iocoder.cn/fe44fc7bdb82ca421184b2eebbaee9e2148d4a1827479a4eb4521e11d2a062ba.png\" alt=\"image\" data-href=\"http://test.yudao.iocoder.cn/fe44fc7bdb82ca421184b2eebbaee9e2148d4a1827479a4eb4521e11d2a062ba.png\">3333</p>',2,1,'admin','2021-01-05 17:03:48','1','2025-04-18 23:56:40',_binary '\0',1),(4,'我是测试标题','<p>哈哈哈哈123</p>',1,0,'110','2022-02-22 01:01:25','110','2022-02-22 01:01:46',_binary '\0',121);
/*!40000 ALTER TABLE `system_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notify_message`
--

DROP TABLE IF EXISTS `system_notify_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_notify_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `template_id` bigint NOT NULL COMMENT '模版编号',
  `template_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `template_nickname` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模版发送人名称',
  `template_content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模版内容',
  `template_type` int NOT NULL COMMENT '模版类型',
  `template_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模版参数',
  `read_status` bit(1) NOT NULL COMMENT '是否已读',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='站内信消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notify_message`
--

LOCK TABLES `system_notify_message` WRITE;
/*!40000 ALTER TABLE `system_notify_message` DISABLE KEYS */;
INSERT INTO `system_notify_message` VALUES (2,1,2,1,'test','123','我是 1，我开始 2 了',1,'{\"name\":\"1\",\"what\":\"2\"}',_binary '','2025-04-21 14:59:37','1','2023-01-28 11:44:08','1','2025-04-21 14:59:37',_binary '\0',1),(3,1,2,1,'test','123','我是 1，我开始 2 了',1,'{\"name\":\"1\",\"what\":\"2\"}',_binary '','2025-04-21 14:59:37','1','2023-01-28 11:45:04','1','2025-04-21 14:59:37',_binary '\0',1),(4,103,2,2,'register','系统消息','你好，欢迎 哈哈 加入大家庭！',2,'{\"name\":\"哈哈\"}',_binary '\0',NULL,'1','2023-01-28 21:02:20','1','2023-01-28 21:02:20',_binary '\0',1),(5,1,2,1,'test','123','我是 芋艿，我开始 写代码 了',1,'{\"name\":\"芋艿\",\"what\":\"写代码\"}',_binary '','2025-04-21 14:59:37','1','2023-01-28 22:21:42','1','2025-04-21 14:59:37',_binary '\0',1),(6,1,2,1,'test','123','我是 芋艿，我开始 写代码 了',1,'{\"name\":\"芋艿\",\"what\":\"写代码\"}',_binary '','2025-04-21 14:59:36','1','2023-01-28 22:22:07','1','2025-04-21 14:59:36',_binary '\0',1),(7,1,2,1,'test','123','我是 2，我开始 3 了',1,'{\"name\":\"2\",\"what\":\"3\"}',_binary '','2025-04-21 14:59:35','1','2023-01-28 23:45:21','1','2025-04-21 14:59:35',_binary '\0',1),(8,1,2,2,'register','系统消息','你好，欢迎 123 加入大家庭！',2,'{\"name\":\"123\"}',_binary '','2025-04-21 14:59:35','1','2023-01-28 23:50:21','1','2025-04-21 14:59:35',_binary '\0',1),(9,247,1,4,'brokerage_withdraw_audit_approve','system','您在2023-09-28 08:35:46提现￥0.09元的申请已通过审核',2,'{\"reason\":null,\"createTime\":\"2023-09-28 08:35:46\",\"price\":\"0.09\"}',_binary '\0',NULL,'1','2023-09-28 16:36:22','1','2023-09-28 16:36:22',_binary '\0',1),(10,247,1,4,'brokerage_withdraw_audit_approve','system','您在2023-09-30 20:59:40提现￥1.00元的申请已通过审核',2,'{\"reason\":null,\"createTime\":\"2023-09-30 20:59:40\",\"price\":\"1.00\"}',_binary '\0',NULL,'1','2023-10-03 12:11:34','1','2023-10-03 12:11:34',_binary '\0',1);
/*!40000 ALTER TABLE `system_notify_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_notify_template`
--

DROP TABLE IF EXISTS `system_notify_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_notify_template` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模版编码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发送人名称',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模版内容',
  `type` tinyint NOT NULL COMMENT '类型',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参数数组',
  `status` tinyint NOT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='站内信模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_notify_template`
--

LOCK TABLES `system_notify_template` WRITE;
/*!40000 ALTER TABLE `system_notify_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_notify_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_oauth2_access_token`
--

DROP TABLE IF EXISTS `system_oauth2_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_oauth2_access_token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `user_info` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户信息',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '访问令牌',
  `refresh_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '刷新令牌',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_access_token` (`access_token`) USING BTREE,
  KEY `idx_refresh_token` (`refresh_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 访问令牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_oauth2_access_token`
--

LOCK TABLES `system_oauth2_access_token` WRITE;
/*!40000 ALTER TABLE `system_oauth2_access_token` DISABLE KEYS */;
INSERT INTO `system_oauth2_access_token` VALUES (39737,1,2,'{\"nickname\":\"芋道源码\",\"deptId\":\"103\"}','00f96442c5aa4b4fa5450a6486ffd366','ea56ebcce56340998c214ddcc85dad4e','default',NULL,'2026-02-01 19:32:22',NULL,'2026-02-01 19:02:22',NULL,'2026-02-01 19:02:22',_binary '\0',1),(39738,1,2,'{\"nickname\":\"芋道源码\",\"deptId\":\"103\"}','f12d81950fe74519842914d6627de4fb','75de9394185b4e51bf625fa8b8d80a49','default',NULL,'2026-02-01 19:48:21',NULL,'2026-02-01 19:18:21',NULL,'2026-02-01 19:18:21',_binary '\0',1);
/*!40000 ALTER TABLE `system_oauth2_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_oauth2_approve`
--

DROP TABLE IF EXISTS `system_oauth2_approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_oauth2_approve` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '授权范围',
  `approved` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否接受',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 批准表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_oauth2_approve`
--

LOCK TABLES `system_oauth2_approve` WRITE;
/*!40000 ALTER TABLE `system_oauth2_approve` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_oauth2_approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_oauth2_client`
--

DROP TABLE IF EXISTS `system_oauth2_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_oauth2_client` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端密钥',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用描述',
  `status` tinyint NOT NULL COMMENT '状态',
  `access_token_validity_seconds` int NOT NULL COMMENT '访问令牌的有效期',
  `refresh_token_validity_seconds` int NOT NULL COMMENT '刷新令牌的有效期',
  `redirect_uris` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '可重定向的 URI 地址',
  `authorized_grant_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '授权类型',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `auto_approve_scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自动通过的授权范围',
  `authorities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限',
  `resource_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源',
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附加信息',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 客户端表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_oauth2_client`
--

LOCK TABLES `system_oauth2_client` WRITE;
/*!40000 ALTER TABLE `system_oauth2_client` DISABLE KEYS */;
INSERT INTO `system_oauth2_client` VALUES (1,'default','admin123','芋道源码','http://test.yudao.iocoder.cn/20250502/sort2_1746189740718.png','我是描述',0,1800,2592000,'[\"https://www.iocoder.cn\",\"https://doc.iocoder.cn\"]','[\"password\",\"authorization_code\",\"implicit\",\"refresh_token\",\"client_credentials\"]','[\"user.read\",\"user.write\"]','[]','[\"user.read\",\"user.write\"]','[]','{}','1','2022-05-11 21:47:12','1','2025-08-21 10:04:50',_binary '\0'),(40,'test','test2','biubiu','http://test.yudao.iocoder.cn/xx/20250502/ed07110a37464b5299f8bd7c67ad65c7_1746187077009.jpg','啦啦啦啦',0,1800,43200,'[\"https://www.iocoder.cn\"]','[\"password\",\"authorization_code\",\"implicit\"]','[\"user_info\",\"projects\"]','[\"user_info\"]','[]','[]','{}','1','2022-05-12 00:28:20','1','2025-05-02 19:58:08',_binary '\0'),(41,'yudao-sso-demo-by-code','test','基于授权码模式，如何实现 SSO 单点登录？','http://test.yudao.iocoder.cn/it/20250502/sign_1746181948685.png',NULL,0,1800,43200,'[\"http://127.0.0.1:18080\"]','[\"authorization_code\",\"refresh_token\"]','[\"user.read\",\"user.write\"]','[]','[]','[]',NULL,'1','2022-09-29 13:28:31','1','2025-05-02 18:32:30',_binary '\0'),(42,'yudao-sso-demo-by-password','test','基于密码模式，如何实现 SSO 单点登录？','http://test.yudao.iocoder.cn/20251025/images (3)_1761360515810.jpeg',NULL,0,1800,43200,'[\"http://127.0.0.1:18080\"]','[\"password\",\"refresh_token\"]','[\"user.read\",\"user.write\"]','[]','[]','[]',NULL,'1','2022-10-04 17:40:16','1','2025-10-25 10:49:40',_binary '\0');
/*!40000 ALTER TABLE `system_oauth2_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_oauth2_code`
--

DROP TABLE IF EXISTS `system_oauth2_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_oauth2_code` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '授权码',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `redirect_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '可重定向的 URI 地址',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 授权码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_oauth2_code`
--

LOCK TABLES `system_oauth2_code` WRITE;
/*!40000 ALTER TABLE `system_oauth2_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_oauth2_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_oauth2_refresh_token`
--

DROP TABLE IF EXISTS `system_oauth2_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_oauth2_refresh_token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `refresh_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '刷新令牌',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '授权范围',
  `expires_time` datetime NOT NULL COMMENT '过期时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 刷新令牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_oauth2_refresh_token`
--

LOCK TABLES `system_oauth2_refresh_token` WRITE;
/*!40000 ALTER TABLE `system_oauth2_refresh_token` DISABLE KEYS */;
INSERT INTO `system_oauth2_refresh_token` VALUES (2243,1,'ea56ebcce56340998c214ddcc85dad4e',2,'default',NULL,'2026-03-03 19:02:22',NULL,'2026-02-01 19:02:22',NULL,'2026-02-01 19:02:22',_binary '\0',1),(2244,1,'75de9394185b4e51bf625fa8b8d80a49',2,'default',NULL,'2026-03-03 19:18:21',NULL,'2026-02-01 19:18:21',NULL,'2026-02-01 19:18:21',_binary '\0',1);
/*!40000 ALTER TABLE `system_oauth2_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_operate_log`
--

DROP TABLE IF EXISTS `system_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_operate_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `trace_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链路追踪编号',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '用户类型',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作模块类型',
  `sub_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作名',
  `biz_id` bigint NOT NULL COMMENT '操作数据模块编号',
  `action` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作内容',
  `success` bit(1) NOT NULL DEFAULT b'1' COMMENT '操作结果',
  `extra` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '拓展字段',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求方法名',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '请求地址',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户 IP',
  `user_agent` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浏览器 UA',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志记录 V2 版本';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_operate_log`
--

LOCK TABLES `system_operate_log` WRITE;
/*!40000 ALTER TABLE `system_operate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_post`
--

DROP TABLE IF EXISTS `system_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_post` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `sort` int NOT NULL COMMENT '显示顺序',
  `status` tinyint NOT NULL COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_post`
--

LOCK TABLES `system_post` WRITE;
/*!40000 ALTER TABLE `system_post` DISABLE KEYS */;
INSERT INTO `system_post` VALUES (2,'se','项目经理',2,0,'','admin','2021-01-05 17:03:48','1','2023-11-15 09:18:20',_binary '\0',1),(4,'user','普通员工',4,0,'111222','admin','2021-01-05 17:03:48','1','2025-03-24 21:32:40',_binary '\0',1),(5,'HR','人力资源',5,0,'`','1','2024-03-24 20:45:40','1','2025-03-29 19:08:10',_binary '\0',1),(7,'test','测试',10,0,NULL,'1','2025-09-02 08:45:57','1','2025-09-02 08:45:57',_binary '\0',1);
/*!40000 ALTER TABLE `system_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role`
--

DROP TABLE IF EXISTS `system_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` tinyint NOT NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `data_scope_dept_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据范围(指定部门数组)',
  `status` tinyint NOT NULL COMMENT '角色状态（0正常 1停用）',
  `type` tinyint NOT NULL COMMENT '角色类型',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role`
--

LOCK TABLES `system_role` WRITE;
/*!40000 ALTER TABLE `system_role` DISABLE KEYS */;
INSERT INTO `system_role` VALUES (1,'超级管理员','super_admin',1,1,'',0,1,'超级管理员','admin','2021-01-05 17:03:48','','2022-02-22 05:08:21',_binary '\0',1),(2,'普通角色','common',2,2,'',0,1,'普通角色','admin','2021-01-05 17:03:48','','2022-02-22 05:08:20',_binary '\0',1),(3,'CRM 管理员','crm_admin',2,1,'',0,1,'CRM 专属角色','1','2024-02-24 10:51:13','1','2024-02-24 02:51:32',_binary '\0',1),(109,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-02-22 00:56:14','1','2022-02-22 00:56:14',_binary '\0',121),(111,'租户管理员','tenant_admin',0,1,'',0,1,'系统自动生成','1','2022-03-07 21:37:58','1','2022-03-07 21:37:58',_binary '\0',122),(155,'测试数据权限','test-dp',3,2,'[112,100,102,103,104,105,107,108]',0,2,'','1','2025-03-31 14:58:06','1','2025-09-06 20:15:13',_binary '\0',1);
/*!40000 ALTER TABLE `system_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role_menu`
--

DROP TABLE IF EXISTS `system_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role_menu`
--

LOCK TABLES `system_role_menu` WRITE;
/*!40000 ALTER TABLE `system_role_menu` DISABLE KEYS */;
INSERT INTO `system_role_menu` VALUES (263,109,1,'1','2022-02-22 00:56:14','1','2022-02-22 00:56:14',_binary '\0',121),(434,2,1,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(454,2,1093,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(455,2,1094,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(460,2,1100,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(467,2,1107,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(476,2,1117,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(477,2,100,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(478,2,101,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(479,2,102,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(480,2,1126,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(481,2,103,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(483,2,104,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(485,2,105,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(488,2,107,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(490,2,108,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(492,2,109,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(498,2,1138,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(523,2,1224,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(524,2,1225,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(541,2,500,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(543,2,501,'1','2022-02-22 13:09:12','1','2022-02-22 13:09:12',_binary '\0',1),(675,2,2,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(689,2,1077,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(690,2,1078,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(692,2,1083,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(693,2,1084,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(699,2,1090,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(703,2,106,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(704,2,110,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(705,2,111,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(706,2,112,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(707,2,113,'1','2022-02-22 13:16:57','1','2022-02-22 13:16:57',_binary '\0',1),(1296,110,1,'110','2022-02-23 00:23:55','110','2022-02-23 00:23:55',_binary '\0',121),(1578,111,1,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58',_binary '\0',122),(1729,109,100,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1730,109,101,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1731,109,1063,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1732,109,1064,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1733,109,1001,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1734,109,1065,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1735,109,1002,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1736,109,1003,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1737,109,1004,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1738,109,1005,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1739,109,1006,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1740,109,1007,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1741,109,1008,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1742,109,1009,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1743,109,1010,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1744,109,1011,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1745,109,1012,'1','2022-09-21 22:08:51','1','2022-09-21 22:08:51',_binary '\0',121),(1746,111,100,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1747,111,101,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1748,111,1063,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1749,111,1064,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1750,111,1001,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1751,111,1065,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1752,111,1002,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1753,111,1003,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1754,111,1004,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1755,111,1005,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1756,111,1006,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1757,111,1007,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1758,111,1008,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1759,111,1009,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1760,111,1010,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1761,111,1011,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1762,111,1012,'1','2022-09-21 22:08:52','1','2022-09-21 22:08:52',_binary '\0',122),(1763,109,100,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1764,109,101,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1765,109,1063,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1766,109,1064,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1767,109,1001,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1768,109,1065,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1769,109,1002,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1770,109,1003,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1771,109,1004,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1772,109,1005,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1773,109,1006,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1774,109,1007,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1775,109,1008,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1776,109,1009,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1777,109,1010,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1778,109,1011,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1779,109,1012,'1','2022-09-21 22:08:53','1','2022-09-21 22:08:53',_binary '\0',121),(1780,111,100,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1781,111,101,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1782,111,1063,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1783,111,1064,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1784,111,1001,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1785,111,1065,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1786,111,1002,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1787,111,1003,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1788,111,1004,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1789,111,1005,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1790,111,1006,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1791,111,1007,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1792,111,1008,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1793,111,1009,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1794,111,1010,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1795,111,1011,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1796,111,1012,'1','2022-09-21 22:08:54','1','2022-09-21 22:08:54',_binary '\0',122),(1797,109,100,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1798,109,101,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1799,109,1063,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1800,109,1064,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1801,109,1001,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1802,109,1065,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1803,109,1002,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1804,109,1003,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1805,109,1004,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1806,109,1005,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1807,109,1006,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1808,109,1007,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1809,109,1008,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1810,109,1009,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1811,109,1010,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1812,109,1011,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1813,109,1012,'1','2022-09-21 22:08:55','1','2022-09-21 22:08:55',_binary '\0',121),(1814,111,100,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1815,111,101,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1816,111,1063,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1817,111,1064,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1818,111,1001,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1819,111,1065,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1820,111,1002,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1821,111,1003,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1822,111,1004,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1823,111,1005,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1824,111,1006,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1825,111,1007,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1826,111,1008,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1827,111,1009,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1828,111,1010,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1829,111,1011,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1830,111,1012,'1','2022-09-21 22:08:56','1','2022-09-21 22:08:56',_binary '\0',122),(1831,109,103,'1','2022-09-21 22:43:23','1','2022-09-21 22:43:23',_binary '\0',121),(1832,109,1017,'1','2022-09-21 22:43:23','1','2022-09-21 22:43:23',_binary '\0',121),(1833,109,1018,'1','2022-09-21 22:43:23','1','2022-09-21 22:43:23',_binary '\0',121),(1834,109,1019,'1','2022-09-21 22:43:23','1','2022-09-21 22:43:23',_binary '\0',121),(1835,109,1020,'1','2022-09-21 22:43:23','1','2022-09-21 22:43:23',_binary '\0',121),(1836,111,103,'1','2022-09-21 22:43:24','1','2022-09-21 22:43:24',_binary '\0',122),(1837,111,1017,'1','2022-09-21 22:43:24','1','2022-09-21 22:43:24',_binary '\0',122),(1838,111,1018,'1','2022-09-21 22:43:24','1','2022-09-21 22:43:24',_binary '\0',122),(1839,111,1019,'1','2022-09-21 22:43:24','1','2022-09-21 22:43:24',_binary '\0',122),(1840,111,1020,'1','2022-09-21 22:43:24','1','2022-09-21 22:43:24',_binary '\0',122),(1841,109,1036,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',121),(1842,109,1037,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',121),(1843,109,1038,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',121),(1844,109,1039,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',121),(1845,109,107,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',121),(1846,111,1036,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',122),(1847,111,1037,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',122),(1848,111,1038,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',122),(1849,111,1039,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',122),(1850,111,107,'1','2022-09-21 22:48:13','1','2022-09-21 22:48:13',_binary '\0',122),(1991,2,1024,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1992,2,1025,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1993,2,1026,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1994,2,1027,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1995,2,1028,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1996,2,1029,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1997,2,1030,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1998,2,1031,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(1999,2,1032,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2000,2,1033,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2001,2,1034,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2002,2,1035,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2003,2,1036,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2004,2,1037,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2005,2,1038,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2006,2,1039,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2007,2,1040,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2008,2,1042,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2009,2,1043,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2010,2,1045,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2011,2,1046,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2012,2,1048,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2013,2,1050,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2014,2,1051,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2015,2,1052,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2016,2,1053,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2017,2,1054,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2018,2,1056,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2019,2,1057,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2020,2,1058,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2021,2,2083,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2022,2,1059,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2023,2,1060,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2024,2,1063,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2025,2,1064,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2026,2,1065,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2027,2,1066,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2028,2,1067,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2029,2,1070,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2034,2,1075,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2036,2,1082,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2037,2,1085,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2038,2,1086,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2039,2,1087,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2040,2,1088,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2041,2,1089,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2042,2,1091,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2043,2,1092,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2044,2,1095,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2045,2,1096,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2046,2,1097,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2047,2,1098,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2048,2,1101,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2049,2,1102,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2050,2,1103,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2051,2,1104,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2052,2,1105,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2053,2,1106,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2054,2,1108,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2055,2,1109,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2061,2,1127,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2062,2,1128,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2063,2,1129,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2064,2,1130,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2066,2,1132,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2067,2,1133,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2068,2,1134,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2069,2,1135,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2070,2,1136,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2071,2,1137,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2072,2,114,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2073,2,1139,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2074,2,115,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2075,2,1140,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2076,2,116,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2077,2,1141,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2078,2,1142,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2079,2,1143,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2080,2,1150,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2081,2,1161,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2082,2,1162,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2086,2,1166,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2087,2,1173,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2088,2,1174,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2092,2,1178,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2099,2,1226,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2100,2,1227,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2101,2,1228,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2102,2,1229,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2103,2,1237,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2104,2,1238,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2105,2,1239,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2106,2,1240,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2107,2,1241,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2108,2,1242,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2109,2,1243,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2116,2,1254,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2117,2,1255,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2118,2,1256,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2119,2,1257,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2120,2,1258,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2121,2,1259,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2122,2,1260,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2123,2,1261,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2124,2,1263,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2125,2,1264,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2126,2,1265,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2127,2,1266,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2128,2,1267,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2129,2,1001,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2130,2,1002,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2131,2,1003,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2132,2,1004,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2133,2,1005,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2134,2,1006,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2135,2,1007,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2136,2,1008,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2137,2,1009,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2138,2,1010,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2139,2,1011,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2140,2,1012,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2141,2,1013,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2143,2,1015,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2145,2,1017,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2146,2,1018,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2147,2,1019,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2148,2,1020,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2149,2,1021,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2150,2,1022,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2151,2,1023,'1','2023-01-25 08:42:52','1','2023-01-25 08:42:52',_binary '\0',1),(2152,2,1281,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2153,2,1282,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2154,2,2000,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2155,2,2002,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2156,2,2003,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2157,2,2004,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2158,2,2005,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2159,2,2006,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2160,2,2008,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2161,2,2009,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2162,2,2010,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2163,2,2011,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2164,2,2012,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2170,2,2019,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2171,2,2020,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2172,2,2021,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2173,2,2022,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2174,2,2023,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2175,2,2025,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2177,2,2027,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2178,2,2028,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2179,2,2029,'1','2023-01-25 08:42:58','1','2023-01-25 08:42:58',_binary '\0',1),(2180,2,2014,'1','2023-01-25 08:43:12','1','2023-01-25 08:43:12',_binary '\0',1),(2181,2,2015,'1','2023-01-25 08:43:12','1','2023-01-25 08:43:12',_binary '\0',1),(2182,2,2016,'1','2023-01-25 08:43:12','1','2023-01-25 08:43:12',_binary '\0',1),(2183,2,2017,'1','2023-01-25 08:43:12','1','2023-01-25 08:43:12',_binary '\0',1),(2184,2,2018,'1','2023-01-25 08:43:12','1','2023-01-25 08:43:12',_binary '\0',1),(2929,109,1224,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2930,109,1225,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2931,109,1226,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2932,109,1227,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2933,109,1228,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2934,109,1229,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2935,109,1138,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2936,109,1139,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2937,109,1140,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2938,109,1141,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2939,109,1142,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2940,109,1143,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',121),(2941,111,1224,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2942,111,1225,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2943,111,1226,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2944,111,1227,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2945,111,1228,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2946,111,1229,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2947,111,1138,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2948,111,1139,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2949,111,1140,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2950,111,1141,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2951,111,1142,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2952,111,1143,'1','2023-12-02 23:19:40','1','2023-12-02 23:19:40',_binary '\0',122),(2993,109,2,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2994,109,1031,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2995,109,1032,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2996,109,1033,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2997,109,1034,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2998,109,1035,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(2999,109,1050,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3000,109,1051,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3001,109,1052,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3002,109,1053,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3003,109,1054,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3004,109,1056,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3005,109,1057,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3006,109,1058,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3007,109,1059,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3008,109,1060,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3009,109,1066,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3010,109,1067,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3011,109,1070,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3012,109,1075,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3014,109,1077,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3015,109,1078,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3016,109,1082,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3017,109,1083,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3018,109,1084,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3019,109,1085,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3020,109,1086,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3021,109,1087,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3022,109,1088,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3023,109,1089,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3024,109,1090,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3025,109,1091,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3026,109,1092,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3027,109,106,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3028,109,110,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3029,109,111,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3030,109,112,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3031,109,113,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3032,109,114,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3033,109,115,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3034,109,116,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3035,109,2472,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3036,109,2478,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3037,109,2479,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3038,109,2480,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3039,109,2481,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3040,109,2482,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3041,109,2483,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3042,109,2484,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3043,109,2485,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3044,109,2486,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3045,109,2487,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3046,109,2488,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3047,109,2489,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3048,109,2490,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3049,109,2491,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3050,109,2492,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3051,109,2493,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3052,109,2494,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3053,109,2495,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3054,109,2497,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3055,109,1237,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3056,109,1238,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3057,109,1239,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3058,109,1240,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3059,109,1241,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3060,109,1242,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3061,109,1243,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3062,109,2525,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3063,109,1255,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3064,109,1256,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3065,109,1257,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3066,109,1258,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3067,109,1259,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3068,109,1260,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',121),(3069,111,2,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3070,111,1031,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3071,111,1032,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3072,111,1033,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3073,111,1034,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3074,111,1035,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3075,111,1050,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3076,111,1051,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3077,111,1052,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3078,111,1053,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3079,111,1054,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3080,111,1056,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3081,111,1057,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3082,111,1058,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3083,111,1059,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3084,111,1060,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3085,111,1066,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3086,111,1067,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3087,111,1070,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3088,111,1075,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3090,111,1077,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3091,111,1078,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3092,111,1082,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3093,111,1083,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3094,111,1084,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3095,111,1085,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3096,111,1086,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3097,111,1087,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3098,111,1088,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3099,111,1089,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3100,111,1090,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3101,111,1091,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3102,111,1092,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3103,111,106,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3104,111,110,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3105,111,111,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3106,111,112,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3107,111,113,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3108,111,114,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3109,111,115,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3110,111,116,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3111,111,2472,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3112,111,2478,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3113,111,2479,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3114,111,2480,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3115,111,2481,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3116,111,2482,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3117,111,2483,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3118,111,2484,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3119,111,2485,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3120,111,2486,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3121,111,2487,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3122,111,2488,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3123,111,2489,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3124,111,2490,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3125,111,2491,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3126,111,2492,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3127,111,2493,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3128,111,2494,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3129,111,2495,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3130,111,2497,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3131,111,1237,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3132,111,1238,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3133,111,1239,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3134,111,1240,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3135,111,1241,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3136,111,1242,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3137,111,1243,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3138,111,2525,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3139,111,1255,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3140,111,1256,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3141,111,1257,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3142,111,1258,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3143,111,1259,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3144,111,1260,'1','2023-12-02 23:41:02','1','2023-12-02 23:41:02',_binary '\0',122),(3221,109,102,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',121),(3222,109,1013,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',121),(3223,109,1014,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',121),(3224,109,1015,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',121),(3225,109,1016,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',121),(3226,111,102,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',122),(3227,111,1013,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',122),(3228,111,1014,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',122),(3229,111,1015,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',122),(3230,111,1016,'1','2023-12-30 11:42:36','1','2023-12-30 11:42:36',_binary '\0',122),(4163,109,5,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4164,109,1118,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4165,109,1119,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4166,109,1120,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4167,109,2713,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4168,109,2714,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4169,109,2715,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4170,109,2716,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4171,109,2717,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4172,109,2718,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4173,109,2720,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4174,109,1185,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4175,109,2721,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4176,109,1186,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4177,109,2722,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4178,109,1187,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4179,109,2723,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4180,109,1188,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4181,109,2724,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4182,109,1189,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4183,109,2725,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4184,109,1190,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4185,109,2726,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4186,109,1191,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4187,109,2727,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4188,109,1192,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4189,109,2728,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4190,109,1193,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4191,109,2729,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4192,109,1194,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4193,109,2730,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4194,109,1195,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4195,109,2731,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4197,109,2732,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4198,109,1197,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4199,109,2733,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4200,109,1198,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4201,109,2734,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4202,109,1199,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4203,109,2735,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4204,109,1200,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4205,109,1201,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4206,109,1202,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4207,109,1207,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4208,109,1208,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4209,109,1209,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4210,109,1210,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4211,109,1211,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4212,109,1212,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4213,109,1213,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4214,109,1215,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4215,109,1216,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4216,109,1217,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4217,109,1218,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4218,109,1219,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4219,109,1220,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4220,109,1221,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4221,109,1222,'1','2024-03-30 17:53:17','1','2024-03-30 17:53:17',_binary '\0',121),(4222,111,5,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4223,111,1118,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4224,111,1119,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4225,111,1120,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4226,111,2713,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4227,111,2714,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4228,111,2715,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4229,111,2716,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4230,111,2717,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4231,111,2718,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4232,111,2720,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4233,111,1185,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4234,111,2721,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4235,111,1186,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4236,111,2722,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4237,111,1187,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4238,111,2723,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4239,111,1188,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4240,111,2724,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4241,111,1189,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4242,111,2725,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4243,111,1190,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4244,111,2726,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4245,111,1191,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4246,111,2727,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4247,111,1192,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4248,111,2728,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4249,111,1193,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4250,111,2729,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4251,111,1194,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4252,111,2730,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4253,111,1195,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4254,111,2731,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4256,111,2732,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4257,111,1197,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4258,111,2733,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4259,111,1198,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4260,111,2734,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4261,111,1199,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4262,111,2735,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4263,111,1200,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4264,111,1201,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4265,111,1202,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4266,111,1207,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4267,111,1208,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4268,111,1209,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4269,111,1210,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4270,111,1211,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4271,111,1212,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4272,111,1213,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4273,111,1215,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4274,111,1216,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4275,111,1217,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4276,111,1218,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4277,111,1219,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4278,111,1220,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4279,111,1221,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(4280,111,1222,'1','2024-03-30 17:53:18','1','2024-03-30 17:53:18',_binary '\0',122),(5779,2,2739,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5780,2,2740,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5781,2,2758,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5782,2,2759,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5783,2,2362,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5784,2,2387,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5785,2,2030,'1','2024-07-07 20:39:38','1','2024-07-07 20:39:38',_binary '\0',1),(5789,109,2739,'1','2024-07-13 22:37:24','1','2024-07-13 22:37:24',_binary '\0',121),(5790,109,2740,'1','2024-07-13 22:37:24','1','2024-07-13 22:37:24',_binary '\0',121),(5791,111,2739,'1','2024-07-13 22:37:24','1','2024-07-13 22:37:24',_binary '\0',122),(5792,111,2740,'1','2024-07-13 22:37:24','1','2024-07-13 22:37:24',_binary '\0',122),(6053,155,4000,'1','2025-04-01 13:48:26','1','2025-04-01 13:48:26',_binary '\0',1),(6097,155,4050,'1','2025-04-01 13:48:26','1','2025-04-01 13:48:26',_binary '\0',1),(6104,155,4032,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6105,155,4033,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6106,155,4034,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6107,155,4035,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6108,155,4036,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6109,155,4037,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6110,155,4038,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6111,155,4039,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6112,155,4040,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6113,155,4041,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6114,155,4042,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6115,155,4043,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6116,155,4044,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6117,155,4045,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6119,155,4001,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6120,155,4002,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6121,155,4003,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6122,155,4004,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6123,155,4005,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6124,155,4006,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6125,155,4007,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6126,155,4008,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6127,155,4009,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6128,155,4010,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6129,155,4011,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6130,155,4012,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6131,155,4013,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6132,155,4014,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6133,155,4015,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6134,155,4016,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6135,155,4017,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6136,155,4018,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6137,155,4031,'1','2025-04-01 13:49:30','1','2025-04-01 13:49:30',_binary '\0',1),(6139,109,1117,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6140,109,1126,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6141,109,1127,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6142,109,1128,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6143,109,1129,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6144,109,1130,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6145,109,1132,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6146,109,1133,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6147,109,1134,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6148,109,1135,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6149,109,1136,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6150,109,1137,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6151,109,2161,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6152,109,1150,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6153,109,1161,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6154,109,1162,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6155,109,1166,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6156,109,1173,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6157,109,1174,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6158,109,1178,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6159,109,2745,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6160,109,2746,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6161,109,2747,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6162,109,2748,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6163,109,2301,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6164,109,2302,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6165,109,5011,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6166,109,5012,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6167,109,2549,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6168,109,2550,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6169,109,2551,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6170,109,2552,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6171,109,2553,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6172,109,2554,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6173,109,2555,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6174,109,2556,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6175,109,2557,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6176,109,2558,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6177,109,2559,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',121),(6178,111,1117,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6179,111,1126,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6180,111,1127,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6181,111,1128,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6182,111,1129,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6183,111,1130,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6184,111,1132,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6185,111,1133,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6186,111,1134,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6187,111,1135,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6188,111,1136,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6189,111,1137,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6190,111,2161,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6191,111,1150,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6192,111,1161,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6193,111,1162,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6194,111,1166,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6195,111,1173,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6196,111,1174,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6197,111,1178,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6198,111,2745,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6199,111,2746,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6200,111,2747,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6201,111,2748,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6202,111,2301,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6203,111,2302,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6204,111,5011,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6205,111,5012,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6206,111,2549,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6207,111,2550,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6208,111,2551,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6209,111,2552,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6210,111,2553,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6211,111,2554,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6212,111,2555,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6213,111,2556,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6214,111,2557,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6215,111,2558,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6216,111,2559,'1','2025-09-06 20:52:12','1','2025-09-06 20:52:12',_binary '\0',122),(6217,109,2756,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6218,109,2757,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6219,109,2262,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6220,109,2275,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6221,109,2276,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6222,109,2277,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6223,109,2281,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6224,109,2282,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6225,109,2283,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6226,109,2284,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6227,109,2285,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6228,109,2287,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6229,109,2288,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6230,109,2293,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6231,109,2294,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6232,109,2297,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6233,109,2300,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6234,109,2317,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6235,109,2318,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6236,109,2319,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6237,109,2320,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6238,109,2321,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6239,109,2322,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6240,109,2323,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6241,109,2324,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6242,109,2325,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6243,109,2326,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6244,109,2327,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6245,109,2328,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6246,109,2329,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6247,109,2330,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6248,109,2331,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6249,109,2332,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6250,109,2333,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6251,109,2334,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6252,109,2335,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6253,109,2363,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6254,109,2364,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',121),(6255,111,2756,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6256,111,2757,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6257,111,2262,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6258,111,2275,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6259,111,2276,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6260,111,2277,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6261,111,2281,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6262,111,2282,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6263,111,2283,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6264,111,2284,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6265,111,2285,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6266,111,2287,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6267,111,2288,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6268,111,2293,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6269,111,2294,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6270,111,2297,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6271,111,2300,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6272,111,2317,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6273,111,2318,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6274,111,2319,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6275,111,2320,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6276,111,2321,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6277,111,2322,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6278,111,2323,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6279,111,2324,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6280,111,2325,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6281,111,2326,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6282,111,2327,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6283,111,2328,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6284,111,2329,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6285,111,2330,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6286,111,2331,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6287,111,2332,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6288,111,2333,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6289,111,2334,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6290,111,2335,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6291,111,2363,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122),(6292,111,2364,'1','2025-09-06 20:52:25','1','2025-09-06 20:52:25',_binary '\0',122);
/*!40000 ALTER TABLE `system_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_sms_channel`
--

DROP TABLE IF EXISTS `system_sms_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_sms_channel` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `signature` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信签名',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `status` tinyint NOT NULL COMMENT '开启状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `api_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的账号',
  `api_secret` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 的秘钥',
  `callback_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信发送回调 URL',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信渠道';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_sms_channel`
--

LOCK TABLES `system_sms_channel` WRITE;
/*!40000 ALTER TABLE `system_sms_channel` DISABLE KEYS */;
INSERT INTO `system_sms_channel` VALUES (2,'Ballcat','ALIYUN',0,'你要改哦，只有我可以用！！！！','LTAI5tCnKso2uG3kJ5gRav88','fGJ5SNXL7P1NHNRmJ7DJaMJGPyE55C',NULL,'','2021-03-31 11:53:10','1','2024-08-04 08:53:26',_binary '\0'),(4,'测试渠道','DEBUG_DING_TALK',0,'123','696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859','SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67',NULL,'1','2021-04-13 00:23:14','1','2022-03-27 20:29:49',_binary '\0'),(7,'mock腾讯云','TENCENT',0,'','1 2','2 3','','1','2024-09-30 08:53:45','1','2024-09-30 08:55:01',_binary '\0');
/*!40000 ALTER TABLE `system_sms_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_sms_code`
--

DROP TABLE IF EXISTS `system_sms_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_sms_code` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '验证码',
  `create_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建 IP',
  `scene` tinyint NOT NULL COMMENT '发送场景',
  `today_index` tinyint NOT NULL COMMENT '今日发送的第几条',
  `used` tinyint NOT NULL COMMENT '是否使用',
  `used_time` datetime DEFAULT NULL COMMENT '使用时间',
  `used_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用 IP',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_mobile` (`mobile`) USING BTREE COMMENT '手机号'
) ENGINE=InnoDB AUTO_INCREMENT=682 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='手机验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_sms_code`
--

LOCK TABLES `system_sms_code` WRITE;
/*!40000 ALTER TABLE `system_sms_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_sms_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_sms_log`
--

DROP TABLE IF EXISTS `system_sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_sms_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `channel_id` bigint NOT NULL COMMENT '短信渠道编号',
  `channel_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信渠道编码',
  `template_id` bigint NOT NULL COMMENT '模板编号',
  `template_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `template_type` tinyint NOT NULL COMMENT '短信类型',
  `template_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信内容',
  `template_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信参数',
  `api_template_id` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的模板编号',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `user_id` bigint DEFAULT NULL COMMENT '用户编号',
  `user_type` tinyint DEFAULT NULL COMMENT '用户类型',
  `send_status` tinyint NOT NULL DEFAULT '0' COMMENT '发送状态',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `api_send_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送结果的编码',
  `api_send_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送失败的提示',
  `api_request_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送返回的唯一请求 ID',
  `api_serial_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信 API 发送返回的序号',
  `receive_status` tinyint NOT NULL DEFAULT '0' COMMENT '接收状态',
  `receive_time` datetime DEFAULT NULL COMMENT '接收时间',
  `api_receive_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API 接收结果的编码',
  `api_receive_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API 接收结果的说明',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_sms_log`
--

LOCK TABLES `system_sms_log` WRITE;
/*!40000 ALTER TABLE `system_sms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_sms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_sms_template`
--

DROP TABLE IF EXISTS `system_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_sms_template` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` tinyint NOT NULL COMMENT '模板类型',
  `status` tinyint NOT NULL COMMENT '开启状态',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板编码',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板内容',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `api_template_id` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信 API 的模板编号',
  `channel_id` bigint NOT NULL COMMENT '短信渠道编号',
  `channel_code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信渠道编码',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_sms_template`
--

LOCK TABLES `system_sms_template` WRITE;
/*!40000 ALTER TABLE `system_sms_template` DISABLE KEYS */;
INSERT INTO `system_sms_template` VALUES (2,1,0,'test_01','测试验证码短信','正在进行登录操作{operation}，您的验证码是{code}','[\"operation\",\"code\"]','测试备注','4383920',4,'DEBUG_DING_TALK','','2021-03-31 10:49:38','1','2024-08-18 11:57:18',_binary '\0'),(3,1,0,'test_02','公告通知','您的验证码{code}，该验证码5分钟内有效，请勿泄漏于他人！','[\"code\"]',NULL,'SMS_207945135',2,'ALIYUN','','2021-03-31 11:56:30','1','2021-04-10 01:22:02',_binary '\0'),(6,3,0,'test-01','测试模板','哈哈哈 {name}','[\"name\"]','f哈哈哈','4383920',4,'DEBUG_DING_TALK','1','2021-04-10 01:07:21','1','2024-08-18 11:57:07',_binary '\0'),(7,3,0,'test-04','测试下','老鸡{name}，牛逼{code}','[\"name\",\"code\"]','哈哈哈哈','suibian',7,'DEBUG_DING_TALK','1','2021-04-13 00:29:53','1','2024-09-30 00:56:24',_binary '\0'),(8,1,0,'user-sms-login','前台用户短信登录','您的验证码是{code}','[\"code\"]',NULL,'4372216',4,'DEBUG_DING_TALK','1','2021-10-11 08:10:00','1','2024-08-18 11:57:06',_binary '\0'),(9,2,0,'bpm_task_assigned','【工作流】任务被分配','您收到了一条新的待办任务：{processInstanceName}-{taskName}，申请人：{startUserNickname}，处理链接：{detailUrl}','[\"processInstanceName\",\"taskName\",\"startUserNickname\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-21 22:31:19','1','2022-01-22 00:03:36',_binary '\0'),(10,2,0,'bpm_process_instance_reject','【工作流】流程被不通过','您的流程被审批不通过：{processInstanceName}，原因：{reason}，查看链接：{detailUrl}','[\"processInstanceName\",\"reason\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-22 00:03:31','1','2022-05-01 12:33:14',_binary '\0'),(11,2,0,'bpm_process_instance_approve','【工作流】流程被通过','您的流程被审批通过：{processInstanceName}，查看链接：{detailUrl}','[\"processInstanceName\",\"detailUrl\"]',NULL,'suibian',4,'DEBUG_DING_TALK','1','2022-01-22 00:04:31','1','2022-03-27 20:32:21',_binary '\0'),(12,2,0,'demo','演示模板','我就是测试一下下','[]',NULL,'biubiubiu',4,'DEBUG_DING_TALK','1','2022-04-10 23:22:49','1','2024-08-18 11:57:04',_binary '\0'),(14,1,0,'user-update-mobile','会员用户 - 修改手机','您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！','[\"code\"]','','null',4,'DEBUG_DING_TALK','1','2023-08-19 18:58:01','1','2023-08-19 11:34:04',_binary '\0'),(15,1,0,'user-update-password','会员用户 - 修改密码','您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！','[\"code\"]','','null',4,'DEBUG_DING_TALK','1','2023-08-19 18:58:01','1','2023-08-19 11:34:18',_binary '\0'),(16,1,0,'user-reset-password','会员用户 - 重置密码','您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！','[\"code\"]','','null',4,'DEBUG_DING_TALK','1','2023-08-19 18:58:01','1','2023-12-02 22:35:27',_binary '\0'),(17,2,0,'bpm_task_timeout','【工作流】任务审批超时','您收到了一条超时的待办任务：{processInstanceName}-{taskName}，处理链接：{detailUrl}','[\"processInstanceName\",\"taskName\",\"detailUrl\"]','','X',4,'DEBUG_DING_TALK','1','2024-08-16 21:59:15','1','2024-08-16 21:59:34',_binary '\0'),(18,1,0,'admin-reset-password','后台用户 - 忘记密码','您的验证码{code}，该验证码 5 分钟内有效，请勿泄漏于他人！','[\"code\"]','','null',4,'DEBUG_DING_TALK','1','2025-03-16 14:19:34','1','2025-03-16 14:19:45',_binary '\0'),(19,1,0,'admin-sms-login','后台用户短信登录','您的验证码是{code}','[\"code\"]','','4372216',4,'DEBUG_DING_TALK','1','2025-04-08 09:36:03','1','2025-04-08 09:36:17',_binary '\0');
/*!40000 ALTER TABLE `system_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_social_client`
--

DROP TABLE IF EXISTS `system_social_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_social_client` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `social_type` tinyint NOT NULL COMMENT '社交平台的类型',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端编号',
  `client_secret` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端密钥',
  `public_key` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'publicKey公钥',
  `agent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代理编号',
  `status` tinyint NOT NULL COMMENT '状态',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交客户端表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_social_client`
--

LOCK TABLES `system_social_client` WRITE;
/*!40000 ALTER TABLE `system_social_client` DISABLE KEYS */;
INSERT INTO `system_social_client` VALUES (1,'钉钉',20,2,'dingvrnreaje3yqvzhxg','i8E6iZyDvZj51JIb0tYsYfVQYOks9Cq1lgryEjFRqC79P3iJcrxEwT6Qk2QvLrLI',NULL,NULL,0,'','2023-10-18 11:21:18','1','2023-12-20 21:28:26',_binary '',1),(2,'钉钉（王土豆）',20,2,'dingtsu9hpepjkbmthhw','FP_bnSq_HAHKCSncmJjw5hxhnzs6vaVDSZZn3egj6rdqTQ_hu5tQVJyLMpgCakdP',NULL,NULL,0,'','2023-10-18 11:21:18','','2023-12-20 21:28:26',_binary '',121),(3,'微信公众号',31,1,'wx5b23ba7a5589ecbb','2a7b3b20c537e52e74afd395eb85f61f',NULL,NULL,0,'','2023-10-18 16:07:46','1','2023-12-20 21:28:23',_binary '',1),(43,'微信小程序',34,1,'wx63c280fe3248a3e7','6f270509224a7ae1296bbf1c8cb97aed',NULL,NULL,0,'','2023-10-19 13:37:41','1','2023-12-20 21:28:25',_binary '',1),(44,'1',10,1,'2','3',NULL,NULL,0,'1','2025-04-06 20:36:28','1','2025-04-06 20:43:12',_binary '',1),(45,'1',10,1,'2','3',NULL,NULL,1,'1','2025-09-06 20:26:15','1','2025-09-06 20:27:55',_binary '',1);
/*!40000 ALTER TABLE `system_social_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_social_user`
--

DROP TABLE IF EXISTS `system_social_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_social_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `type` tinyint NOT NULL COMMENT '社交平台的类型',
  `openid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '社交 openid',
  `token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '社交 token',
  `raw_token_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始 Token 数据，一般是 JSON 格式',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `raw_user_info` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始用户数据，一般是 JSON 格式',
  `code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '最后一次的认证 code',
  `state` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后一次的认证 state',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_social_user`
--

LOCK TABLES `system_social_user` WRITE;
/*!40000 ALTER TABLE `system_social_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_social_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_social_user_bind`
--

DROP TABLE IF EXISTS `system_social_user_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_social_user_bind` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `user_id` bigint NOT NULL COMMENT '用户编号',
  `user_type` tinyint NOT NULL COMMENT '用户类型',
  `social_type` tinyint NOT NULL COMMENT '社交平台的类型',
  `social_user_id` bigint NOT NULL COMMENT '社交用户的编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_social_user_bind`
--

LOCK TABLES `system_social_user_bind` WRITE;
/*!40000 ALTER TABLE `system_social_user_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_social_user_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_tenant`
--

DROP TABLE IF EXISTS `system_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_tenant` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '租户编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '租户名',
  `contact_user_id` bigint DEFAULT NULL COMMENT '联系人的用户编号',
  `contact_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `contact_mobile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系手机',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '租户状态',
  `websites` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '绑定域名数组',
  `package_id` bigint NOT NULL COMMENT '租户套餐编号',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  `account_count` int NOT NULL COMMENT '账号数量',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_tenant`
--

LOCK TABLES `system_tenant` WRITE;
/*!40000 ALTER TABLE `system_tenant` DISABLE KEYS */;
INSERT INTO `system_tenant` VALUES (1,'芋道源码',NULL,'芋艿','17321315478',0,'www.iocoder.cn,127.0.0.1:3000,wxc4598c446f8a9cb3',0,'2099-02-19 17:14:16',9999,'1','2021-01-05 17:03:47','1','2025-08-19 05:18:41',_binary '\0'),(121,'小租户',110,'小王2','15601691300',0,'zsxq.iocoder.cn,123321',111,'2026-07-10 00:00:00',30,'1','2022-02-22 00:56:14','1','2025-08-19 21:19:29',_binary '\0'),(122,'测试租户',113,'芋道','15601691300',0,'test.iocoder.cn,222,333',111,'2022-04-29 00:00:00',50,'1','2022-03-07 21:37:58','1','2025-09-06 20:44:42',_binary '\0');
/*!40000 ALTER TABLE `system_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_tenant_package`
--

DROP TABLE IF EXISTS `system_tenant_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_tenant_package` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '套餐编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '套餐名',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '租户状态（0正常 1停用）',
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `menu_ids` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关联的菜单编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租户套餐表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_tenant_package`
--

LOCK TABLES `system_tenant_package` WRITE;
/*!40000 ALTER TABLE `system_tenant_package` DISABLE KEYS */;
INSERT INTO `system_tenant_package` VALUES (111,'普通套餐',0,'小功能','[1,2,5,1031,1032,1033,1034,1035,1036,1037,1038,1039,1050,1051,1052,1053,1054,1056,1057,1058,1059,1060,1063,1064,1065,1066,1067,1070,1075,1077,1078,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1117,1118,1119,1120,100,101,102,1126,103,1127,1128,1129,106,1130,107,1132,1133,110,1134,111,1135,112,1136,113,1137,2161,114,1138,1139,115,1140,116,1141,1142,1143,1150,1161,1162,1166,1173,1174,2713,2714,1178,2715,2716,2717,2718,2720,2721,1185,2722,1186,1187,2723,1188,2724,1189,2725,1190,2726,1191,2727,1192,2728,2729,1193,1194,2730,1195,2731,2732,1197,2733,1198,2734,1199,2735,1200,1201,1202,2739,2740,1207,1208,1209,2745,1210,2746,1211,2747,1212,2748,1213,1215,1216,1217,1218,1219,1220,2756,1221,2757,1222,1224,1225,1226,1227,1228,1229,1237,1238,2262,1239,1240,1241,1242,1243,2275,2276,2277,1255,1256,1257,2281,1258,2282,1259,2283,1260,2284,2285,2287,2288,2293,2294,2297,2300,2301,2302,2317,2318,2319,2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334,2335,2363,2364,5011,5012,2472,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488,2489,2490,2491,2492,2493,2494,2495,2497,2525,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,2549,1014,2550,1015,2551,1016,2552,1017,2553,1018,2554,1019,2555,1020,2556,2557,2558,2559]','1','2022-02-22 00:54:00','1','2025-09-06 20:52:25',_binary '\0');
/*!40000 ALTER TABLE `system_tenant_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_post`
--

DROP TABLE IF EXISTS `system_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_post` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户ID',
  `post_id` bigint NOT NULL DEFAULT '0' COMMENT '岗位ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户岗位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_post`
--

LOCK TABLES `system_user_post` WRITE;
/*!40000 ALTER TABLE `system_user_post` DISABLE KEYS */;
INSERT INTO `system_user_post` VALUES (112,1,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24',_binary '\0',1),(113,100,1,'admin','2022-05-02 07:25:24','admin','2022-05-02 07:25:24',_binary '\0',1),(115,104,1,'1','2022-05-16 19:36:28','1','2022-05-16 19:36:28',_binary '\0',1),(116,117,2,'1','2022-07-09 17:40:26','1','2022-07-09 17:40:26',_binary '\0',1),(117,118,1,'1','2022-07-09 17:44:44','1','2022-07-09 17:44:44',_binary '\0',1),(119,114,5,'1','2024-03-24 20:45:51','1','2024-03-24 20:45:51',_binary '\0',1),(123,115,1,'1','2024-04-04 09:37:14','1','2024-04-04 09:37:14',_binary '\0',1),(124,115,2,'1','2024-04-04 09:37:14','1','2024-04-04 09:37:14',_binary '\0',1),(125,1,2,'1','2024-07-13 22:31:39','1','2024-07-13 22:31:39',_binary '\0',1);
/*!40000 ALTER TABLE `system_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user_role`
--

DROP TABLE IF EXISTS `system_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_role`
--

LOCK TABLES `system_user_role` WRITE;
/*!40000 ALTER TABLE `system_user_role` DISABLE KEYS */;
INSERT INTO `system_user_role` VALUES (1,1,1,'','2022-01-11 13:19:45','','2022-05-12 12:35:17',_binary '\0',1),(2,2,2,'','2022-01-11 13:19:45','','2022-05-12 12:35:13',_binary '\0',1),(5,100,1,'','2022-01-11 13:19:45','','2022-05-12 12:35:12',_binary '\0',1),(6,100,2,'','2022-01-11 13:19:45','','2022-05-12 12:35:11',_binary '\0',1),(10,103,1,'1','2022-01-11 13:19:45','1','2022-01-11 13:19:45',_binary '\0',1),(14,110,109,'1','2022-02-22 00:56:14','1','2022-02-22 00:56:14',_binary '\0',121),(15,111,110,'110','2022-02-23 13:14:38','110','2022-02-23 13:14:38',_binary '\0',121),(16,113,111,'1','2022-03-07 21:37:58','1','2022-03-07 21:37:58',_binary '\0',122),(18,1,2,'1','2022-05-12 20:39:29','1','2022-05-12 20:39:29',_binary '\0',1),(22,115,2,'1','2022-07-21 22:08:30','1','2022-07-21 22:08:30',_binary '\0',1),(35,112,1,'1','2024-03-15 20:00:24','1','2024-03-15 20:00:24',_binary '\0',1),(36,118,1,'1','2024-03-17 09:12:08','1','2024-03-17 09:12:08',_binary '\0',1),(46,117,1,'1','2024-10-02 10:16:11','1','2024-10-02 10:16:11',_binary '\0',1),(47,104,2,'1','2025-01-04 10:40:33','1','2025-01-04 10:40:33',_binary '\0',1),(48,100,155,'1','2025-04-04 10:41:14','1','2025-04-04 10:41:14',_binary '\0',1),(49,142,1,'1','2025-07-23 09:11:42','1','2025-07-23 09:11:42',_binary '\0',1),(50,142,2,'1','2025-10-07 20:50:37','1','2025-10-07 20:50:37',_binary '\0',1);
/*!40000 ALTER TABLE `system_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_users`
--

DROP TABLE IF EXISTS `system_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `post_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位编号数组',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` tinyint DEFAULT '0' COMMENT '用户性别',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像地址',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_users`
--

LOCK TABLES `system_users` WRITE;
/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
INSERT INTO `system_users` VALUES (1,'admin','$2a$04$KljJDa/LK7QfDm0lF5OhuePhlPfjRH3tB2Wu351Uidz.oQGJXevPi','芋道源码','管理员',103,'[1,2]','11aoteman@126.com','18818260272',2,'http://test.yudao.iocoder.cn/20250921/avatar_1758423875594.png',0,'127.0.0.1','2026-02-01 19:18:20','admin','2021-01-05 17:03:47',NULL,'2026-02-01 19:18:20',_binary '\0',1),(100,'yudao','$2a$04$h.aaPKgO.odHepnk5PCsWeEwKdojFWdTItxGKfx1r0e1CSeBzsTJ6','芋道','不要吓我',104,'[1]','yudao@iocoder.cn','15601691300',1,NULL,0,'0:0:0:0:0:0:0:1','2025-04-08 09:36:40','','2021-01-07 09:07:17',NULL,'2025-04-21 14:23:08',_binary '\0',1),(103,'yuanma','$2a$04$fUBSmjKCPYAUmnMzOb6qE.eZCGPhHi1JmAKclODbfS/O7fHOl2bH6','源码',NULL,106,NULL,'yuanma@iocoder.cn','15601701300',0,NULL,0,'0:0:0:0:0:0:0:1','2024-08-11 17:48:12','','2021-01-13 23:50:35','1','2025-07-09 23:41:58',_binary '\0',1),(104,'test','$2a$04$BrwaYn303hjA/6TnXqdGoOLhyHOAA0bVrAFu6.1dJKycqKUnIoRz2','测试号',NULL,107,'[1,2]','111@qq.com','15601691200',1,NULL,0,'0:0:0:0:0:0:0:1','2025-03-28 20:01:16','','2021-01-21 02:13:53',NULL,'2025-04-21 14:23:08',_binary '\0',1),(107,'admin107','$2a$10$dYOOBKMO93v/.ReCqzyFg.o67Tqk.bbc2bhrpyBGkIw9aypCtr2pm','芋艿',NULL,NULL,NULL,'','15601691300',0,NULL,0,'',NULL,'1','2022-02-20 22:59:33','1','2025-04-21 14:23:08',_binary '\0',118),(108,'admin108','$2a$10$y6mfvKoNYL1GXWak8nYwVOH.kCWqjactkzdoIDgiKl93WN3Ejg.Lu','芋艿',NULL,NULL,NULL,'','15601691300',0,NULL,0,'',NULL,'1','2022-02-20 23:00:50','1','2025-04-21 14:23:08',_binary '\0',119),(109,'admin109','$2a$10$JAqvH0tEc0I7dfDVBI7zyuB4E3j.uH6daIjV53.vUS6PknFkDJkuK','芋艿',NULL,NULL,NULL,'','15601691300',0,NULL,0,'',NULL,'1','2022-02-20 23:11:50','1','2025-04-21 14:23:08',_binary '\0',120),(110,'admin110','$2a$10$mRMIYLDtRHlf6.9ipiqH1.Z.bh/R9dO9d5iHiGYPigi6r5KOoR2Wm','小王',NULL,NULL,NULL,'','15601691300',0,NULL,0,'0:0:0:0:0:0:0:1','2024-07-20 22:23:17','1','2022-02-22 00:56:14',NULL,'2025-04-21 14:23:08',_binary '\0',121),(111,'test','$2a$10$mRMIYLDtRHlf6.9ipiqH1.Z.bh/R9dO9d5iHiGYPigi6r5KOoR2Wm','测试用户',NULL,NULL,'[]','','',0,NULL,0,'0:0:0:0:0:0:0:1','2023-12-30 11:42:17','110','2022-02-23 13:14:33',NULL,'2025-04-21 14:23:08',_binary '\0',121),(112,'newobject','$2a$04$dB0z8Q819fJWz0hbaLe6B.VfHCjYgWx6LFfET5lyz3JwcqlyCkQ4C','新对象',NULL,100,'[]','','15601691235',1,NULL,0,'0:0:0:0:0:0:0:1','2024-03-16 23:11:38','1','2022-02-23 19:08:03',NULL,'2025-04-21 14:23:08',_binary '\0',1),(113,'aoteman','$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO','芋道1',NULL,NULL,NULL,'','15601691300',0,NULL,0,'127.0.0.1','2022-03-19 18:38:51','1','2022-03-07 21:37:58','1','2025-05-05 15:30:53',_binary '\0',122),(114,'hrmgr','$2a$10$TR4eybBioGRhBmDBWkqWLO6NIh3mzYa8KBKDDB5woiGYFVlRAi.fu','hr 小姐姐',NULL,NULL,'[5]','','15601691236',1,NULL,0,'0:0:0:0:0:0:0:1','2024-03-24 22:21:05','1','2022-03-19 21:50:58',NULL,'2025-04-21 14:23:08',_binary '\0',1),(115,'aotemane','$2a$04$GcyP0Vyzb2F2Yni5PuIK9ueGxM0tkZGMtDwVRwrNbtMvorzbpNsV2','阿呆','11222',102,'[1,2]','7648@qq.com','15601691229',2,NULL,0,'',NULL,'1','2022-04-30 02:55:43','1','2025-04-21 14:23:08',_binary '\0',1),(117,'admin123','$2a$04$sEtimsHu9YCkYY4/oqElHem2Ijc9ld20eYO6lN.g/21NfLUTDLB9W','测试号02','1111',100,'[2]','','15601691234',1,NULL,0,'0:0:0:0:0:0:0:1','2024-10-02 10:16:20','1','2022-07-09 17:40:26','1','2025-05-14 09:56:04',_binary '\0',1),(118,'goudan','$2a$04$3suGZjnA6rM5bErf38u1felbgqbsPHGdRG3l9NkxPCEt2ah9Y6aJi','狗蛋',NULL,103,'[1]','','15601691239',1,NULL,0,'0:0:0:0:0:0:0:1','2025-11-23 15:28:25','1','2022-07-09 17:44:43',NULL,'2025-11-23 15:28:25',_binary '\0',1),(139,'wwbwwb','$2a$04$aOHoFbQU6zfBk/1Z9raF/ugTdhjNdx7culC1HhO0zvoczAnahCiMq','小秃头',NULL,NULL,NULL,'','',0,NULL,0,'0:0:0:0:0:0:0:1','2024-09-10 21:03:58',NULL,'2024-09-10 21:03:58',NULL,'2025-04-21 14:23:08',_binary '\0',1),(141,'admin1','$2a$04$oj6F6d7HrZ70kYVD3TNzEu.m3TPUzajOVuC66zdKna8KRerK1FmVa','新用户',NULL,NULL,NULL,'','',0,'',0,'0:0:0:0:0:0:0:1','2025-04-08 13:09:07','1','2025-04-08 13:09:07','1','2025-05-14 19:11:48',_binary '\0',1),(142,'test01','$2a$04$IaR0fGYtalIDURMMdcaD2.4JDWZ15ueQZwap9oPUuxkwSbL66vIRG','test01','',NULL,'[]','','19021719925',1,'',0,'0:0:0:0:0:0:0:1','2025-07-29 19:47:17','1','2025-07-09 21:07:10','1','2025-11-25 19:49:08',_binary '\0',1);
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudao_demo01_contact`
--

DROP TABLE IF EXISTS `yudao_demo01_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yudao_demo01_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `birthday` datetime NOT NULL COMMENT '出生年',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='示例联系人表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudao_demo01_contact`
--

LOCK TABLES `yudao_demo01_contact` WRITE;
/*!40000 ALTER TABLE `yudao_demo01_contact` DISABLE KEYS */;
INSERT INTO `yudao_demo01_contact` VALUES (1,'土豆',2,'2023-11-07 00:00:00','<p>天蚕土豆！呀</p>','http://127.0.0.1:48080/admin-api/infra/file/4/get/46f8fa1a37db3f3960d8910ff2fe3962ab3b2db87cf2f8ccb4dc8145b8bdf237.jpeg','1','2023-11-15 23:34:30','1','2023-11-15 23:47:39',_binary '\0',1);
/*!40000 ALTER TABLE `yudao_demo01_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudao_demo02_category`
--

DROP TABLE IF EXISTS `yudao_demo02_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yudao_demo02_category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='示例分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudao_demo02_category`
--

LOCK TABLES `yudao_demo02_category` WRITE;
/*!40000 ALTER TABLE `yudao_demo02_category` DISABLE KEYS */;
INSERT INTO `yudao_demo02_category` VALUES (1,'土豆',0,'1','2023-11-15 23:34:30','1','2023-11-16 20:24:23',_binary '\0',1),(2,'番茄',0,'1','2023-11-16 20:24:00','1','2023-11-16 20:24:15',_binary '\0',1),(3,'怪怪',0,'1','2023-11-16 20:24:32','1','2023-11-16 20:24:32',_binary '\0',1),(4,'小番茄',2,'1','2023-11-16 20:24:39','1','2023-11-16 20:24:39',_binary '\0',1),(5,'大番茄',2,'1','2023-11-16 20:24:46','1','2023-11-16 20:24:46',_binary '\0',1),(6,'11',3,'1','2023-11-24 19:29:34','1','2023-11-24 19:29:34',_binary '\0',1),(7,'1',0,'1','2025-10-01 09:19:20','1','2025-10-01 09:19:20',_binary '\0',1);
/*!40000 ALTER TABLE `yudao_demo02_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudao_demo03_course`
--

DROP TABLE IF EXISTS `yudao_demo03_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yudao_demo03_course` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_id` bigint NOT NULL COMMENT '学生编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `score` tinyint NOT NULL COMMENT '分数',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学生课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudao_demo03_course`
--

LOCK TABLES `yudao_demo03_course` WRITE;
/*!40000 ALTER TABLE `yudao_demo03_course` DISABLE KEYS */;
INSERT INTO `yudao_demo03_course` VALUES (2,2,'语文',66,'1','2023-11-16 23:21:49','1','2024-09-17 10:55:30',_binary '',1),(3,2,'数学',22,'1','2023-11-16 23:21:49','1','2024-09-17 10:55:30',_binary '',1),(6,5,'体育',23,'1','2023-11-16 23:22:46','1','2023-11-16 15:44:40',_binary '',1),(7,5,'计算机',11,'1','2023-11-16 23:22:46','1','2023-11-16 15:44:40',_binary '',1),(8,5,'体育',23,'1','2023-11-16 23:22:46','1','2023-11-16 15:47:09',_binary '',1),(9,5,'计算机',11,'1','2023-11-16 23:22:46','1','2023-11-16 15:47:09',_binary '',1),(10,5,'体育',23,'1','2023-11-16 23:22:46','1','2024-09-17 10:55:28',_binary '',1),(11,5,'计算机',11,'1','2023-11-16 23:22:46','1','2024-09-17 10:55:28',_binary '',1),(12,2,'电脑',33,'1','2023-11-17 00:20:42','1','2023-11-16 16:20:45',_binary '',1),(13,9,'滑雪',12,'1','2023-11-17 13:13:20','1','2024-09-17 10:55:26',_binary '',1),(14,9,'滑雪',12,'1','2023-11-17 13:13:20','1','2024-09-17 10:55:49',_binary '',1),(15,5,'体育',23,'1','2023-11-16 23:22:46','1','2024-09-17 18:55:29',_binary '\0',1),(16,5,'计算机',11,'1','2023-11-16 23:22:46','1','2024-09-17 18:55:29',_binary '\0',1),(17,2,'语文',66,'1','2023-11-16 23:21:49','1','2024-09-17 18:55:31',_binary '\0',1),(18,2,'数学',22,'1','2023-11-16 23:21:49','1','2024-09-17 18:55:31',_binary '\0',1),(19,9,'滑雪',12,'1','2023-11-17 13:13:20','1','2025-04-19 02:49:03',_binary '',1),(20,9,'滑雪',12,'1','2023-11-17 13:13:20','1','2025-04-19 10:49:04',_binary '\0',1);
/*!40000 ALTER TABLE `yudao_demo03_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudao_demo03_grade`
--

DROP TABLE IF EXISTS `yudao_demo03_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yudao_demo03_grade` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_id` bigint NOT NULL COMMENT '学生编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '班主任',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学生班级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudao_demo03_grade`
--

LOCK TABLES `yudao_demo03_grade` WRITE;
/*!40000 ALTER TABLE `yudao_demo03_grade` DISABLE KEYS */;
INSERT INTO `yudao_demo03_grade` VALUES (7,2,'三年 2 班','周杰伦','1','2023-11-16 23:21:49','1','2024-09-17 18:55:31',_binary '\0',1),(8,5,'华为','遥遥领先','1','2023-11-16 23:22:46','1','2024-09-17 18:55:29',_binary '\0',1),(9,9,'小图','小娃111','1','2023-11-17 13:10:23','1','2025-04-19 10:49:04',_binary '\0',1);
/*!40000 ALTER TABLE `yudao_demo03_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudao_demo03_student`
--

DROP TABLE IF EXISTS `yudao_demo03_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yudao_demo03_student` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名字',
  `sex` tinyint NOT NULL COMMENT '性别',
  `birthday` datetime NOT NULL COMMENT '出生日期',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '简介',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学生表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudao_demo03_student`
--

LOCK TABLES `yudao_demo03_student` WRITE;
/*!40000 ALTER TABLE `yudao_demo03_student` DISABLE KEYS */;
INSERT INTO `yudao_demo03_student` VALUES (2,'小白',1,'2023-11-16 00:00:00','<p>厉害</p>','1','2023-11-16 23:21:49','1','2024-09-17 18:55:31',_binary '\0',1),(5,'大黑',2,'2023-11-13 00:00:00','<p>你在教我做事?</p>','1','2023-11-16 23:22:46','1','2024-09-17 18:55:29',_binary '\0',1),(9,'小花',1,'2023-11-07 00:00:00','<p>哈哈哈</p>','1','2023-11-17 00:04:47','1','2025-04-19 10:49:04',_binary '\0',1);
/*!40000 ALTER TABLE `yudao_demo03_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01 19:34:20

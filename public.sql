/*
Navicat PGSQL Data Transfer

Source Server         : 10.66.240.21_5432
Source Server Version : 90223
Source Host           : 10.66.240.21:5432
Source Database       : ncasb
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90223
File Encoding         : 65001

Date: 2018-07-17 19:41:19
*/


-- ----------------------------
-- Sequence structure for account_account_groups_id_seq
-- ----------------------------
DROP SEQUENCE "public"."account_account_groups_id_seq";
CREATE SEQUENCE "public"."account_account_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for account_account_id_seq
-- ----------------------------
DROP SEQUENCE "public"."account_account_id_seq";
CREATE SEQUENCE "public"."account_account_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for account_account_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE "public"."account_account_user_permissions_id_seq";
CREATE SEQUENCE "public"."account_account_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 42
 CACHE 1;
SELECT setval('"public"."auth_permission_id_seq"', 42, true);

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"public"."django_content_type_id_seq"', 14, true);

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"public"."django_migrations_id_seq"', 14, true);

-- ----------------------------
-- Sequence structure for v_favorite_id_seq
-- ----------------------------
DROP SEQUENCE "public"."v_favorite_id_seq";
CREATE SEQUENCE "public"."v_favorite_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for v_module_id_seq
-- ----------------------------
DROP SEQUENCE "public"."v_module_id_seq";
CREATE SEQUENCE "public"."v_module_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for v_permission_id_seq
-- ----------------------------
DROP SEQUENCE "public"."v_permission_id_seq";
CREATE SEQUENCE "public"."v_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for v_role_id_seq
-- ----------------------------
DROP SEQUENCE "public"."v_role_id_seq";
CREATE SEQUENCE "public"."v_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for v_user_id_seq
-- ----------------------------
DROP SEQUENCE "public"."v_user_id_seq";
CREATE SEQUENCE "public"."v_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for aad_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."aad_record";
CREATE TABLE "public"."aad_record" (
"creationtime" timestamp(6),
"id" varchar(200) COLLATE "default",
"operation" varchar(200) COLLATE "default",
"organizationid" varchar(200) COLLATE "default",
"recordtype" int4,
"resultstatus" varchar(200) COLLATE "default",
"userkey" varchar(200) COLLATE "default",
"usertype" int2,
"version" int2,
"workload" varchar(200) COLLATE "default",
"clientip" varchar(100) COLLATE "default",
"objectid" varchar(200) COLLATE "default",
"userid" varchar(200) COLLATE "default",
"azureactivedirectoryeventtype" int4,
"actor" varchar(400) COLLATE "default",
"actorcontextid" varchar(200) COLLATE "default",
"actoripaddress" varchar(200) COLLATE "default",
"intersystemsid" varchar(200) COLLATE "default",
"intrasystemid" varchar(200) COLLATE "default",
"target" varchar(200) COLLATE "default",
"targetcontextid" varchar(200) COLLATE "default",
"applicationid" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of aad_record
-- ----------------------------
INSERT INTO "public"."aad_record" VALUES ('2018-05-04 00:00:00', 'ad93da22-1cb8-4877-a056-034e06b25ffa', 'UserLoggedIn', 'b1df388c-0969-4c2b-8754-75566d045565', '15', 'Succeeded', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '17414a26-102d-4b16-9b14-243939d04321', '0423d059-f03b-4c03-93b4-cc4fb1e20100', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '00000002-0000-0ff1-ce00-000000000000');
INSERT INTO "public"."aad_record" VALUES ('2018-05-04 00:00:00', 'ad93da22-1cb8-4877-a056-034e06b25ffa', 'UserLoggedIn', 'b1df388c-0969-4c2b-8754-75566d045565', '15', 'Succeeded', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '17414a26-102d-4b16-9b14-243939d04321', '0423d059-f03b-4c03-93b4-cc4fb1e20100', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '00000002-0000-0ff1-ce00-000000000000');
INSERT INTO "public"."aad_record" VALUES ('2018-05-04 00:00:00', 'ad93da22-1cb8-4877-a056-034e06b25ffa', 'UserLoggedIn', 'b1df388c-0969-4c2b-8754-75566d045565', '15', 'Succeeded', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '17414a26-102d-4b16-9b14-243939d04321', '0423d059-f03b-4c03-93b4-cc4fb1e20100', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '00000002-0000-0ff1-ce00-000000000000');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '0aa4084b-622e-4461-ac65-f62e0caac8e9', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45d2447c-701d-4eda-a9b7-0972aca8016f', '73eb3130-f22e-43b1-b4db-d17bc6992300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '11a1f4c7-b3fe-42a4-88ca-9c6a68fdd0ac', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c94d11e7-fbc7-438f-8bf5-45d4a0d1bce9', 'fb1d3326-9258-4054-8a89-a8180feb1d00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '11a1f4c7-b3fe-42a4-88ca-9c6a68fdd0ac', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c94d11e7-fbc7-438f-8bf5-45d4a0d1bce9', 'fb1d3326-9258-4054-8a89-a8180feb1d00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '11a1f4c7-b3fe-42a4-88ca-9c6a68fdd0ac', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c94d11e7-fbc7-438f-8bf5-45d4a0d1bce9', 'fb1d3326-9258-4054-8a89-a8180feb1d00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '11a1f4c7-b3fe-42a4-88ca-9c6a68fdd0ac', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c94d11e7-fbc7-438f-8bf5-45d4a0d1bce9', 'fb1d3326-9258-4054-8a89-a8180feb1d00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '11a1f4c7-b3fe-42a4-88ca-9c6a68fdd0ac', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c94d11e7-fbc7-438f-8bf5-45d4a0d1bce9', 'fb1d3326-9258-4054-8a89-a8180feb1d00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '13dcfadf-9fec-4d33-8a4f-384aa3c6743a', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '28c55a59-c53d-479e-834a-5ee02ebd247c', 'bbea817e-05eb-4a6d-add8-d33c19231f00', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '22b7300e-0bc3-4e9f-8d38-fd7d9eaa04c2', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'dffa0221-61cd-4f14-adcf-92454c4fbd4f', 'aa50250a-becc-44fd-abd2-ea82c6b02000', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '22b7300e-0bc3-4e9f-8d38-fd7d9eaa04c2', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'dffa0221-61cd-4f14-adcf-92454c4fbd4f', 'aa50250a-becc-44fd-abd2-ea82c6b02000', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '22b7300e-0bc3-4e9f-8d38-fd7d9eaa04c2', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'dffa0221-61cd-4f14-adcf-92454c4fbd4f', 'aa50250a-becc-44fd-abd2-ea82c6b02000', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '2fab447f-163f-4a29-9274-f21472f21150', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '099611fb-dd7c-43d9-a0b4-7ee37db8e530', '50b65803-cba1-43a4-a02b-33aae6ea0f00', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '2fab447f-163f-4a29-9274-f21472f21150', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '099611fb-dd7c-43d9-a0b4-7ee37db8e530', '50b65803-cba1-43a4-a02b-33aae6ea0f00', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '2fab447f-163f-4a29-9274-f21472f21150', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '099611fb-dd7c-43d9-a0b4-7ee37db8e530', '50b65803-cba1-43a4-a02b-33aae6ea0f00', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '2fab447f-163f-4a29-9274-f21472f21150', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '099611fb-dd7c-43d9-a0b4-7ee37db8e530', '50b65803-cba1-43a4-a02b-33aae6ea0f00', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '2fab447f-163f-4a29-9274-f21472f21150', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '099611fb-dd7c-43d9-a0b4-7ee37db8e530', '50b65803-cba1-43a4-a02b-33aae6ea0f00', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '31effbaf-3f1f-4ddb-8bb6-2e642c9d9560', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', '502d7530-db64-473c-9d1b-c494d56f2700', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '31effbaf-3f1f-4ddb-8bb6-2e642c9d9560', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', '502d7530-db64-473c-9d1b-c494d56f2700', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '31effbaf-3f1f-4ddb-8bb6-2e642c9d9560', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', '502d7530-db64-473c-9d1b-c494d56f2700', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '31effbaf-3f1f-4ddb-8bb6-2e642c9d9560', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', '502d7530-db64-473c-9d1b-c494d56f2700', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '35cc4eb2-a1d3-45ee-9732-a121e0be390d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'c7b426a5-4d21-48e0-9461-59238ae09bca', '133fceb3-13f6-4154-a872-a495ab6a2600', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '4717b151-75dd-4506-a884-248946def963', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45cb14d6-87af-489b-ad94-9a2ee13996b8', 'df12d0e9-add6-423e-921d-75032aa32100', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '4717b151-75dd-4506-a884-248946def963', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '45cb14d6-87af-489b-ad94-9a2ee13996b8', 'df12d0e9-add6-423e-921d-75032aa32100', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '72980e2f-c852-4610-b6a4-f3f9754b0fb6', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', 'e76f8aa5-47ea-4a57-be35-495da0931400', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '72980e2f-c852-4610-b6a4-f3f9754b0fb6', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', 'e76f8aa5-47ea-4a57-be35-495da0931400', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '72980e2f-c852-4610-b6a4-f3f9754b0fb6', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', 'e76f8aa5-47ea-4a57-be35-495da0931400', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '72980e2f-c852-4610-b6a4-f3f9754b0fb6', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', 'e76f8aa5-47ea-4a57-be35-495da0931400', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '74018c87-3627-4514-802b-eef5aadd61e8', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'fa24315c-27f1-4908-a4e6-ed6b393449ba', '379834a8-99a2-4d23-9848-702c2bbd2400', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '76735fbb-db9e-4520-80f4-8f987b43c032', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '27ee067e-b3c0-4db7-b675-11dbfcba2a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '86d5779d-f9f3-48c5-a51b-a2fe5769f4eb', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '342161f0-c5db-40b0-a7ce-74ba2cd8a264', '4690ff6d-c6d8-4d4c-a87c-837b722a2400', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '8e20b953-ee03-4c15-86e0-fffbae536c26', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '95e5fbf4-a219-494e-aae4-1ab38e1f1fc1', '9782d48c-4cea-4e5f-b7ed-b2ab50112e00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '908069d5-868f-4da4-a7de-bdf613938f17', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '797f4846-ba00-4fd7-ba43-dac1f8f63013', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f1a65826-473e-47cf-8783-ed475a6cb7e8', '7c772cab-fc09-4063-952a-8a88e45f2300', '[{"Type": 0, "ID": "797f4846-ba00-4fd7-ba43-dac1f8f63013"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '908069d5-868f-4da4-a7de-bdf613938f17', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '797f4846-ba00-4fd7-ba43-dac1f8f63013', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f1a65826-473e-47cf-8783-ed475a6cb7e8', '7c772cab-fc09-4063-952a-8a88e45f2300', '[{"Type": 0, "ID": "797f4846-ba00-4fd7-ba43-dac1f8f63013"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '908069d5-868f-4da4-a7de-bdf613938f17', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '797f4846-ba00-4fd7-ba43-dac1f8f63013', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f1a65826-473e-47cf-8783-ed475a6cb7e8', '7c772cab-fc09-4063-952a-8a88e45f2300', '[{"Type": 0, "ID": "797f4846-ba00-4fd7-ba43-dac1f8f63013"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '908069d5-868f-4da4-a7de-bdf613938f17', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '797f4846-ba00-4fd7-ba43-dac1f8f63013', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f1a65826-473e-47cf-8783-ed475a6cb7e8', '7c772cab-fc09-4063-952a-8a88e45f2300', '[{"Type": 0, "ID": "797f4846-ba00-4fd7-ba43-dac1f8f63013"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', '9a663eed-14b4-4198-ad72-4db0bffb6df5', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '88e6e00d-dcfd-4a7a-85aa-bfbfae23faa3', 'f0ae085c-28df-441b-af45-b0eb05152600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'b2f57ed9-2636-414e-bac2-97679dedaae1', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '8bcf1d64-f570-49cd-b8bb-de48b9e1e4d8', '7c5b864b-a927-4490-adc6-d2e8fddc2700', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'b2f57ed9-2636-414e-bac2-97679dedaae1', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '8bcf1d64-f570-49cd-b8bb-de48b9e1e4d8', '7c5b864b-a927-4490-adc6-d2e8fddc2700', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'b37a1fb4-aa07-4884-86f7-22bdd374e835', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'eaeef1c4-f33e-4885-b6f1-1983d91ae712', 'e0ed70d7-c7e9-4533-9db8-eecd207c2200', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'b4c9ab19-60f9-4392-8fc5-f6ff0da44cb6', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000003-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'e4ae7837-bda7-4824-bc0d-e16edf63ff5a', '33745441-46f0-4de6-9f75-fc536d592a00', '[{"Type": 0, "ID": "00000003-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'bff277e3-2bf9-4799-84a1-cd8ed0a8d5ce', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '3dd3b8e6-5a57-49f6-a3a7-0eeec5538803', '4a4a8d69-59f4-4291-a1a7-947482c22600', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c0f531a1-752d-4203-8d9f-3d81075aa19a', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '43b98b3c-ddae-4a3c-9e37-abb26fe02997', '75e8c042-5955-41c7-8f11-8c8e03521e00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c0f531a1-752d-4203-8d9f-3d81075aa19a', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '43b98b3c-ddae-4a3c-9e37-abb26fe02997', '75e8c042-5955-41c7-8f11-8c8e03521e00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c0f531a1-752d-4203-8d9f-3d81075aa19a', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '43b98b3c-ddae-4a3c-9e37-abb26fe02997', '75e8c042-5955-41c7-8f11-8c8e03521e00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c5e13bd4-a2ba-48ad-803a-2be95959ffa0', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', 'Unknown', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'b8b4caea-3c73-4995-879a-b7f4a658ccba', '508345ce-3812-4a0f-a8cd-db3e941c2600', '[{"Type": 0, "ID": "Unknown"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c654aff7-e41d-4947-8a1e-15e93e3a192d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '4a4a8d69-59f4-4291-a1a7-9474a9c02a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c654aff7-e41d-4947-8a1e-15e93e3a192d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '4a4a8d69-59f4-4291-a1a7-9474a9c02a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c654aff7-e41d-4947-8a1e-15e93e3a192d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '4a4a8d69-59f4-4291-a1a7-9474a9c02a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c654aff7-e41d-4947-8a1e-15e93e3a192d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '4a4a8d69-59f4-4291-a1a7-9474a9c02a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'c654aff7-e41d-4947-8a1e-15e93e3a192d', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '83c77c31-eba5-42b8-a462-9bd2b0d65ddd', '4a4a8d69-59f4-4291-a1a7-9474a9c02a00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'd88749f8-6e52-4ee8-b697-cc6b2dd06813', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '6f3ded97-a0a1-45fe-a606-6dc8f68e18e2', 'aa50250a-becc-44fd-abd2-ea82d6b02000', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'd88749f8-6e52-4ee8-b697-cc6b2dd06813', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '6f3ded97-a0a1-45fe-a606-6dc8f68e18e2', 'aa50250a-becc-44fd-abd2-ea82d6b02000', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'd88749f8-6e52-4ee8-b697-cc6b2dd06813', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '6f3ded97-a0a1-45fe-a606-6dc8f68e18e2', 'aa50250a-becc-44fd-abd2-ea82d6b02000', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'da6cb2db-42c1-4b8a-af38-006d800c01ff', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'ccbd67cb-9e25-4d4a-957c-625a327e4f4c', 'b5e7d410-ed61-4db9-b3cc-6cbb148a2500', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'e21f916a-dadf-475b-9603-ab6e1fbecbcd', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '2e42c757-c22f-4232-a1a0-be882b093a91', 'c0223a34-100f-4e60-b1b9-493f752d1b00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-07 00:00:00', 'e2741a73-8b2f-4541-96ac-326767c07470', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '389bdb86-7dd6-4ecf-a412-fb690946ff01', '979201e8-5466-4bde-a4cb-0437828d2000', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-08 00:00:00', '49699f78-5f02-44ec-b7e9-f3b2fa083385', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '39eb8e1d-b6b1-4bfd-9a30-57efd2dd0808', 'e4b873d9-9da8-4aa9-a871-41bd2d271e00', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-08 00:00:00', '4fc08b56-8672-418f-ac7a-bca3e0788c48', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '4601d57e-ad13-4934-aadc-f8c612595f48', 'bbea817e-05eb-4a6d-add8-d33c0ba03700', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-08 00:00:00', 'cb97bc08-e24d-40af-b169-456b312e141b', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '3b9264a5-4739-41f4-be5c-ee22f7fb63b8', 'a559feab-4b77-419f-94ef-f2fae8a53300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-08 00:00:00', 'cb97bc08-e24d-40af-b169-456b312e141b', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '3b9264a5-4739-41f4-be5c-ee22f7fb63b8', 'a559feab-4b77-419f-94ef-f2fae8a53300', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '03205ee1-a957-458b-bf19-15d5d3a3c1ae', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'a807f42a-1f87-48f7-8bce-9e535d783050', '715f64c4-93ba-48a7-bc80-91fe9e9b5400', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '1517fd32-81df-4004-9c0a-9d7c116cf76f', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '9807d354-33de-4df7-ba3a-8664e9414c3e', '24120f9b-8ea7-4f61-b627-a59bf2925100', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '16478bab-25fc-41f4-b657-cdf138801030', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'abf08fba-5a00-4bc7-9ec3-16f218011a97', '9eecc7eb-a4e8-4437-81eb-a7b227384900', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '367845a1-52a2-46ea-93cc-904d0e6b46e8', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000003-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'e0fa9426-6530-47cd-9dba-8d1148f84768', '9782d48c-4cea-4e5f-b7ed-b2ab22775d00', '[{"Type": 0, "ID": "00000003-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '47d5ba21-34ea-4ab5-923d-d602f3e0a2db', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '5714c444-5481-41bf-8e59-c8f9c3c3638e', '342089df-bc79-440b-b29f-3366b9915500', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '5a6eb4c9-12ea-4216-991a-1e9a80597406', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '04949a1e-c191-4d97-8365-3360308559a8', '2d75e9a3-bf66-4c3f-98cf-c0ca38b12900', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '5b4bc87b-fcbe-40ed-a98b-8f82fb66402f', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '797f4846-ba00-4fd7-ba43-dac1f8f63013', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f1a65826-473e-47cf-8783-ed475a6cb7e8', '6cd0ddf9-90a7-4b92-99b9-a19b356c4b00', '[{"Type": 0, "ID": "797f4846-ba00-4fd7-ba43-dac1f8f63013"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '5d2087d9-b4ea-45a1-8273-9a6696ec280c', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '143a924a-c138-4275-9b32-b5fb87738739', 'c0223a34-100f-4e60-b1b9-493f84744000', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', '8c80e1e6-5723-4496-acf9-d64cc21ce0b3', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '5059eec0-b176-4029-92cd-e4d4b6d01bae', 'afe4bfd4-0bb5-472d-8265-9f808da93f00', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'a5904605-803e-475a-994f-2df632dcc7c4', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0ff1-ce00-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'ce6cd48a-19d4-481a-9b33-ced0d9fa0a24', 'c38e9e9d-fee9-4911-8ddb-ca305d213e00', '[{"Type": 0, "ID": "00000002-0000-0ff1-ce00-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'b5f1bc08-072f-4397-9ac1-e37702762f18', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '1c1f3e83-8fb1-440d-97b7-a3718a0f5b29', '72d1dbab-49f9-4759-8194-dd6b30514900', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'c72ae9b8-d29d-4232-9fd9-6ac78a4e4b99', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '0f698dd4-f011-4d23-a33e-b36416dcb1e6', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '3e9b9d45-ec83-41f4-bc54-899d4c0cc4df', '35e54007-b62b-4426-a937-1444b3dc5000', '[{"Type": 0, "ID": "0f698dd4-f011-4d23-a33e-b36416dcb1e6"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'f44cbebb-0210-4d48-b41e-9f833660127b', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '5f09333a-842c-47da-a157-57da27fcbca5', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', 'f178d20d-6670-4b63-9dc7-5d0afbecac64', '7812da01-7882-4dea-a63d-3a4d7e8f5400', '[{"Type": 0, "ID": "5f09333a-842c-47da-a157-57da27fcbca5"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'fabddf87-0533-4894-b638-ed09883916f5', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '11a15e05-01e7-4826-bed4-b706541099a2', '7812da01-7882-4dea-a63d-3a4d8da15100', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'fabddf87-0533-4894-b638-ed09883916f5', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '11a15e05-01e7-4826-bed4-b706541099a2', '7812da01-7882-4dea-a63d-3a4d8da15100', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');
INSERT INTO "public"."aad_record" VALUES ('2018-05-09 00:00:00', 'fabddf87-0533-4894-b638-ed09883916f5', '', 'b1df388c-0969-4c2b-8754-75566d045565', '15', '', '10037FFEA9294A91@nsfocuscomcn.onmicrosoft.com', '0', '1', 'AzureActiveDirectory', '119.6.3.75', '00000002-0000-0000-c000-000000000000', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '1', 'null', 'b1df388c-0969-4c2b-8754-75566d045565', '119.6.3.75', '11a15e05-01e7-4826-bed4-b706541099a2', '7812da01-7882-4dea-a63d-3a4d8da15100', '[{"Type": 0, "ID": "00000002-0000-0000-c000-000000000000"}]', 'b1df388c-0969-4c2b-8754-75566d045565', '');

-- ----------------------------
-- Table structure for account_account
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_account";
CREATE TABLE "public"."account_account" (
"id" int4 DEFAULT nextval('account_account_id_seq'::regclass) NOT NULL,
"password" varchar(128) COLLATE "default" NOT NULL,
"last_login" timestamptz(6),
"is_superuser" bool NOT NULL,
"username" varchar(150) COLLATE "default" NOT NULL,
"first_name" varchar(30) COLLATE "default" NOT NULL,
"last_name" varchar(30) COLLATE "default" NOT NULL,
"email" varchar(254) COLLATE "default" NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL,
"name" varchar(200) COLLATE "default" NOT NULL,
"telephone" varchar(200) COLLATE "default" NOT NULL,
"is_only_read" bool NOT NULL,
"role_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of account_account
-- ----------------------------

-- ----------------------------
-- Table structure for account_account_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_account_groups";
CREATE TABLE "public"."account_account_groups" (
"id" int4 DEFAULT nextval('account_account_groups_id_seq'::regclass) NOT NULL,
"account_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of account_account_groups
-- ----------------------------

-- ----------------------------
-- Table structure for account_account_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."account_account_user_permissions";
CREATE TABLE "public"."account_account_user_permissions" (
"id" int4 DEFAULT nextval('account_account_user_permissions_id_seq'::regclass) NOT NULL,
"account_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of account_account_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for alarm
-- ----------------------------
DROP TABLE IF EXISTS "public"."alarm";
CREATE TABLE "public"."alarm" (
"creationtime" timestamp(6),
"ip" varchar COLLATE "default",
"userid" varchar COLLATE "default",
"operation" varchar COLLATE "default",
"logincount" int8,
"location" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of alarm
-- ----------------------------

-- ----------------------------
-- Table structure for app_register_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_register_info";
CREATE TABLE "public"."app_register_info" (
"username" varchar(255) COLLATE "default" NOT NULL,
"password" varchar(255) COLLATE "default",
"app_type" int2 NOT NULL,
"authorize_info" text COLLATE "default",
"is_authorized" int2 NOT NULL,
"id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of app_register_info
-- ----------------------------
INSERT INTO "public"."app_register_info" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'LI6889246chen', '0', '{''client_secret'': ''2YGWi7ypq+AAro9i2HHxS0v65lw7f0LrRf9V7RrteLI='', ''client_id'': ''007b4eac-a667-4d15-8fbc-210fba992f74''}', '1', '1');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add app model', '6', 'add_appmodel');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change app model', '6', 'change_appmodel');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete app model', '6', 'delete_appmodel');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add app generality model', '7', 'add_appgeneralitymodel');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change app generality model', '7', 'change_appgeneralitymodel');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete app generality model', '7', 'delete_appgeneralitymodel');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add app register info', '8', 'add_appregisterinfo');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change app register info', '8', 'change_appregisterinfo');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete app register info', '8', 'delete_appregisterinfo');
INSERT INTO "public"."auth_permission" VALUES ('25', 'Can add permission', '9', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('26', 'Can change permission', '9', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('27', 'Can delete permission', '9', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('28', 'Can add user', '10', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('29', 'Can change user', '10', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('30', 'Can delete user', '10', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('31', 'Can add role', '11', 'add_role');
INSERT INTO "public"."auth_permission" VALUES ('32', 'Can change role', '11', 'change_role');
INSERT INTO "public"."auth_permission" VALUES ('33', 'Can delete role', '11', 'delete_role');
INSERT INTO "public"."auth_permission" VALUES ('34', 'Can add favorite', '12', 'add_favorite');
INSERT INTO "public"."auth_permission" VALUES ('35', 'Can change favorite', '12', 'change_favorite');
INSERT INTO "public"."auth_permission" VALUES ('36', 'Can delete favorite', '12', 'delete_favorite');
INSERT INTO "public"."auth_permission" VALUES ('37', 'Can add module', '13', 'add_module');
INSERT INTO "public"."auth_permission" VALUES ('38', 'Can change module', '13', 'change_module');
INSERT INTO "public"."auth_permission" VALUES ('39', 'Can delete module', '13', 'delete_module');
INSERT INTO "public"."auth_permission" VALUES ('40', 'Can add user', '14', 'add_account');
INSERT INTO "public"."auth_permission" VALUES ('41', 'Can change user', '14', 'change_account');
INSERT INTO "public"."auth_permission" VALUES ('42', 'Can delete user', '14', 'delete_account');

-- ----------------------------
-- Table structure for casb_ip_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."casb_ip_info";
CREATE TABLE "public"."casb_ip_info" (
"uuid" varchar(255) COLLATE "default" NOT NULL,
"longitude" float8,
"latitude" float8,
"ip" inet NOT NULL,
"country" text COLLATE "default",
"city" text COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of casb_ip_info
-- ----------------------------
INSERT INTO "public"."casb_ip_info" VALUES ('2mq5ttbpn5u0', '30.659462', '104.065735', '119.6.3.75', '中国', '成都市');

-- ----------------------------
-- Table structure for casb_operation
-- ----------------------------
DROP TABLE IF EXISTS "public"."casb_operation";
CREATE TABLE "public"."casb_operation" (
"id" int4 NOT NULL,
"opration_name" text COLLATE "default" NOT NULL,
"time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of casb_operation
-- ----------------------------
INSERT INTO "public"."casb_operation" VALUES ('1', 'userlogin', null);

-- ----------------------------
-- Table structure for casb_user_event
-- ----------------------------
DROP TABLE IF EXISTS "public"."casb_user_event";
CREATE TABLE "public"."casb_user_event" (
"userid" text COLLATE "default" NOT NULL,
"uuid" text COLLATE "default" NOT NULL,
"event" text COLLATE "default",
"operationtime" timestamp(6),
"clientip" inet
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of casb_user_event
-- ----------------------------
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '0778tm5on59z', 'UserLoggedIn', '2018-04-20 14:39:05', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '0809tm5on5ny', 'UserLoggedIn', '2018-04-19 15:11:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '0j78tm5on58m', 'UserLoggedIn', '2018-04-19 11:25:35', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '1dk6tm5on5h9', 'UserLoggedIn', '2018-04-19 11:25:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '1gertm5on5bm', 'UserLoginFailed', '2018-04-19 18:51:24', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '1kf9tm5on5yk', 'UserLoggedIn', '2018-04-19 15:11:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '1tr3tm5on5yc', 'UserLoggedIn', '2018-04-19 15:04:11', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '2cbctm5on5lp', 'UserLoggedIn', '2018-04-20 14:38:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '33w4tm5on5m6', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '37oqtm5on5qf', 'UserLoggedIn', '2018-04-19 15:04:17', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '3iqstm5on5mk', 'UserLoggedIn', '2018-04-19 11:37:28', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '3joqtm5on58s', 'UserLoggedIn', '2018-04-20 14:36:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '42f6tm5on5qs', 'UserLoggedIn', '2018-04-19 18:53:26', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '4i2ktm5on5d4', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '4ux3tm5on5iw', 'UserLoggedIn', '2018-04-19 14:52:39', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '5cnqtm5on5rm', 'UserLoggedIn', '2018-04-20 15:46:18', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '5i7qtm5on5jr', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '5j9otm5on5nb', 'UserLoggedIn', '2018-04-19 11:25:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '6ddxtm5on5ak', 'UserLoggedIn', '2018-04-19 15:11:54', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '6f3ctm5on5yo', 'UserLoggedIn', '2018-04-19 15:04:11', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '6hu4tm5on5e7', 'UserLoggedIn', '2018-04-19 13:52:32', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '6n3dtm5on5v0', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '6u5dtm5on52h', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '740stm5on5rf', 'UserLoggedIn', '2018-04-19 18:53:51', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', '7iiptm5on5o5', 'UserLoggedIn', '2018-04-19 11:25:34', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '8axktm5on5gk', 'UserLoggedIn', '2018-04-19 19:06:20', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '8cs3tm5on5q5', 'UserLoggedIn', '2018-04-20 14:37:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '8v7htm5on5xd', 'UserLoggedIn', '2018-04-20 14:36:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '9dtrtm5on53q', 'UserLoggedIn', '2018-04-19 18:53:53', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', '9tbhtm5on5gb', 'UserLoggedIn', '2018-04-19 18:53:23', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'a2lktm5on5j1', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'abjxtm5on5df', 'UserLoggedIn', '2018-04-19 15:11:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'ag8vtm5on5vq', 'UserLoggedIn', '2018-04-20 03:25:42', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'aoogtm5on59u', 'UserLoggedIn', '2018-04-19 11:25:36', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'at8stm5on5c3', 'UserLoggedIn', '2018-04-19 18:53:53', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'auyktm5on59i', 'UserLoggedIn', '2018-04-19 18:53:25', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'aziotm5on5ih', 'UserLoginFailed', '2018-04-19 18:51:24', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'b3uwtm5on5ix', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'bjzrtm5on50j', 'UserLoggedIn', '2018-04-19 11:25:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'bv0mtm5on52u', 'UserLoggedIn', '2018-04-19 15:11:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'byowtm5on5i0', 'UserLoggedIn', '2018-04-19 18:51:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'calvtm5on540', 'UserLoggedIn', '2018-04-20 03:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'cdt5tm5on50u', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'ckrxtm5on5re', 'UserLoggedIn', '2018-04-19 11:37:28', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'crc4tm5on5tm', 'UserLoggedIn', '2018-04-19 18:53:21', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'csvctm5on5bh', 'UserLoggedIn', '2018-04-19 19:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'd95ktm5on5c0', 'UserLoggedIn', '2018-04-19 19:06:20', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'da38tm5on59d', 'UserLoggedIn', '2018-04-20 14:39:05', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'dcl3tm5on5je', 'UserLoggedIn', '2018-04-20 14:38:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'dgg3tm5on5n9', 'UserLoggedIn', '2018-04-19 19:06:20', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'dlgqtm5on56v', 'UserLoggedIn', '2018-04-19 15:11:26', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'dn15tm5on5k1', 'UserLoggedIn', '2018-04-19 19:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'drsrtm5on5m5', 'UserLoggedIn', '2018-04-19 18:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'e026tm5on5aw', 'UserLoggedIn', '2018-04-19 17:50:08', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'e3bctm5on5eq', 'UserLoggedIn', '2018-04-19 17:50:08', '119.6.3.73');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'ejhstm5on5g9', 'UserLoggedIn', '2018-04-19 11:37:28', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'f5xptm5on516', 'UserLoggedIn', '2018-04-20 14:36:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'ffcgtm5on5fc', 'UserLoggedIn', '2018-04-19 11:25:29', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'fx2stm5on5sp', 'UserLoggedIn', '2018-04-20 03:25:39', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'g9bdtm5on5aw', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'g9omtm5on5sy', 'UserLoggedIn', '2018-04-20 02:53:32', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'gczvtm5on5uv', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'gjwktm5on5xw', 'UserLoggedIn', '2018-04-19 18:53:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'gkvvtm5on50i', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'gr9otm5on5gr', 'UserLoggedIn', '2018-04-19 19:06:12', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'gwcrtm5on5vj', 'UserLoggedIn', '2018-04-19 18:51:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'h9qqtm5on5lm', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'hcxqtm5on5n9', 'UserLoggedIn', '2018-04-20 14:36:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'hv5ftm5on50h', 'UserLoggedIn', '2018-04-19 11:25:35', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'i7hgtm5on51f', 'UserLoggedIn', '2018-04-20 14:36:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'ix06tm5on5ku', 'UserLoggedIn', '2018-04-19 18:53:25', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'jw7stm5on55h', 'UserLoggedIn', '2018-04-19 15:04:17', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'k189tm5on56v', 'UserLoggedIn', '2018-04-19 18:53:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'k57qtm5on503', 'UserLoggedIn', '2018-04-19 15:11:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'kgs8tm5on5k0', 'UserLoggedIn', '2018-04-20 14:39:05', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'kpyctm5on51i', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'lzvrtm5on5pp', 'UserLoggedIn', '2018-04-19 18:53:36', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'm7fhtm5on5w6', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mf1ptm5on5i9', 'UserLoggedIn', '2018-04-19 18:51:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mfqhtm5on5be', 'UserLoggedIn', '2018-04-19 19:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mftvtm5on5yh', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mi4dtm5on5up', 'UserLoggedIn', '2018-04-19 18:53:52', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'mmt9tm5on5ty', 'UserLoggedIn', '2018-04-19 15:11:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mqsztm5on5lp', 'UserLoggedIn', '2018-04-20 02:53:32', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'mtgmtm5on5fs', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'myzftm5on5dz', 'UserLoggedIn', '2018-04-20 14:36:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'nktztm5on5u9', 'UserLoggedIn', '2018-04-19 19:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'nmw9tm5on5lk', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'npewtm5on5s4', 'UserLoggedIn', '2018-04-19 19:06:12', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'ns15tm5on5lz', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'o3m8tm5on5oz', 'UserLoggedIn', '2018-04-19 15:11:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'o4notm5on5k2', 'UserLoggedIn', '2018-04-19 11:25:39', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'or58tm5on58i', 'UserLoggedIn', '2018-04-20 14:36:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'p5cftm5on5ad', 'UserLoggedIn', '2018-04-19 11:37:28', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'p8chtm5on56e', 'UserLoggedIn', '2018-04-19 19:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'pb5ptm5on5gs', 'UserLoggedIn', '2018-04-20 14:36:30', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'pbr5tm5on5wo', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'pcp6tm5on5nk', 'UserLoggedIn', '2018-04-20 14:38:28', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'pfvxtm5on5g4', 'UserLoggedIn', '2018-04-20 14:36:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'pm7ktm5on5x6', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'pu9ptm5on598', 'UserLoggedIn', '2018-04-19 11:25:29', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'q3pktm5on56x', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'qinmtm5on5ax', 'UserLoggedIn', '2018-04-20 02:53:32', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'qjdotm5on5dm', 'UserLoggedIn', '2018-04-19 19:08:25', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'qypptm5on5xl', 'UserLoggedIn', '2018-04-19 18:53:21', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'r4t9tm5on53u', 'UserLoggedIn', '2018-04-20 15:46:18', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'rovwtm5on5ec', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'srqdtm5on5wp', 'UserLoggedIn', '2018-04-19 18:53:51', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'takctm5on585', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'tuo5tm5on5w3', 'UserLoggedIn', '2018-04-19 19:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'uybotm5on56h', 'UserLoggedIn', '2018-04-19 11:25:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'v75stm5on549', 'UserLoggedIn', '2018-04-19 18:53:26', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'vmf5tm5on5oe', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'vqnxtm5on5da', 'UserLoggedIn', '2018-04-20 14:36:27', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'vrkotm5on5ui', 'UserLoggedIn', '2018-04-20 02:53:24', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'wc3gtm5on56j', 'UserLoggedIn', '2018-04-20 14:39:05', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'x74wtm5on54m', 'UserLoggedIn', '2018-04-19 19:06:12', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'xkb9tm5on576', 'UserLoggedIn', '2018-04-20 02:53:33', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'xwa4tm5on5no', 'UserLoginFailed', '2018-04-19 18:51:24', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'xzactm5on5j4', 'UserLoggedIn', '2018-04-19 18:53:51', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'y5nptm5on5il', 'UserLoggedIn', '2018-04-20 14:37:40', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'y639tm5on5xj', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'ye53tm5on5e5', 'UserLoggedIn', '2018-04-20 15:46:18', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('chenlimin@nsfocuscomcn.onmicrosoft.com', 'z1dwtm5on58v', 'UserLoggedIn', '2018-04-19 11:25:34', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'z8g4tm5on52s', 'UserLoggedIn', '2018-04-19 18:53:31', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'zdnotm5on58w', 'UserLoggedIn', '2018-04-20 03:25:41', '119.6.3.75');
INSERT INTO "public"."casb_user_event" VALUES ('yangxuncai@nsfocuscomcn.onmicrosoft.com', 'zj5wtm5on58c', 'UserLoggedIn', '2018-04-19 23:11:41', '119.6.3.75');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"object_id" text COLLATE "default",
"object_repr" varchar(200) COLLATE "default" NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text COLLATE "default" NOT NULL,
"content_type_id" int4,
"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"app_label" varchar(100) COLLATE "default" NOT NULL,
"model" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('2', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('3', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('5', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('6', 'app', 'appmodel');
INSERT INTO "public"."django_content_type" VALUES ('7', 'app', 'appgeneralitymodel');
INSERT INTO "public"."django_content_type" VALUES ('8', 'app', 'appregisterinfo');
INSERT INTO "public"."django_content_type" VALUES ('9', 'account', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('10', 'account', 'user');
INSERT INTO "public"."django_content_type" VALUES ('11', 'account', 'role');
INSERT INTO "public"."django_content_type" VALUES ('12', 'account', 'favorite');
INSERT INTO "public"."django_content_type" VALUES ('13', 'account', 'module');
INSERT INTO "public"."django_content_type" VALUES ('14', 'account', 'account');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
"id" int4 DEFAULT nextval('django_migrations_id_seq'::regclass) NOT NULL,
"app" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2018-07-17 19:23:28.091114+08');
INSERT INTO "public"."django_migrations" VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-07-17 19:23:28.130586+08');
INSERT INTO "public"."django_migrations" VALUES ('3', 'auth', '0001_initial', '2018-07-17 19:23:28.374878+08');
INSERT INTO "public"."django_migrations" VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-07-17 19:23:28.413813+08');
INSERT INTO "public"."django_migrations" VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-07-17 19:23:28.439562+08');
INSERT INTO "public"."django_migrations" VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-07-17 19:23:28.466242+08');
INSERT INTO "public"."django_migrations" VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-07-17 19:23:28.492051+08');
INSERT INTO "public"."django_migrations" VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-07-17 19:23:28.514701+08');
INSERT INTO "public"."django_migrations" VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-07-17 19:23:28.535864+08');
INSERT INTO "public"."django_migrations" VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-07-17 19:23:28.559624+08');
INSERT INTO "public"."django_migrations" VALUES ('11', 'account', '0001_initial', '2018-07-17 19:23:29.317199+08');
INSERT INTO "public"."django_migrations" VALUES ('12', 'admin', '0001_initial', '2018-07-17 19:23:29.453526+08');
INSERT INTO "public"."django_migrations" VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2018-07-17 19:23:29.541193+08');
INSERT INTO "public"."django_migrations" VALUES ('14', 'sessions', '0001_initial', '2018-07-17 19:23:29.632321+08');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) COLLATE "default" NOT NULL,
"session_data" text COLLATE "default" NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for hello
-- ----------------------------
DROP TABLE IF EXISTS "public"."hello";
CREATE TABLE "public"."hello" (
"AaBb" varchar COLLATE "default",
"BbAa" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of hello
-- ----------------------------
INSERT INTO "public"."hello" VALUES (null, null);

-- ----------------------------
-- Table structure for sharepoint_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."sharepoint_record";
CREATE TABLE "public"."sharepoint_record" (
"creationtime" timestamp(6),
"id" varchar COLLATE "default",
"operation" varchar COLLATE "default",
"organizationid" varchar COLLATE "default",
"recordtype" int4,
"userkey" varchar COLLATE "default",
"usertype" int4,
"version" int4,
"workload" varchar COLLATE "default",
"clientip" varchar COLLATE "default",
"objectid" varchar COLLATE "default",
"userid" varchar COLLATE "default",
"correlationid" varchar COLLATE "default",
"eventsource" varchar COLLATE "default",
"itemtype" varchar COLLATE "default",
"listid" varchar COLLATE "default",
"listitemuniqueid" varchar COLLATE "default",
"site" varchar COLLATE "default",
"useragent" varchar COLLATE "default",
"webid" varchar COLLATE "default",
"sourcefileextension" varchar COLLATE "default",
"siteurl" varchar COLLATE "default",
"sourcefilename" varchar COLLATE "default",
"sourcerelativeurl" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sharepoint_record
-- ----------------------------
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:21', 'f68b8937-605d-4dc2-f163-08d5b5844f79', 'PageViewed', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/_layouts/15/onedrive.aspx', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0562659e-7076-5000-d360-599099d6e6c1', 'SharePoint', 'Page', null, '59a8433d-9bb8-cfef-6edc-4c0fc8b86875', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '56821aaa-523a-4e6d-a970-0d4285fca835', null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:31', 'c9a3dd35-975c-4071-5871-08d5b5845598', 'FileAccessed', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/User Photos/Profile Pictures/chenlimin_nsfocuscomcn_onmicrosoft_com_SThumb.jpg', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0662659e-c0de-5000-d360-513073373da9', 'SharePoint', 'File', 'e88a5f26-e2e3-441d-970a-630ca6cd7806', '2202e178-a195-44df-bf88-824a941e8d68', '64d42ba9-a877-43e3-975e-151dee69d67e', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '6704f9cb-3290-4afb-bf4a-36ce2c32da1c', 'jpg', 'https://nsfocuscomcn-my.sharepoint.com/', 'chenlimin_nsfocuscomcn_onmicrosoft_com_SThumb.jpg', 'User Photos/Profile Pictures');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:32', '095a19f0-3636-44b5-9e32-08d5b58455d4', 'FileAccessed', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/forticasb-v1-0-0-handbook-revision2.pdf', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0862659e-d00b-5000-7bc0-f8a909d25fa3', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '67a4db15-36c5-44aa-b621-a5aa9f871ade', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'OneDriveMpc/1.0', '56821aaa-523a-4e6d-a970-0d4285fca835', 'pdf', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'forticasb-v1-0-0-handbook-revision2.pdf', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:32', '10f45479-e59a-497e-566b-08d5b5845624', 'FileAccessed', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/no-profile-photo.png', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0862659e-9029-5000-d360-5424a330e6ac', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '10a43873-2a55-4e2b-806a-62cbdf012562', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'OneDriveMpc/1.0', '56821aaa-523a-4e6d-a970-0d4285fca835', 'png', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'no-profile-photo.png', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:34', 'a2382253-5dca-4509-08f8-08d5b5845742', 'FileDownloaded', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/forticasb-v1-0-0-handbook-revision2.pdf', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0862659e-50a9-5000-7a12-c3fb15490fa0', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '67a4db15-36c5-44aa-b621-a5aa9f871ade', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '56821aaa-523a-4e6d-a970-0d4285fca835', 'pdf', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'forticasb-v1-0-0-handbook-revision2.pdf', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:35', '87b0892d-f71e-4723-290d-08d5b584576f', 'FileDownloaded', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/forticasb-v1-0-0-handbook-revision2.pdf', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0862659e-f08a-5000-d360-59b061a2e1c3', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '67a4db15-36c5-44aa-b621-a5aa9f871ade', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '56821aaa-523a-4e6d-a970-0d4285fca835', 'pdf', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'forticasb-v1-0-0-handbook-revision2.pdf', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:35', 'fb9a8ded-16a3-43c9-8a65-08d5b58457b5', 'FileDownloaded', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/forticasb-v1-0-0-handbook-revision2.pdf', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0862659e-a0d8-5000-d360-52f5234096f5', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '67a4db15-36c5-44aa-b621-a5aa9f871ade', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '56821aaa-523a-4e6d-a970-0d4285fca835', 'pdf', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'forticasb-v1-0-0-handbook-revision2.pdf', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 08:10:37', 'ce350983-ebe4-497d-4dd4-08d5b58458b5', 'FileDownloaded', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'OneDrive', '119.6.3.75', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/Documents/forticasb-v1-0-0-handbook-revision2.pdf', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '0962659e-6042-5000-d360-5c115927103b', 'SharePoint', 'File', '0f5e74b0-af5e-432b-8667-ea887f8310ed', '67a4db15-36c5-44aa-b621-a5aa9f871ade', '94815ce1-6a3b-42ad-9946-02d4f4a24657', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '56821aaa-523a-4e6d-a970-0d4285fca835', 'pdf', 'https://nsfocuscomcn-my.sharepoint.com/personal/chenlimin_nsfocuscomcn_onmicrosoft_com/', 'forticasb-v1-0-0-handbook-revision2.pdf', 'Documents');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:56', '418c74e3-6b95-4414-3c54-08d5b58c5acc', 'SiteCollectionCreated', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Site', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:56', 'e60e1312-b79d-42ac-eb64-08d5b58c5afb', 'AddedToGroup', 'b1df388c-0969-4c2b-8754-75566d045565', '14', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Web', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, '4d900486-8f42-46d4-a15f-4a90bc1d763a', null, 'https://nsfocuscomcn.sharepoint.com/sites/test', null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:57', '33ae58ae-d569-4049-aadd-08d5b58c5b5d', 'AddedToGroup', 'b1df388c-0969-4c2b-8754-75566d045565', '14', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Web', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, '4d900486-8f42-46d4-a15f-4a90bc1d763a', null, 'https://nsfocuscomcn.sharepoint.com/sites/test', null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:57', '9063d05f-300d-431c-9ae1-08d5b58c5b0c', 'AddedToGroup', 'b1df388c-0969-4c2b-8754-75566d045565', '14', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Web', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, '4d900486-8f42-46d4-a15f-4a90bc1d763a', null, 'https://nsfocuscomcn.sharepoint.com/sites/test', null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:57', 'b81fc5b7-76e6-48d1-10ea-08d5b58c5b22', 'AddedToGroup', 'b1df388c-0969-4c2b-8754-75566d045565', '14', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Web', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, '4d900486-8f42-46d4-a15f-4a90bc1d763a', null, 'https://nsfocuscomcn.sharepoint.com/sites/test', null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:07:57', 'cca38c33-5e4f-4446-4709-08d5b58c5b7a', 'AddedToGroup', 'b1df388c-0969-4c2b-8754-75566d045565', '14', 'i:0i.t|00000003-0000-0ff1-ce00-000000000000|app@sharepoint', '0', '1', 'SharePoint', '40.96.3.21', 'https://nsfocuscomcn.sharepoint.com/sites/test', 'app@sharepoint', 'd1e758e0-a561-4608-a4bf-758f319673ae', 'SharePoint', 'Web', null, null, 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', null, '4d900486-8f42-46d4-a15f-4a90bc1d763a', null, 'https://nsfocuscomcn.sharepoint.com/sites/test', null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 09:08:18', 'fb213a2d-dfb7-44b7-35e3-08d5b58c67cc', 'FolderDeleted', 'b1df388c-0969-4c2b-8754-75566d045565', '6', 'S-1-0-0', '0', '1', 'SharePoint', '', 'https://nsfocuscomcn.sharepoint.com/sites/test/FormServerTemplates/Forms/Document', 'SHAREPOINT\system', '5165659e-4079-5000-74b3-2006c408907f', 'SharePoint', 'Folder', 'ec0e79eb-0b67-429d-86f2-91d8c684d9ca', '311b0a28-a12d-4be8-9e6f-50a30912d0f6', 'd6d0cca7-a2b2-4c8e-9216-e94a2e2fd6ff', '', '4d900486-8f42-46d4-a15f-4a90bc1d763a', '', 'https://nsfocuscomcn.sharepoint.com/sites/test/', 'Document', 'FormServerTemplates/Forms');
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 10:44:47', '000bc6a6-53c6-41b2-8685-08d5b599e252', 'SearchResultReturned', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', 'db6a659e-b079-5000-74b3-2829be61b1aa', 'chenlimin@nsfocuscomcn.onmicrosoft.com', 'db6a659e-b079-5000-74b3-2829be61b1aa', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 10:44:47', '684cb25b-c4ba-4ea9-259f-08d5b599e231', 'SearchQueryPerformed', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', 'db6a659e-b079-5000-74b3-2829be61b1aa', 'chenlimin@nsfocuscomcn.onmicrosoft.com', 'db6a659e-b079-5000-74b3-2829be61b1aa', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 10:44:47', '6b069fee-bb12-429b-be52-08d5b599e24c', 'SearchResultReturned', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', 'db6a659e-806f-5000-d360-545c250179e8', 'chenlimin@nsfocuscomcn.onmicrosoft.com', 'db6a659e-806f-5000-d360-545c250179e8', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 10:44:47', 'eb19aec9-d89a-466a-7207-08d5b599e21f', 'SearchQueryPerformed', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', 'db6a659e-806f-5000-d360-545c250179e8', 'chenlimin@nsfocuscomcn.onmicrosoft.com', 'db6a659e-806f-5000-d360-545c250179e8', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 17:01:47', '16595c0a-264f-4467-fbc7-08d5b5ce8ce6', 'SearchResultReturned', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', '6d80659e-b0ee-5000-cc1f-881b8d4051ec', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '6d80659e-b0ee-5000-cc1f-881b8d4051ec', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);
INSERT INTO "public"."sharepoint_record" VALUES ('2018-05-09 17:01:47', '927f9037-502f-44a6-d517-08d5b5ce8cc0', 'SearchQueryPerformed', 'b1df388c-0969-4c2b-8754-75566d045565', '4', 'i:0h.f|membership|10037ffea9294a91@live.com', '0', '1', 'SharePoint', '52.148.93.74', '6d80659e-b0ee-5000-cc1f-881b8d4051ec', 'chenlimin@nsfocuscomcn.onmicrosoft.com', '6d80659e-b0ee-5000-cc1f-881b8d4051ec', 'SharePoint', 'Web', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for test_time
-- ----------------------------
DROP TABLE IF EXISTS "public"."test_time";
CREATE TABLE "public"."test_time" (
"testtime" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of test_time
-- ----------------------------
INSERT INTO "public"."test_time" VALUES ('2018-05-22 11:35:28.141108');

-- ----------------------------
-- Table structure for v_favorite
-- ----------------------------
DROP TABLE IF EXISTS "public"."v_favorite";
CREATE TABLE "public"."v_favorite" (
"id" int4 DEFAULT nextval('v_favorite_id_seq'::regclass) NOT NULL,
"module_id" int4 NOT NULL,
"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of v_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for v_module
-- ----------------------------
DROP TABLE IF EXISTS "public"."v_module";
CREATE TABLE "public"."v_module" (
"id" int4 DEFAULT nextval('v_module_id_seq'::regclass) NOT NULL,
"name" varchar(200) COLLATE "default" NOT NULL,
"url" varchar(200) COLLATE "default" NOT NULL,
"image" varchar(200) COLLATE "default" NOT NULL,
"level" int4 NOT NULL,
"type" int4 NOT NULL,
"group" int4 NOT NULL,
"parent" int4 NOT NULL,
"identity" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of v_module
-- ----------------------------

-- ----------------------------
-- Table structure for v_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."v_permission";
CREATE TABLE "public"."v_permission" (
"id" int4 DEFAULT nextval('v_permission_id_seq'::regclass) NOT NULL,
"module_id" int4 NOT NULL,
"role_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of v_permission
-- ----------------------------

-- ----------------------------
-- Table structure for v_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."v_role";
CREATE TABLE "public"."v_role" (
"id" int4 DEFAULT nextval('v_role_id_seq'::regclass) NOT NULL,
"name" varchar(200) COLLATE "default" NOT NULL,
"identity" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of v_role
-- ----------------------------

-- ----------------------------
-- Table structure for v_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."v_user";
CREATE TABLE "public"."v_user" (
"id" int4 DEFAULT nextval('v_user_id_seq'::regclass) NOT NULL,
"name" varchar(200) COLLATE "default" NOT NULL,
"account" varchar(50) COLLATE "default" NOT NULL,
"password" varchar(200) COLLATE "default" NOT NULL,
"telephone" varchar(200) COLLATE "default" NOT NULL,
"is_active" bool NOT NULL,
"is_only_read" bool NOT NULL,
"role_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of v_user
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."account_account_groups_id_seq" OWNED BY "account_account_groups"."id";
ALTER SEQUENCE "public"."account_account_id_seq" OWNED BY "account_account"."id";
ALTER SEQUENCE "public"."account_account_user_permissions_id_seq" OWNED BY "account_account_user_permissions"."id";
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "django_migrations"."id";
ALTER SEQUENCE "public"."v_favorite_id_seq" OWNED BY "v_favorite"."id";
ALTER SEQUENCE "public"."v_module_id_seq" OWNED BY "v_module"."id";
ALTER SEQUENCE "public"."v_permission_id_seq" OWNED BY "v_permission"."id";
ALTER SEQUENCE "public"."v_role_id_seq" OWNED BY "v_role"."id";
ALTER SEQUENCE "public"."v_user_id_seq" OWNED BY "v_user"."id";

-- ----------------------------
-- Indexes structure for table account_account
-- ----------------------------
CREATE INDEX "account_account_84566833" ON "public"."account_account" USING btree (role_id);
CREATE INDEX "account_account_name_f19eb3b1_like" ON "public"."account_account" USING btree (name "pg_catalog"."varchar_pattern_ops");
CREATE INDEX "account_account_username_7d6d7da7_like" ON "public"."account_account" USING btree (username "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table account_account
-- ----------------------------
ALTER TABLE "public"."account_account" ADD UNIQUE ("username");
ALTER TABLE "public"."account_account" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table account_account
-- ----------------------------
ALTER TABLE "public"."account_account" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_account_groups
-- ----------------------------
CREATE INDEX "account_account_groups_0e939a4f" ON "public"."account_account_groups" USING btree (group_id);
CREATE INDEX "account_account_groups_8a089c2a" ON "public"."account_account_groups" USING btree (account_id);

-- ----------------------------
-- Uniques structure for table account_account_groups
-- ----------------------------
ALTER TABLE "public"."account_account_groups" ADD UNIQUE ("account_id", "group_id");

-- ----------------------------
-- Primary Key structure for table account_account_groups
-- ----------------------------
ALTER TABLE "public"."account_account_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table account_account_user_permissions
-- ----------------------------
CREATE INDEX "account_account_user_permissions_8373b171" ON "public"."account_account_user_permissions" USING btree (permission_id);
CREATE INDEX "account_account_user_permissions_8a089c2a" ON "public"."account_account_user_permissions" USING btree (account_id);

-- ----------------------------
-- Uniques structure for table account_account_user_permissions
-- ----------------------------
ALTER TABLE "public"."account_account_user_permissions" ADD UNIQUE ("account_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table account_account_user_permissions
-- ----------------------------
ALTER TABLE "public"."account_account_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table app_register_info
-- ----------------------------
ALTER TABLE "public"."app_register_info" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (name "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_0e939a4f" ON "public"."auth_group_permissions" USING btree (group_id);
CREATE INDEX "auth_group_permissions_8373b171" ON "public"."auth_group_permissions" USING btree (permission_id);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_417f1b1c" ON "public"."auth_permission" USING btree (content_type_id);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table casb_ip_info
-- ----------------------------
ALTER TABLE "public"."casb_ip_info" ADD PRIMARY KEY ("ip");

-- ----------------------------
-- Primary Key structure for table casb_operation
-- ----------------------------
ALTER TABLE "public"."casb_operation" ADD PRIMARY KEY ("id", "opration_name");

-- ----------------------------
-- Indexes structure for table casb_user_event
-- ----------------------------
CREATE INDEX "userid" ON "public"."casb_user_event" USING hash (userid);
CREATE UNIQUE INDEX "uuid" ON "public"."casb_user_event" USING btree (uuid);

-- ----------------------------
-- Primary Key structure for table casb_user_event
-- ----------------------------
ALTER TABLE "public"."casb_user_event" ADD PRIMARY KEY ("uuid");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_417f1b1c" ON "public"."django_admin_log" USING btree (content_type_id);
CREATE INDEX "django_admin_log_e8701ad4" ON "public"."django_admin_log" USING btree (user_id);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_de54fa62" ON "public"."django_session" USING btree (expire_date);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (session_key "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Indexes structure for table v_favorite
-- ----------------------------
CREATE INDEX "v_favorite_c9799665" ON "public"."v_favorite" USING btree (module_id);
CREATE INDEX "v_favorite_e8701ad4" ON "public"."v_favorite" USING btree (user_id);

-- ----------------------------
-- Primary Key structure for table v_favorite
-- ----------------------------
ALTER TABLE "public"."v_favorite" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table v_module
-- ----------------------------
CREATE INDEX "v_module_name_3a2d0df7_like" ON "public"."v_module" USING btree (name "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table v_module
-- ----------------------------
ALTER TABLE "public"."v_module" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table v_module
-- ----------------------------
ALTER TABLE "public"."v_module" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table v_permission
-- ----------------------------
CREATE INDEX "v_permission_84566833" ON "public"."v_permission" USING btree (role_id);
CREATE INDEX "v_permission_c9799665" ON "public"."v_permission" USING btree (module_id);

-- ----------------------------
-- Primary Key structure for table v_permission
-- ----------------------------
ALTER TABLE "public"."v_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table v_role
-- ----------------------------
CREATE INDEX "v_role_name_fe4185de_like" ON "public"."v_role" USING btree (name "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table v_role
-- ----------------------------
ALTER TABLE "public"."v_role" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table v_role
-- ----------------------------
ALTER TABLE "public"."v_role" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table v_user
-- ----------------------------
CREATE INDEX "v_user_84566833" ON "public"."v_user" USING btree (role_id);
CREATE INDEX "v_user_name_4b74521e_like" ON "public"."v_user" USING btree (name "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table v_user
-- ----------------------------
ALTER TABLE "public"."v_user" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table v_user
-- ----------------------------
ALTER TABLE "public"."v_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."account_account"
-- ----------------------------
ALTER TABLE "public"."account_account" ADD FOREIGN KEY ("role_id") REFERENCES "public"."v_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."account_account_groups"
-- ----------------------------
ALTER TABLE "public"."account_account_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_account_groups" ADD FOREIGN KEY ("account_id") REFERENCES "public"."account_account" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."account_account_user_permissions"
-- ----------------------------
ALTER TABLE "public"."account_account_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."account_account_user_permissions" ADD FOREIGN KEY ("account_id") REFERENCES "public"."account_account" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."account_account" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."v_favorite"
-- ----------------------------
ALTER TABLE "public"."v_favorite" ADD FOREIGN KEY ("user_id") REFERENCES "public"."v_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."v_favorite" ADD FOREIGN KEY ("module_id") REFERENCES "public"."v_module" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."v_permission"
-- ----------------------------
ALTER TABLE "public"."v_permission" ADD FOREIGN KEY ("role_id") REFERENCES "public"."v_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."v_permission" ADD FOREIGN KEY ("module_id") REFERENCES "public"."v_module" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."v_user"
-- ----------------------------
ALTER TABLE "public"."v_user" ADD FOREIGN KEY ("role_id") REFERENCES "public"."v_role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

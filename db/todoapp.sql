-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 01:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_audit`
--

CREATE TABLE `adm_audit` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `auditModuleName` varchar(128) DEFAULT NULL,
  `auditDocumentName` varchar(128) DEFAULT NULL,
  `auditBizId` varchar(36) DEFAULT NULL,
  `auditBizKey` longtext,
  `operation` varchar(1) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `millis` bigint(20) DEFAULT NULL,
  `userName` varchar(254) DEFAULT NULL,
  `auditDetail` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_audit`
--

INSERT INTO `adm_audit` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `auditModuleName`, `auditDocumentName`, `auditBizId`, `auditBizKey`, `operation`, `timestamp`, `millis`, `userName`, `auditDetail`) VALUES
('004a9ec9-eece-41ca-897f-0d5d2ebe57eb', 0, '20190707065445127setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'bbf93d83-3bac-4357-9013-c1870acc0666', 'Debra Jenkins (person) (m) (01) 1155 6206', 'I', '2019-07-07 06:54:45', 1562457285126, 'setup', '{\"\":{\"bizId\":\"bbf93d83-3bac-4357-9013-c1870acc0666\",\"bizKey\":\"Debra Jenkins (person) (m) (01) 1155 6206\",\"contactType\":\"Person\",\"email1\":\"aliquet.lobortis.nisi@Cumsociisnatoque.org\",\"image\":null,\"mobile\":\"(01) 1155 6206\",\"name\":\"Debra Jenkins\"}}'),
('033343f6-38d0-42c5-abcd-e15be05d9e2b', 0, '20190707065445476setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '45f26a5c-c36e-4f9b-979e-ceafd043a7a1', 'Jasper Randolph (person) (m) (01) 3430 2211', 'I', '2019-07-07 06:54:45', 1562457285476, 'setup', '{\"\":{\"bizId\":\"45f26a5c-c36e-4f9b-979e-ceafd043a7a1\",\"bizKey\":\"Jasper Randolph (person) (m) (01) 3430 2211\",\"contactType\":\"Person\",\"email1\":\"imperdiet@risus.org\",\"image\":null,\"mobile\":\"(01) 3430 2211\",\"name\":\"Jasper Randolph\"}}'),
('05f674d1-83b6-4cf2-8f48-caca45956da2', 0, '20190707065445410setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '016c8868-60f6-4d99-ad20-b617f478bf62', 'Pamela Melton (person) (m) (09) 6024 6963', 'I', '2019-07-07 06:54:45', 1562457285410, 'setup', '{\"\":{\"bizId\":\"016c8868-60f6-4d99-ad20-b617f478bf62\",\"bizKey\":\"Pamela Melton (person) (m) (09) 6024 6963\",\"contactType\":\"Person\",\"email1\":\"purus.sapien@et.ca\",\"image\":null,\"mobile\":\"(09) 6024 6963\",\"name\":\"Pamela Melton\"}}'),
('0b421371-0a16-449f-a4a6-b9ce0c0d0b9d', 0, '20190707065445061setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '6891c0e1-226c-46d4-b689-e9ca7f9b2f53', 'Zia Lester (organisation) (m) (09) 1645 6813', 'I', '2019-07-07 06:54:45', 1562457285061, 'setup', '{\"\":{\"bizId\":\"6891c0e1-226c-46d4-b689-e9ca7f9b2f53\",\"bizKey\":\"Zia Lester (organisation) (m) (09) 1645 6813\",\"contactType\":\"Organisation\",\"email1\":\"pellentesque.Sed.dictum@rhoncus.co.uk\",\"image\":null,\"mobile\":\"(09) 1645 6813\",\"name\":\"Zia Lester\"}}'),
('103a3a0f-0966-4655-8b9d-9c19cf240bd2', 0, '20190710045942887setup', 'Update by setup at 10-Jul-2019 04:59:42', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Todo', '3af64ce9-79ad-4e85-85d5-6835665d2e2c', 'TSK-10001', 'U', '2019-07-10 04:59:42', 1562709582886, 'setup', '{\"\":{\"actualFinishDate\":\"2019-03-06T10:00:00.000+00:00\",\"actualStartDate\":\"2019-03-05T02:45:00.000+00:00\",\"bizId\":\"3af64ce9-79ad-4e85-85d5-6835665d2e2c\",\"bizKey\":\"TSK-10001\",\"priorityLevel\":\"med\",\"recordedDateTime\":\"2019-03-05T01:15:00.000+00:00\",\"startDate\":\"2019-03-05T01:30:00.000+00:00\",\"targetDate\":\"2019-03-06T10:00:00.000+00:00\",\"taskDescription\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula mi sed massa tempus, sed euismod neque porttitor. Proin sit amet pretium eros. Sed malesuada rhoncus iaculis. Etiam at arcu ex.\",\"taskID\":\"TSK-10001\",\"taskStatus\":\"defined\"},\"assignTo\":{\"bio\":\"Incurable zombie trailblazer. Future teen idol. Creator. Web maven. Writer. Unapologetic organizer.\",\"bizId\":\"b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9\",\"bizKey\":\"Camden Sanchez\",\"bu\":\"Tester\",\"dateOfBirth\":\"1991-06-15\",\"dept\":\"IT\",\"expiredDate\":\"2020-04-15\",\"idCardNo\":\"018937128\",\"issuedDate\":\"2008-04-15\",\"jobTitle\":\"Software Tester\",\"socialTitle\":\"ms\",\"startDate\":\"2018-05-05\"},\"assignTo.user\":{\"bizId\":\"5cba2014-6d89-43b5-a810-554a31c711b0\",\"bizKey\":\"camdensan - Camden Sanchez (person) (m) (04) 1170 9137\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:24:43.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"camdensan\",\"wizardState\":null},\"assignTo.user.contact\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":\"24518be0-b514-4ea4-a6eb-4556efdaa4d8\",\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"},\"project\":{\"bizId\":\"8d67bac7-1bdf-47d5-a431-69eb28c7c287\",\"bizKey\":\"PRJ001 - Custom Web Application for Montana\",\"endDate\":\"2019-08-01\",\"projectCode\":\"PRJ001\",\"projectDescription\":\"Create Custom Web Application for Montana.\\r\\nThe web application will include HRM and CRM modules\",\"projectName\":\"Custom Web Application for Montana\",\"startDate\":\"2019-03-01\"},\"project.projectCoordinator\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-06-01\"},\"project.projectCoordinator.user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"project.projectCoordinator.user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"project.projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"project.projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"project.projectManager\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-01-01\"},\"project.projectManager.user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"project.projectManager.user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"project.projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"project.projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"project.projectOwner\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":null,\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}'),
('14132583-10dd-4720-ba9f-5c11fadd4520', 0, '20190707072539881setup', 'Update by setup at 07-Jul-2019 07:25:39', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '5cba2014-6d89-43b5-a810-554a31c711b0', 'camdensan - Camden Sanchez (person) (m) (04) 1170 9137', 'U', '2019-07-07 07:25:39', 1562459139881, 'setup', '{\"\":{\"bizId\":\"5cba2014-6d89-43b5-a810-554a31c711b0\",\"bizKey\":\"camdensan - Camden Sanchez (person) (m) (04) 1170 9137\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:24:43.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Camden Sanchez\",\"searchEmail\":null,\"userName\":\"camdensan\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":\"24518be0-b514-4ea4-a6eb-4556efdaa4d8\",\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('141390c2-e35a-436e-b96d-274525435649', 0, '20190707065445516setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '77203fa5-2a38-4d31-aa87-a9c4b8a1baa6', 'Joseph Barron (person) (m) (01) 6976 7456', 'I', '2019-07-07 06:54:45', 1562457285516, 'setup', '{\"\":{\"bizId\":\"77203fa5-2a38-4d31-aa87-a9c4b8a1baa6\",\"bizKey\":\"Joseph Barron (person) (m) (01) 6976 7456\",\"contactType\":\"Person\",\"email1\":\"vestibulum@estacfacilisis.com\",\"image\":null,\"mobile\":\"(01) 6976 7456\",\"name\":\"Joseph Barron\"}}'),
('1445b442-9b4e-467e-b8db-afea8f420ab3', 0, '20190707072124164setup', 'Insert by setup at 07-Jul-2019 07:21:24', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '40178471-4654-4789-818a-e76b31e3de79', 'francesst - Frances Strickland (person) (m) (06) 5389 4625', 'I', '2019-07-07 07:21:24', 1562458884164, 'setup', '{\"\":{\"bizId\":\"40178471-4654-4789-818a-e76b31e3de79\",\"bizKey\":\"francesst - Frances Strickland (person) (m) (06) 5389 4625\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:20:06.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Frances Strickland\",\"searchEmail\":null,\"userName\":\"francesst\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"c547a986-0da4-4058-8b53-ff2daf554739\",\"bizKey\":\"Frances Strickland (person) (m) (06) 5389 4625\",\"contactType\":\"Person\",\"email1\":\"enim@at.co.uk\",\"image\":\"83ccd1a6-ac4f-4b6b-ae72-3da457e6bb1f\",\"mobile\":\"(06) 5389 4625\",\"name\":\"Frances Strickland\"},\"groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('175ff763-3e93-4f8a-a7ab-4285ffd0d6c0', 0, '20190707065444846setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '0badc510-a4c9-4e37-8e05-a67af43356c5', 'Stewart Mann (person) (m) (02) 5002 1351', 'I', '2019-07-07 06:54:44', 1562457284846, 'setup', '{\"\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":null,\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"}}'),
('1ede8115-7a1b-4cc8-b2fa-2d620face45a', 0, '20190707065445388setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '5d50a921-a241-4d81-98b7-c2e473f77393', 'Carl Golden (person) (m) (02) 6788 3176', 'I', '2019-07-07 06:54:45', 1562457285388, 'setup', '{\"\":{\"bizId\":\"5d50a921-a241-4d81-98b7-c2e473f77393\",\"bizKey\":\"Carl Golden (person) (m) (02) 6788 3176\",\"contactType\":\"Person\",\"email1\":\"orci.Phasellus@lectus.co.uk\",\"image\":null,\"mobile\":\"(02) 6788 3176\",\"name\":\"Carl Golden\"}}'),
('225a782a-f8a4-4050-8697-af7fd4e5091e', 0, '20190706184250265setup', 'Update by setup at 06-Jul-2019 18:42:50', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'db32a46d-2328-4646-8245-961cc03151fd', 'setup - setup (person)', 'U', '2019-07-06 18:42:50', 1562413370265, 'setup', '{\"\":{\"bizId\":\"db32a46d-2328-4646-8245-961cc03151fd\",\"bizKey\":\"setup - setup (person)\",\"contactSelected\":false,\"createdDateTime\":\"2019-06-09T23:02:53.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":\"2019-07-03T22:08:55.000+00:00\",\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"setup\",\"wizardState\":null},\"contact\":{\"bizId\":\"b26d3a08-797a-4085-b9b8-e7fd41914f08\",\"bizKey\":\"setup (person)\",\"contactType\":\"Person\",\"email1\":\"rucvan.pr@gmail.com\",\"image\":null,\"mobile\":null,\"name\":\"setup\"},\"roles[0]\":{\"bizId\":\"0a3e3414-aef1-4389-af75-70b199febb06\",\"bizKey\":\"Admin - Anonymous (Access anonymous (not logged in) public features)\",\"roleName\":\"admin.Anonymous\"},\"roles[10]\":{\"bizId\":\"bd4ba674-80f6-4e82-90ee-9472ade57d2b\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"roles[11]\":{\"bizId\":\"d73efb9f-8241-403a-8f3f-05c3fa45e2bd\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"roles[12]\":{\"bizId\":\"aa26ee75-f558-44b0-a882-ea4579bf3c3b\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"},\"roles[1]\":{\"bizId\":\"fa24b2ad-ba06-40ad-a8d5-865e7c6f31bf\",\"bizKey\":\"Admin - AppUser (Manage own contact details and password)\",\"roleName\":\"admin.AppUser\"},\"roles[2]\":{\"bizId\":\"084f7aed-2b66-46e0-bce7-77153ea35bb2\",\"bizKey\":\"Admin - AuditManager (Manage the activity audit log)\",\"roleName\":\"admin.AuditManager\"},\"roles[3]\":{\"bizId\":\"3e3ee25a-a97f-4d20-9eaf-16dd9c04514f\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[4]\":{\"bizId\":\"657632fe-7a49-40c9-888e-30f292c51a34\",\"bizKey\":\"Admin - ContactManager (Manage contact details and interactions)\",\"roleName\":\"admin.ContactManager\"},\"roles[5]\":{\"bizId\":\"7a592dbd-b3df-45ff-90ad-64f83c79f283\",\"bizKey\":\"Admin - ContactViewer (View-only access to contact details)\",\"roleName\":\"admin.ContactViewer\"},\"roles[6]\":{\"bizId\":\"aee7955b-1634-43e8-8e76-c86bbcea85ee\",\"bizKey\":\"Admin - DevOps (Generate Skyve designs and metadata and adminis...)\",\"roleName\":\"admin.DevOps\"},\"roles[7]\":{\"bizId\":\"0496e551-f692-4922-ae00-4ea597d5506a\",\"bizKey\":\"Admin - JobMaintainer (Maintain Jobs)\",\"roleName\":\"admin.JobMaintainer\"},\"roles[8]\":{\"bizId\":\"b7789185-67e2-495d-8f89-73ae56172444\",\"bizKey\":\"Admin - SecurityAdministrator (Allows administration of Users and Groups)\",\"roleName\":\"admin.SecurityAdministrator\"},\"roles[9]\":{\"bizId\":\"fcde1be6-ecb6-4db8-8e88-fe0d4a923364\",\"bizKey\":\"Admin - ViewUser (View-only access to the administration module)\",\"roleName\":\"admin.ViewUser\"}}'),
('2402435f-fea2-4fce-823e-619698fbfacd', 0, '20190704053537722setup', 'Insert by setup at 04-Jul-2019 05:35:37', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'DocumentNumber', '05d65d74-9f8c-44fd-9a03-1cdc577f9ef3', 'todo.Staff.STAFF001', 'I', '2019-07-04 05:35:37', 1562193337722, 'setup', '{\"\":{\"bizId\":\"05d65d74-9f8c-44fd-9a03-1cdc577f9ef3\",\"bizKey\":\"todo.Staff.STAFF001\",\"documentName\":\"Staff\",\"documentNumber\":\"1\",\"moduleName\":\"todo\",\"sequenceName\":\"STAFF001\"}}'),
('25c93ca8-3a8b-454b-97b3-58fde7ad1338', 0, '20190708053107163francesst', 'Insert by francesst at 08-Jul-2019 05:31:07', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', '2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5', 'Barclay Waters', 'I', '2019-07-08 05:31:07', 1562538667163, 'francesst', '{\"\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-06-01\"},\"user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('287a4c1f-87d3-4161-84fc-1929f53b3f9b', 0, '20190707065445443setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '5f3fdbda-6087-4764-8841-f372565cfa8d', 'Mariam Crane (person) (m) (02) 3244 4527', 'I', '2019-07-07 06:54:45', 1562457285443, 'setup', '{\"\":{\"bizId\":\"5f3fdbda-6087-4764-8841-f372565cfa8d\",\"bizKey\":\"Mariam Crane (person) (m) (02) 3244 4527\",\"contactType\":\"Person\",\"email1\":\"magna@temporaugue.org\",\"image\":null,\"mobile\":\"(02) 3244 4527\",\"name\":\"Mariam Crane\"}}'),
('299b7204-ac71-4eab-9c83-2743e9ef3cb3', 0, '20190708054140802francesst', 'Insert by francesst at 08-Jul-2019 05:41:40', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'efb2915c-2ce2-46a7-9b11-7f2245cdff98', 'Davis Carr', 'I', '2019-07-08 05:41:40', 1562539300802, 'francesst', '{\"\":{\"bio\":\"Pop culture enthusiast. Unable to type with boxing gloves on. Analyst. Student. Explorer.\",\"bizId\":\"efb2915c-2ce2-46a7-9b11-7f2245cdff98\",\"bizKey\":\"Davis Carr\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1989-01-22\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-25\",\"idCardNo\":\"1203921378\",\"issuedDate\":\"2008-05-25\",\"jobTitle\":\"Project Manager\",\"socialTitle\":\"mr\",\"startDate\":\"2008-12-01\"},\"user\":{\"bizId\":\"8e16b7e5-8e5f-40d7-9034-baf0d540fc00\",\"bizKey\":\"daviscarr - Davis Carr (person) (m) (06) 5871 3564\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:11:46.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"daviscarr\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":\"a0533de5-b907-4477-9610-af5d117c20d6\",\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"},\"user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('29bd7d6a-0e71-4197-ab13-d75b87e1400e', 0, '20190709045936494setup', 'Update by setup at 09-Jul-2019 04:59:36', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Project', '3ea7796e-1809-4e74-b82f-03ab56d7fe18', 'PRJ002 - SCM System for Robert Valentine', 'U', '2019-07-09 04:59:36', 1562623176493, 'setup', '{\"\":{\"bizId\":\"3ea7796e-1809-4e74-b82f-03ab56d7fe18\",\"bizKey\":\"PRJ002 - SCM System for Robert Valentine\",\"endDate\":\"2019-09-30\",\"projectCode\":\"PRJ002\",\"projectDescription\":\"Robert Valentine is a supply chain company. They are mainly provide electric device.\\r\\nThey need a SCM system to help them to easier manage their sales and purchase activities as well as manage Customers and Vendors dictionary.\",\"projectName\":\"SCM System for Robert Valentine\",\"startDate\":\"2019-05-01\"},\"projectCoordinator\":{\"bio\":\"Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst\",\"bizId\":\"df4b7098-f192-40fa-ac9c-0249221cc5c9\",\"bizKey\":\"Stewart Mann\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1994-01-01\",\"dept\":\"IT\",\"expiredDate\":\"2026-09-08\",\"idCardNo\":\"01290389712\",\"issuedDate\":\"2011-09-08\",\"jobTitle\":\"Junior Engineer\",\"socialTitle\":\"mr\",\"startDate\":\"2017-06-02\"},\"projectCoordinator.user\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":null},\"projectCoordinator.user.contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"projectManager\":{\"bio\":\"Pop culture enthusiast. Unable to type with boxing gloves on. Analyst. Student. Explorer.\",\"bizId\":\"efb2915c-2ce2-46a7-9b11-7f2245cdff98\",\"bizKey\":\"Davis Carr\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1989-01-22\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-25\",\"idCardNo\":\"1203921378\",\"issuedDate\":\"2008-05-25\",\"jobTitle\":\"Project Manager\",\"socialTitle\":\"mr\",\"startDate\":\"2008-12-01\"},\"projectManager.user\":{\"bizId\":\"8e16b7e5-8e5f-40d7-9034-baf0d540fc00\",\"bizKey\":\"daviscarr - Davis Carr (person) (m) (06) 5871 3564\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:11:46.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"daviscarr\",\"wizardState\":null},\"projectManager.user.contact\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":\"a0533de5-b907-4477-9610-af5d117c20d6\",\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"},\"projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"projectOwner\":{\"bizId\":\"719f1953-ec1d-40f5-a4a2-27ff15514abe\",\"bizKey\":\"Robert Valentine (organisation) (m) (05) 4325 8797\",\"contactType\":\"Organisation\",\"email1\":\"in.tempus@montes.net\",\"image\":null,\"mobile\":\"(05) 4325 8797\",\"name\":\"Robert Valentine\"}}'),
('3468f3c9-6ae8-4859-ba1a-8284106e58c0', 0, '20190707065444861setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '4314d577-2e43-4fe4-aa07-8541d31c094e', 'Camden Sanchez (person) (m) (04) 1170 9137', 'I', '2019-07-07 06:54:44', 1562457284861, 'setup', '{\"\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":null,\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"}}'),
('390ce16f-e684-4a6e-a794-980fa17526d8', 0, '20190707065445502setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '4f6cf25f-c025-4455-862c-ba33cad5fc7b', 'Flavia Gentry (person) (m) (03) 8627 1502', 'I', '2019-07-07 06:54:45', 1562457285502, 'setup', '{\"\":{\"bizId\":\"4f6cf25f-c025-4455-862c-ba33cad5fc7b\",\"bizKey\":\"Flavia Gentry (person) (m) (03) 8627 1502\",\"contactType\":\"Person\",\"email1\":\"libero.est.congue@gravidaAliquam.edu\",\"image\":null,\"mobile\":\"(03) 8627 1502\",\"name\":\"Flavia Gentry\"}}'),
('3a3b7dca-0dab-46c2-92a7-b9679a4dc818', 0, '20190707071938584setup', 'Insert by setup at 07-Jul-2019 07:19:38', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '8e16b7e5-8e5f-40d7-9034-baf0d540fc00', 'daviscarr - Davis Carr (person) (m) (06) 5871 3564', 'I', '2019-07-07 07:19:38', 1562458778584, 'setup', '{\"\":{\"bizId\":\"8e16b7e5-8e5f-40d7-9034-baf0d540fc00\",\"bizKey\":\"daviscarr - Davis Carr (person) (m) (06) 5871 3564\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:11:46.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"davis\",\"searchEmail\":null,\"userName\":\"daviscarr\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":\"a0533de5-b907-4477-9610-af5d117c20d6\",\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"},\"groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('3b14bc44-c480-496c-b844-b0e02584ba64', 0, '20190707072907579setup', 'Insert by setup at 07-Jul-2019 07:29:07', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'bd03831c-9e44-40a6-bdde-fd5da2286042', 'adriablev - Adria Blevins (person) (m) (06) 7653 7772', 'I', '2019-07-07 07:29:07', 1562459347579, 'setup', '{\"\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Adria Blevins\",\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('3ba81f85-b382-480a-a57f-6fc78cc4dec0', 0, '20190707065445096setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '0c604b95-8ddc-43ab-bdd3-7420cd90e597', 'Cassady Joyner (person) (m) (01) 5812 1804', 'I', '2019-07-07 06:54:45', 1562457285096, 'setup', '{\"\":{\"bizId\":\"0c604b95-8ddc-43ab-bdd3-7420cd90e597\",\"bizKey\":\"Cassady Joyner (person) (m) (01) 5812 1804\",\"contactType\":\"Person\",\"email1\":\"neque@molestie.net\",\"image\":null,\"mobile\":\"(01) 5812 1804\",\"name\":\"Cassady Joyner\"}}'),
('4aea322b-76f4-4b70-b317-ccbcaed5a41b', 0, '20190707065445254setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '6039ef7c-87d8-4ad9-9ebd-cb2664f5f6ef', 'Samantha Mercer (organisation) (m) (05) 1296 9963', 'I', '2019-07-07 06:54:45', 1562457285254, 'setup', '{\"\":{\"bizId\":\"6039ef7c-87d8-4ad9-9ebd-cb2664f5f6ef\",\"bizKey\":\"Samantha Mercer (organisation) (m) (05) 1296 9963\",\"contactType\":\"Organisation\",\"email1\":\"iaculis@eratvolutpat.co.uk\",\"image\":null,\"mobile\":\"(05) 1296 9963\",\"name\":\"Samantha Mercer\"}}'),
('4e4a5038-6646-45ca-89d0-81304e3e7a72', 0, '20190610060302601setup', 'Insert by setup at 10-Jun-2019 06:03:02', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'db32a46d-2328-4646-8245-961cc03151fd', 'setup - setup (person)', 'I', '2019-06-10 06:03:02', 1560121382598, 'setup', '{\"\":{\"bizId\":\"db32a46d-2328-4646-8245-961cc03151fd\",\"bizKey\":\"setup - setup (person)\",\"contactSelected\":false,\"createdDateTime\":\"2019-06-09T23:02:53.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"setup\",\"wizardState\":\"confirmContact\"},\"contact\":{\"bizId\":\"b26d3a08-797a-4085-b9b8-e7fd41914f08\",\"bizKey\":\"setup (person)\",\"contactType\":\"Person\",\"email1\":\"rucvan.pr@gmail.com\",\"image\":null,\"mobile\":null,\"name\":\"setup\"},\"roles[0]\":{\"bizId\":\"0a3e3414-aef1-4389-af75-70b199febb06\",\"bizKey\":\"Admin - Anonymous (Access anonymous (not logged in) public features)\",\"roleName\":\"admin.Anonymous\"},\"roles[1]\":{\"bizId\":\"fa24b2ad-ba06-40ad-a8d5-865e7c6f31bf\",\"bizKey\":\"Admin - AppUser (Manage own contact details and password)\",\"roleName\":\"admin.AppUser\"},\"roles[2]\":{\"bizId\":\"084f7aed-2b66-46e0-bce7-77153ea35bb2\",\"bizKey\":\"Admin - AuditManager (Manage the activity audit log)\",\"roleName\":\"admin.AuditManager\"},\"roles[3]\":{\"bizId\":\"3e3ee25a-a97f-4d20-9eaf-16dd9c04514f\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[4]\":{\"bizId\":\"657632fe-7a49-40c9-888e-30f292c51a34\",\"bizKey\":\"Admin - ContactManager (Manage contact details and interactions)\",\"roleName\":\"admin.ContactManager\"},\"roles[5]\":{\"bizId\":\"7a592dbd-b3df-45ff-90ad-64f83c79f283\",\"bizKey\":\"Admin - ContactViewer (View-only access to contact details)\",\"roleName\":\"admin.ContactViewer\"},\"roles[6]\":{\"bizId\":\"aee7955b-1634-43e8-8e76-c86bbcea85ee\",\"bizKey\":\"Admin - DevOps (Generate Skyve designs and metadata and adminis...)\",\"roleName\":\"admin.DevOps\"},\"roles[7]\":{\"bizId\":\"0496e551-f692-4922-ae00-4ea597d5506a\",\"bizKey\":\"Admin - JobMaintainer (Maintain Jobs)\",\"roleName\":\"admin.JobMaintainer\"},\"roles[8]\":{\"bizId\":\"b7789185-67e2-495d-8f89-73ae56172444\",\"bizKey\":\"Admin - SecurityAdministrator (Allows administration of Users and Groups)\",\"roleName\":\"admin.SecurityAdministrator\"},\"roles[9]\":{\"bizId\":\"fcde1be6-ecb6-4db8-8e88-fe0d4a923364\",\"bizKey\":\"Admin - ViewUser (View-only access to the administration module)\",\"roleName\":\"admin.ViewUser\"}}'),
('5076d903-b7d7-4137-b97c-48a67224ebb6', 0, '20190709045934559setup', 'Insert by setup at 09-Jul-2019 04:59:34', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Project', '3ea7796e-1809-4e74-b82f-03ab56d7fe18', 'PRJ002 - SCM System for Robert Valentine', 'I', '2019-07-09 04:59:34', 1562623174559, 'setup', '{\"\":{\"bizId\":\"3ea7796e-1809-4e74-b82f-03ab56d7fe18\",\"bizKey\":\"PRJ002 - SCM System for Robert Valentine\",\"endDate\":\"2019-09-30\",\"projectCode\":\"PRJ002\",\"projectDescription\":\"Robert Valentine is a supply chain company. They are mainly provide electric device.\\r\\nThey need a SCM system to help them to easier manage their sales and purchase activities as well as manage Customers and Vendors dictionary.\",\"projectName\":\"SCM System for Robert Valentine\",\"startDate\":\"2019-05-01\"},\"projectCoordinator\":{\"bio\":\"Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst\",\"bizId\":\"df4b7098-f192-40fa-ac9c-0249221cc5c9\",\"bizKey\":\"Stewart Mann\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1994-01-01\",\"dept\":\"IT\",\"expiredDate\":\"2026-09-08\",\"idCardNo\":\"01290389712\",\"issuedDate\":\"2011-09-08\",\"jobTitle\":\"Junior Engineer\",\"socialTitle\":\"mr\",\"startDate\":\"2017-06-02\"},\"projectCoordinator.user\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":null},\"projectCoordinator.user.contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"projectManager\":{\"bio\":\"Pop culture enthusiast. Unable to type with boxing gloves on. Analyst. Student. Explorer.\",\"bizId\":\"efb2915c-2ce2-46a7-9b11-7f2245cdff98\",\"bizKey\":\"Davis Carr\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1989-01-22\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-25\",\"idCardNo\":\"1203921378\",\"issuedDate\":\"2008-05-25\",\"jobTitle\":\"Project Manager\",\"socialTitle\":\"mr\",\"startDate\":\"2008-12-01\"},\"projectManager.user\":{\"bizId\":\"8e16b7e5-8e5f-40d7-9034-baf0d540fc00\",\"bizKey\":\"daviscarr - Davis Carr (person) (m) (06) 5871 3564\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:11:46.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"daviscarr\",\"wizardState\":null},\"projectManager.user.contact\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":\"a0533de5-b907-4477-9610-af5d117c20d6\",\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"},\"projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"projectOwner\":{\"bizId\":\"719f1953-ec1d-40f5-a4a2-27ff15514abe\",\"bizKey\":\"Robert Valentine (organisation) (m) (05) 4325 8797\",\"contactType\":\"Organisation\",\"email1\":\"in.tempus@montes.net\",\"image\":null,\"mobile\":\"(05) 4325 8797\",\"name\":\"Robert Valentine\"}}'),
('508a23b8-844b-438a-b5ea-6bb7afeccffb', 0, '20190710045901535setup', 'Insert by setup at 10-Jul-2019 04:59:01', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Todo', '3af64ce9-79ad-4e85-85d5-6835665d2e2c', 'TSK-10001', 'I', '2019-07-10 04:59:01', 1562709541535, 'setup', '{\"\":{\"actualFinishDate\":\"2019-03-06T10:00:00.000+00:00\",\"actualStartDate\":\"2019-03-05T02:45:00.000+00:00\",\"bizId\":\"3af64ce9-79ad-4e85-85d5-6835665d2e2c\",\"bizKey\":\"TSK-10001\",\"priorityLevel\":\"med\",\"recordedDateTime\":\"2019-03-05T01:15:00.000+00:00\",\"startDate\":\"2019-03-05T01:30:00.000+00:00\",\"targetDate\":\"2019-03-06T10:00:00.000+00:00\",\"taskDescription\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula mi sed massa tempus, sed euismod neque porttitor. Proin sit amet pretium eros. Sed malesuada rhoncus iaculis. Etiam at arcu ex. Duis varius eros eget risus iaculis tincidunt. Maecenas in tempus turpis. Duis pretium lectus eros, non ullamcorper ex sagittis vel. Aliquam vulputate tortor et lorem sollicitudin, mattis aliquam enim rutrum. Fusce vestibulum lacus ut magna malesuada, ac sagittis mi euismod. Curabitur dolor lorem, vulputate in dapibus tincidunt, mattis vel augue. Nulla ex mi, accumsan eget efficitur quis, molestie ac quam. Cras felis odio, aliquet blandit ipsum ac, volutpat viverra mi.\",\"taskID\":\"TSK-10001\",\"taskStatus\":\"defined\"},\"assignTo\":{\"bio\":\"Incurable zombie trailblazer. Future teen idol. Creator. Web maven. Writer. Unapologetic organizer.\",\"bizId\":\"b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9\",\"bizKey\":\"Camden Sanchez\",\"bu\":\"Tester\",\"dateOfBirth\":\"1991-06-15\",\"dept\":\"IT\",\"expiredDate\":\"2020-04-15\",\"idCardNo\":\"018937128\",\"issuedDate\":\"2008-04-15\",\"jobTitle\":\"Software Tester\",\"socialTitle\":\"ms\",\"startDate\":\"2018-05-05\"},\"assignTo.user\":{\"bizId\":\"5cba2014-6d89-43b5-a810-554a31c711b0\",\"bizKey\":\"camdensan - Camden Sanchez (person) (m) (04) 1170 9137\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:24:43.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"camdensan\",\"wizardState\":null},\"assignTo.user.contact\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":\"24518be0-b514-4ea4-a6eb-4556efdaa4d8\",\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"},\"project\":{\"bizId\":\"8d67bac7-1bdf-47d5-a431-69eb28c7c287\",\"bizKey\":\"PRJ001 - Custom Web Application for Montana\",\"endDate\":\"2019-08-01\",\"projectCode\":\"PRJ001\",\"projectDescription\":\"Create Custom Web Application for Montana.\\r\\nThe web application will include HRM and CRM modules\",\"projectName\":\"Custom Web Application for Montana\",\"startDate\":\"2019-03-01\"},\"project.projectCoordinator\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-06-01\"},\"project.projectCoordinator.user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"project.projectCoordinator.user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"project.projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"project.projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"project.projectManager\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-01-01\"},\"project.projectManager.user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"project.projectManager.user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"project.projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"project.projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"project.projectOwner\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":null,\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}');
INSERT INTO `adm_audit` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `auditModuleName`, `auditDocumentName`, `auditBizId`, `auditBizKey`, `operation`, `timestamp`, `millis`, `userName`, `auditDetail`) VALUES
('532d5704-9cf8-49e3-bf08-956f310c34ba', 0, '20190707073107115setup', 'Update by setup at 07-Jul-2019 07:31:07', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd', 'waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151', 'U', '2019-07-07 07:31:07', 1562459467115, 'setup', '{\"\":{\"bizId\":\"c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd\",\"bizKey\":\"waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:30:16.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Wayne Mcguire\",\"searchEmail\":null,\"userName\":\"waynemcgu\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"86dfe1a5-faa8-4212-af17-09281fd584df\",\"bizKey\":\"Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactType\":\"Person\",\"email1\":\"nascetur.ridiculus.mus@mauris.org\",\"image\":\"d99f2029-1b73-44bc-90d0-7b84168ed7c5\",\"mobile\":\"(05) 3219 6151\",\"name\":\"Wayne Mcguire\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('542c6f51-e626-4625-9f82-9fe49010afa5', 0, '20190707065445287setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '98977d89-2d2c-4b92-9b47-7f9ddf2d025d', 'Zephania Burton (person) (m) (04) 4212 5033', 'I', '2019-07-07 06:54:45', 1562457285286, 'setup', '{\"\":{\"bizId\":\"98977d89-2d2c-4b92-9b47-7f9ddf2d025d\",\"bizKey\":\"Zephania Burton (person) (m) (04) 4212 5033\",\"contactType\":\"Person\",\"email1\":\"nunc.nulla.vulputate@utquamvel.ca\",\"image\":null,\"mobile\":\"(04) 4212 5033\",\"name\":\"Zephania Burton\"}}'),
('5ce599fb-15ff-4267-98a3-f525dfa8e55d', 0, '20190805215552992setup', 'Update by setup at 05-Aug-2019 21:55:52', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Staff', '2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5', 'Barclay Waters', 'U', '2019-08-05 21:55:52', 1565016952992, 'setup', '{\"\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"staffLocation\":\"POLYGON ((105.72115166168533 21.008927639627494, 105.72355492096267 21.001555952286576, 105.73660118561111 21.001235435880734, 105.73763115387283 21.00860713905515, 105.72115166168533 21.008927639627494))\",\"startDate\":\"2018-06-01\"},\"user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('6821c20a-f584-479a-befb-b38b4bd8ce91', 0, '20190802051354141setup', 'Update by setup at 02-Aug-2019 05:13:54', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Staff', 'cf1eb33a-1856-40d5-9f32-8b69e3eea261', 'Adria Blevins a', 'U', '2019-08-02 05:13:54', 1564697634141, 'setup', '{\"\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins a\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-01-01\"},\"user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins a (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins a (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins a\"},\"user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('6a0c169a-3492-4bc2-92bd-b9c2cf8954a7', 0, '20190707065444925setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '931afefe-ab16-4ed6-9ad4-72856f2150dc', 'Adria Blevins (person) (m) (06) 7653 7772', 'I', '2019-07-07 06:54:44', 1562457284925, 'setup', '{\"\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":null,\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"}}'),
('6a46fbf9-d7b7-435b-a555-e641d38e6915', 0, '20190707065445422setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '719f1953-ec1d-40f5-a4a2-27ff15514abe', 'Robert Valentine (organisation) (m) (05) 4325 8797', 'I', '2019-07-07 06:54:45', 1562457285422, 'setup', '{\"\":{\"bizId\":\"719f1953-ec1d-40f5-a4a2-27ff15514abe\",\"bizKey\":\"Robert Valentine (organisation) (m) (05) 4325 8797\",\"contactType\":\"Organisation\",\"email1\":\"in.tempus@montes.net\",\"image\":null,\"mobile\":\"(05) 4325 8797\",\"name\":\"Robert Valentine\"}}'),
('6e0c584c-bd84-412b-a287-252ff12df0fe', 0, '20190807214508301setup', 'Update by setup at 07-Aug-2019 21:45:08', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'codylogan - Cody Logan (person) (m) (09) 3475 1500', 'U', '2019-08-07 21:45:08', 1565189108301, 'setup', '{\"\":{\"bizId\":\"b340f8c3-84d1-4593-86f1-e7ef483cadb8\",\"bizKey\":\"codylogan - Cody Logan (person) (m) (09) 3475 1500\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:29:13.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"codylogan\",\"wizardState\":null},\"contact\":{\"bizId\":\"47217da5-fee8-4564-96bb-c98ee9e317d1\",\"bizKey\":\"Cody Logan (person) (m) (09) 3475 1500\",\"contactType\":\"Person\",\"email1\":\"erat.semper@auctorvelit.ca\",\"image\":\"3cd123b0-27ef-4155-a40f-b51c3edab623\",\"mobile\":\"(09) 3475 1500\",\"name\":\"Cody Logan\"},\"groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('7059d64a-11d7-4073-a51c-c820cf584068', 0, '20190707065444974setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '86dfe1a5-faa8-4212-af17-09281fd584df', 'Wayne Mcguire (person) (m) (05) 3219 6151', 'I', '2019-07-07 06:54:44', 1562457284974, 'setup', '{\"\":{\"bizId\":\"86dfe1a5-faa8-4212-af17-09281fd584df\",\"bizKey\":\"Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactType\":\"Person\",\"email1\":\"nascetur.ridiculus.mus@mauris.org\",\"image\":null,\"mobile\":\"(05) 3219 6151\",\"name\":\"Wayne Mcguire\"}}'),
('74bddb4e-9b58-4f5d-9eda-223c940365cd', 0, '20190707065445492setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '7fb0e417-771e-4892-ad8f-eb45dc05cc7b', 'Montana Sykes (organisation) (m) (06) 6284 2581', 'I', '2019-07-07 06:54:45', 1562457285492, 'setup', '{\"\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":null,\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}'),
('766b8ec0-3de5-4ec9-b132-98d6706a515d', 0, '20190707073223417setup', 'Insert by setup at 07-Jul-2019 07:32:23', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'fe6057e9-da55-4934-9c67-1d044698f0cf', 'barclaywa - Barclay Waters (person) (m) (01) 4430 7719', 'I', '2019-07-07 07:32:23', 1562459543417, 'setup', '{\"\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Barclay Waters\",\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('76d71b7c-0840-45a1-a4ca-997853173ed7', 0, '20190708053919170francesst', 'Insert by francesst at 08-Jul-2019 05:39:19', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', '754ff0e7-967f-45cc-b1ea-57706a51acf4', 'Cody Logan', 'I', '2019-07-08 05:39:19', 1562539159169, 'francesst', '{\"\":{\"bio\":\"Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst.\",\"bizId\":\"754ff0e7-967f-45cc-b1ea-57706a51acf4\",\"bizKey\":\"Cody Logan\",\"bu\":\"HRM\",\"dateOfBirth\":\"1986-03-05\",\"dept\":\"HRM\",\"expiredDate\":\"2021-09-08\",\"idCardNo\":\"1019231782\",\"issuedDate\":\"2001-09-08\",\"jobTitle\":\"Staff Manager\",\"socialTitle\":\"mr\",\"startDate\":\"2016-01-02\"},\"user\":{\"bizId\":\"b340f8c3-84d1-4593-86f1-e7ef483cadb8\",\"bizKey\":\"codylogan - Cody Logan (person) (m) (09) 3475 1500\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:29:13.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"codylogan\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"47217da5-fee8-4564-96bb-c98ee9e317d1\",\"bizKey\":\"Cody Logan (person) (m) (09) 3475 1500\",\"contactType\":\"Person\",\"email1\":\"erat.semper@auctorvelit.ca\",\"image\":\"3cd123b0-27ef-4155-a40f-b51c3edab623\",\"mobile\":\"(09) 3475 1500\",\"name\":\"Cody Logan\"},\"user.groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"user.groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('7c650ce9-a49c-4a3f-a8b7-bc6d0d1a5fa6', 0, '20190707072801958setup', 'Insert by setup at 07-Jul-2019 07:28:01', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'd1dd3528-a9d1-4886-809f-d42c857f9825', 'chastityc - Chastity Cunningham (person) (m) (06) 5031 9633', 'I', '2019-07-07 07:28:01', 1562459281958, 'setup', '{\"\":{\"bizId\":\"d1dd3528-a9d1-4886-809f-d42c857f9825\",\"bizKey\":\"chastityc - Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:27:14.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Chastity Cunningham\",\"searchEmail\":null,\"userName\":\"chastityc\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"c16c17b3-df7c-4f70-9939-7896c526636f\",\"bizKey\":\"Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactType\":\"Person\",\"email1\":\"faucibus@purus.net\",\"image\":\"c86e1828-ac40-4d82-87f8-6b4a4586cbdc\",\"mobile\":\"(06) 5031 9633\",\"name\":\"Chastity Cunningham\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('8054a729-927a-4b6e-a4c6-a8765ca6be58', 0, '20190707065444831setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'c547a986-0da4-4058-8b53-ff2daf554739', 'Frances Strickland (person) (m) (06) 5389 4625', 'I', '2019-07-07 06:54:44', 1562457284831, 'setup', '{\"\":{\"bizId\":\"c547a986-0da4-4058-8b53-ff2daf554739\",\"bizKey\":\"Frances Strickland (person) (m) (06) 5389 4625\",\"contactType\":\"Person\",\"email1\":\"enim@at.co.uk\",\"image\":null,\"mobile\":\"(06) 5389 4625\",\"name\":\"Frances Strickland\"}}'),
('816f815a-0b4d-4594-927d-d3106b9cafea', 0, '20190708054940907francesst', 'Insert by francesst at 08-Jul-2019 05:49:40', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'f10ce0a9-9c82-4820-825a-64de61bd6fdb', 'Wayne Mcguire', 'I', '2019-07-08 05:49:40', 1562539780907, 'francesst', '{\"\":{\"bio\":\"Analyst. Communicator. Problem solver. Subtly charming reader. Student. Unapologetic food fanatic. Proud explorer\",\"bizId\":\"f10ce0a9-9c82-4820-825a-64de61bd6fdb\",\"bizKey\":\"Wayne Mcguire\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1994-07-16\",\"dept\":\"IT\",\"expiredDate\":\"2027-02-12\",\"idCardNo\":\"01209387123\",\"issuedDate\":\"2012-02-12\",\"jobTitle\":\"Business Analysis\",\"socialTitle\":\"ms\",\"startDate\":\"2016-07-27\"},\"user\":{\"bizId\":\"c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd\",\"bizKey\":\"waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:30:16.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"waynemcgu\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"86dfe1a5-faa8-4212-af17-09281fd584df\",\"bizKey\":\"Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactType\":\"Person\",\"email1\":\"nascetur.ridiculus.mus@mauris.org\",\"image\":\"d99f2029-1b73-44bc-90d0-7b84168ed7c5\",\"mobile\":\"(05) 3219 6151\",\"name\":\"Wayne Mcguire\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('81c463f4-49ee-4fad-909f-24883bf7f78d', 0, '20190707070728630setup', 'Insert by setup at 07-Jul-2019 07:07:28', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Group', 'c9015806-7943-4319-9791-d6c2bae6ebe5', 'Staff Manager', 'I', '2019-07-07 07:07:28', 1562458048629, 'setup', '{\"\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('824ac133-1f5e-4463-9b7b-14aca55568ee', 0, '20190708053644614francesst', 'Insert by francesst at 08-Jul-2019 05:36:44', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'e71ec74d-6fbf-4507-8d0e-12b203fc4edc', 'Chastity Cunningham', 'I', '2019-07-08 05:36:44', 1562539004614, 'francesst', '{\"\":{\"bio\":\"Analyst. Communicator. Problem solver. Subtly charming reader. Student. Unapologetic food fanatic. Proud explorer.\",\"bizId\":\"e71ec74d-6fbf-4507-8d0e-12b203fc4edc\",\"bizKey\":\"Chastity Cunningham\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1990-02-02\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-15\",\"idCardNo\":\"01293128321\",\"issuedDate\":\"2008-05-15\",\"jobTitle\":\"Business Analysis\",\"socialTitle\":\"ms\",\"startDate\":\"2017-07-05\"},\"user\":{\"bizId\":\"d1dd3528-a9d1-4886-809f-d42c857f9825\",\"bizKey\":\"chastityc - Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:27:14.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"chastityc\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"c16c17b3-df7c-4f70-9939-7896c526636f\",\"bizKey\":\"Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactType\":\"Person\",\"email1\":\"faucibus@purus.net\",\"image\":\"c86e1828-ac40-4d82-87f8-6b4a4586cbdc\",\"mobile\":\"(06) 5031 9633\",\"name\":\"Chastity Cunningham\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('84b951c7-6138-4e17-ba08-7f4e69cbff7d', 0, '20190707073104836setup', 'Insert by setup at 07-Jul-2019 07:31:04', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd', 'waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151', 'I', '2019-07-07 07:31:04', 1562459464836, 'setup', '{\"\":{\"bizId\":\"c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd\",\"bizKey\":\"waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:30:16.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Wayne Mcguire\",\"searchEmail\":null,\"userName\":\"waynemcgu\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"86dfe1a5-faa8-4212-af17-09281fd584df\",\"bizKey\":\"Wayne Mcguire (person) (m) (05) 3219 6151\",\"contactType\":\"Person\",\"email1\":\"nascetur.ridiculus.mus@mauris.org\",\"image\":\"d99f2029-1b73-44bc-90d0-7b84168ed7c5\",\"mobile\":\"(05) 3219 6151\",\"name\":\"Wayne Mcguire\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('852084da-67c1-4dae-9b45-204ff34fbd64', 0, '20190805225527244setup', 'Delete by setup at 05-Aug-2019 22:55:27', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '6891c0e1-226c-46d4-b689-e9ca7f9b2f53', 'Zia Lester (organisation) (m) (09) 1645 6813', 'D', '2019-08-05 22:55:27', 1565020527244, 'setup', '{\"\":{\"bizId\":\"6891c0e1-226c-46d4-b689-e9ca7f9b2f53\",\"bizKey\":\"Zia Lester (organisation) (m) (09) 1645 6813\",\"contactType\":\"Organisation\",\"email1\":\"pellentesque.Sed.dictum@rhoncus.co.uk\",\"image\":null,\"mobile\":\"(09) 1645 6813\",\"name\":\"Zia Lester\"}}'),
('85efa678-3f5d-4c3a-8869-cae211728d2c', 0, '20190806052116708setup', 'Update by setup at 06-Aug-2019 05:21:16', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Project', '8d67bac7-1bdf-47d5-a431-69eb28c7c287', 'PRJ001 - Custom Web Application for Montana', 'U', '2019-08-06 05:21:16', 1565043676708, 'setup', '{\"\":{\"bizId\":\"8d67bac7-1bdf-47d5-a431-69eb28c7c287\",\"bizKey\":\"PRJ001 - Custom Web Application for Montana\",\"endDate\":\"2019-08-01\",\"projectCode\":\"PRJ001\",\"projectDescription\":\"Create Custom Web Application for Montana.\\r\\nThe web application will include HRM and CRM modules\",\"projectName\":\"Custom Web Application for Montana\",\"startDate\":\"2019-03-01\"},\"projectCoordinator\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"staffLocation\":\"POLYGON ((105.72115166168533 21.008927639627494, 105.72355492096267 21.001555952286576, 105.73660118561111 21.001235435880734, 105.73763115387283 21.00860713905515, 105.72115166168533 21.008927639627494))\",\"startDate\":\"2018-06-01\"},\"projectCoordinator.user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"projectCoordinator.user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"projectManager\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins a\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"staffLocation\":null,\"startDate\":\"2018-01-01\"},\"projectManager.user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins a (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"projectManager.user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins a (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins a\"},\"projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"projectOwner\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":\"204b1728-43af-4ded-8b22-10d41e5cb450\",\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}'),
('882b55cd-2583-4126-b6b5-b4a751d8391a', 0, '20190806052140783setup', 'Update by setup at 06-Aug-2019 05:21:40', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Project', '8d67bac7-1bdf-47d5-a431-69eb28c7c287', 'PRJ001 - Custom Web Application for Montana', 'U', '2019-08-06 05:21:40', 1565043700783, 'setup', '{\"\":{\"bizId\":\"8d67bac7-1bdf-47d5-a431-69eb28c7c287\",\"bizKey\":\"PRJ001 - Custom Web Application for Montana\",\"endDate\":\"2019-08-01\",\"projectCode\":\"PRJ001\",\"projectDescription\":\"Create Custom Web Application for Montana.\\r\\nThe web application will include HRM and CRM modules\",\"projectName\":\"Custom Web Application for Montana\",\"startDate\":\"2019-03-01\"},\"projectCoordinator\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"staffLocation\":\"POLYGON ((105.72115166168533 21.008927639627494, 105.72355492096267 21.001555952286576, 105.73660118561111 21.001235435880734, 105.73763115387283 21.00860713905515, 105.72115166168533 21.008927639627494))\",\"startDate\":\"2018-06-01\"},\"projectCoordinator.user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"projectCoordinator.user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"projectManager\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins a\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"staffLocation\":null,\"startDate\":\"2018-01-01\"},\"projectManager.user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins a (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"projectManager.user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins a (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins a\"},\"projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"projectOwner\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":\"204b1728-43af-4ded-8b22-10d41e5cb450\",\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}'),
('8f47ddab-4293-4734-94f8-265b43377ceb', 0, '20190707065444875setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'e5fbdf57-4b05-4a1a-913a-4efc2885e064', 'Merrill Holmes (person) (m) (03) 6195 7749', 'I', '2019-07-07 06:54:44', 1562457284875, 'setup', '{\"\":{\"bizId\":\"e5fbdf57-4b05-4a1a-913a-4efc2885e064\",\"bizKey\":\"Merrill Holmes (person) (m) (03) 6195 7749\",\"contactType\":\"Person\",\"email1\":\"egestas@dictum.edu\",\"image\":null,\"mobile\":\"(03) 6195 7749\",\"name\":\"Merrill Holmes\"}}'),
('9177c667-95f1-4346-8531-1705a66032d8', 0, '20190710050248276setup', 'Insert by setup at 10-Jul-2019 05:02:48', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Todo', '9895ea8c-a31b-495f-b593-dc88a30ca1b3', 'TSK-10002', 'I', '2019-07-10 05:02:48', 1562709768276, 'setup', '{\"\":{\"actualFinishDate\":\"2019-05-03T10:00:00.000+00:00\",\"actualStartDate\":\"2019-05-02T02:45:00.000+00:00\",\"bizId\":\"9895ea8c-a31b-495f-b593-dc88a30ca1b3\",\"bizKey\":\"TSK-10002\",\"priorityLevel\":\"urg\",\"recordedDateTime\":\"2019-05-02T02:00:00.000+00:00\",\"startDate\":\"2019-05-02T02:00:00.000+00:00\",\"targetDate\":\"2019-05-03T10:00:00.000+00:00\",\"taskDescription\":\"Fusce vestibulum lacus ut magna malesuada, ac sagittis mi euismod. Curabitur dolor lorem, vulputate in dapibus tincidunt, mattis vel augue. Nulla ex mi, accumsan eget efficitur quis, molestie ac quam. Cras felis odio, aliquet blandit ipsum ac, volutpat viverra mi.\",\"taskID\":\"TSK-10002\",\"taskStatus\":\"assign\"},\"assignTo\":{\"bio\":\"Analyst. Communicator. Problem solver. Subtly charming reader. Student. Unapologetic food fanatic. Proud explorer.\",\"bizId\":\"e71ec74d-6fbf-4507-8d0e-12b203fc4edc\",\"bizKey\":\"Chastity Cunningham\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1990-02-02\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-15\",\"idCardNo\":\"01293128321\",\"issuedDate\":\"2008-05-15\",\"jobTitle\":\"Business Analysis\",\"socialTitle\":\"ms\",\"startDate\":\"2017-07-05\"},\"assignTo.user\":{\"bizId\":\"d1dd3528-a9d1-4886-809f-d42c857f9825\",\"bizKey\":\"chastityc - Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:27:14.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"chastityc\",\"wizardState\":null},\"assignTo.user.contact\":{\"bizId\":\"c16c17b3-df7c-4f70-9939-7896c526636f\",\"bizKey\":\"Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactType\":\"Person\",\"email1\":\"faucibus@purus.net\",\"image\":\"c86e1828-ac40-4d82-87f8-6b4a4586cbdc\",\"mobile\":\"(06) 5031 9633\",\"name\":\"Chastity Cunningham\"},\"project\":{\"bizId\":\"3ea7796e-1809-4e74-b82f-03ab56d7fe18\",\"bizKey\":\"PRJ002 - SCM System for Robert Valentine\",\"endDate\":\"2019-09-30\",\"projectCode\":\"PRJ002\",\"projectDescription\":\"Robert Valentine is a supply chain company. They are mainly provide electric device.\\r\\nThey need a SCM system to help them to easier manage their sales and purchase activities as well as manage Customers and Vendors dictionary.\",\"projectName\":\"SCM System for Robert Valentine\",\"startDate\":\"2019-05-01\"},\"project.projectCoordinator\":{\"bio\":\"Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst\",\"bizId\":\"df4b7098-f192-40fa-ac9c-0249221cc5c9\",\"bizKey\":\"Stewart Mann\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1994-01-01\",\"dept\":\"IT\",\"expiredDate\":\"2026-09-08\",\"idCardNo\":\"01290389712\",\"issuedDate\":\"2011-09-08\",\"jobTitle\":\"Junior Engineer\",\"socialTitle\":\"mr\",\"startDate\":\"2017-06-02\"},\"project.projectCoordinator.user\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":null},\"project.projectCoordinator.user.contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"project.projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"project.projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"project.projectManager\":{\"bio\":\"Pop culture enthusiast. Unable to type with boxing gloves on. Analyst. Student. Explorer.\",\"bizId\":\"efb2915c-2ce2-46a7-9b11-7f2245cdff98\",\"bizKey\":\"Davis Carr\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1989-01-22\",\"dept\":\"IT\",\"expiredDate\":\"2020-05-25\",\"idCardNo\":\"1203921378\",\"issuedDate\":\"2008-05-25\",\"jobTitle\":\"Project Manager\",\"socialTitle\":\"mr\",\"startDate\":\"2008-12-01\"},\"project.projectManager.user\":{\"bizId\":\"8e16b7e5-8e5f-40d7-9034-baf0d540fc00\",\"bizKey\":\"daviscarr - Davis Carr (person) (m) (06) 5871 3564\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:11:46.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"daviscarr\",\"wizardState\":null},\"project.projectManager.user.contact\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":\"a0533de5-b907-4477-9610-af5d117c20d6\",\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"},\"project.projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"project.projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"project.projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"project.projectOwner\":{\"bizId\":\"719f1953-ec1d-40f5-a4a2-27ff15514abe\",\"bizKey\":\"Robert Valentine (organisation) (m) (05) 4325 8797\",\"contactType\":\"Organisation\",\"email1\":\"in.tempus@montes.net\",\"image\":null,\"mobile\":\"(05) 4325 8797\",\"name\":\"Robert Valentine\"}}'),
('95654070-756c-4619-9612-a553cea96e8e', 0, '20190707073012706setup', 'Update by setup at 07-Jul-2019 07:30:12', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'codylogan - Cody Logan (person) (m) (09) 3475 1500', 'U', '2019-07-07 07:30:12', 1562459412706, 'setup', '{\"\":{\"bizId\":\"b340f8c3-84d1-4593-86f1-e7ef483cadb8\",\"bizKey\":\"codylogan - Cody Logan (person) (m) (09) 3475 1500\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:29:13.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Cody Logan\",\"searchEmail\":null,\"userName\":\"codylogan\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"47217da5-fee8-4564-96bb-c98ee9e317d1\",\"bizKey\":\"Cody Logan (person) (m) (09) 3475 1500\",\"contactType\":\"Person\",\"email1\":\"erat.semper@auctorvelit.ca\",\"image\":\"3cd123b0-27ef-4155-a40f-b51c3edab623\",\"mobile\":\"(09) 3475 1500\",\"name\":\"Cody Logan\"},\"groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('9569a05a-273a-460b-9755-a91072e0a335', 0, '20190707072533251setup', 'Insert by setup at 07-Jul-2019 07:25:33', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '5cba2014-6d89-43b5-a810-554a31c711b0', 'camdensan - Camden Sanchez (person) (m) (04) 1170 9137', 'I', '2019-07-07 07:25:33', 1562459133251, 'setup', '{\"\":{\"bizId\":\"5cba2014-6d89-43b5-a810-554a31c711b0\",\"bizKey\":\"camdensan - Camden Sanchez (person) (m) (04) 1170 9137\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:24:43.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Camden Sanchez\",\"searchEmail\":null,\"userName\":\"camdensan\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":\"24518be0-b514-4ea4-a6eb-4556efdaa4d8\",\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('9b45d0c9-890f-4874-8595-b07ad56ac19c', 0, '20190707072909131setup', 'Update by setup at 07-Jul-2019 07:29:09', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'bd03831c-9e44-40a6-bdde-fd5da2286042', 'adriablev - Adria Blevins (person) (m) (06) 7653 7772', 'U', '2019-07-07 07:29:09', 1562459349131, 'setup', '{\"\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Adria Blevins\",\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('a00596ef-c52f-411a-872c-8aff8ff81b6f', 0, '20190707065444956setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '47217da5-fee8-4564-96bb-c98ee9e317d1', 'Cody Logan (person) (m) (09) 3475 1500', 'I', '2019-07-07 06:54:44', 1562457284956, 'setup', '{\"\":{\"bizId\":\"47217da5-fee8-4564-96bb-c98ee9e317d1\",\"bizKey\":\"Cody Logan (person) (m) (09) 3475 1500\",\"contactType\":\"Person\",\"email1\":\"erat.semper@auctorvelit.ca\",\"image\":null,\"mobile\":\"(09) 3475 1500\",\"name\":\"Cody Logan\"}}'),
('a5d18831-0bf1-41a3-8bc1-5c871bc0c837', 0, '20190707065445462setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'bdd5a31d-58ea-4b66-af6f-dbb4200af1eb', 'Kellie Foreman (person) (m) (05) 4711 8255', 'I', '2019-07-07 06:54:45', 1562457285462, 'setup', '{\"\":{\"bizId\":\"bdd5a31d-58ea-4b66-af6f-dbb4200af1eb\",\"bizKey\":\"Kellie Foreman (person) (m) (05) 4711 8255\",\"contactType\":\"Person\",\"email1\":\"mus.Donec@dapibusgravidaAliquam.ca\",\"image\":null,\"mobile\":\"(05) 4711 8255\",\"name\":\"Kellie Foreman\"}}');
INSERT INTO `adm_audit` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `auditModuleName`, `auditDocumentName`, `auditBizId`, `auditBizKey`, `operation`, `timestamp`, `millis`, `userName`, `auditDetail`) VALUES
('abcc1ed0-b923-4565-ba6a-dd2671db1422', 0, '20190707073006905setup', 'Insert by setup at 07-Jul-2019 07:30:06', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'codylogan - Cody Logan (person) (m) (09) 3475 1500', 'I', '2019-07-07 07:30:06', 1562459406905, 'setup', '{\"\":{\"bizId\":\"b340f8c3-84d1-4593-86f1-e7ef483cadb8\",\"bizKey\":\"codylogan - Cody Logan (person) (m) (09) 3475 1500\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:29:13.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Cody Logan\",\"searchEmail\":null,\"userName\":\"codylogan\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"47217da5-fee8-4564-96bb-c98ee9e317d1\",\"bizKey\":\"Cody Logan (person) (m) (09) 3475 1500\",\"contactType\":\"Person\",\"email1\":\"erat.semper@auctorvelit.ca\",\"image\":\"3cd123b0-27ef-4155-a40f-b51c3edab623\",\"mobile\":\"(09) 3475 1500\",\"name\":\"Cody Logan\"},\"groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('ad0c4b2d-8f57-4e47-95d2-c4ffc3870ac3', 0, '20190708054328486francesst', 'Insert by francesst at 08-Jul-2019 05:43:28', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', '74896a53-4ccb-4db0-aded-92f1724733d8', 'Frances Strickland', 'I', '2019-07-08 05:43:28', 1562539408486, 'francesst', '{\"\":{\"bio\":\"Music maven. Typical beer fanatic. Creator. Freelance zombie advocate. Hardcore explorer\",\"bizId\":\"74896a53-4ccb-4db0-aded-92f1724733d8\",\"bizKey\":\"Frances Strickland\",\"bu\":\"HRM\",\"dateOfBirth\":\"1992-01-25\",\"dept\":\"HRM\",\"expiredDate\":\"2023-05-14\",\"idCardNo\":\"12039217328\",\"issuedDate\":\"2009-05-14\",\"jobTitle\":\"Staff Manager\",\"socialTitle\":\"ms\",\"startDate\":\"2015-01-01\"},\"user\":{\"bizId\":\"40178471-4654-4789-818a-e76b31e3de79\",\"bizKey\":\"francesst - Frances Strickland (person) (m) (06) 5389 4625\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:20:06.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"francesst\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"c547a986-0da4-4058-8b53-ff2daf554739\",\"bizKey\":\"Frances Strickland (person) (m) (06) 5389 4625\",\"contactType\":\"Person\",\"email1\":\"enim@at.co.uk\",\"image\":\"83ccd1a6-ac4f-4b6b-ae72-3da457e6bb1f\",\"mobile\":\"(06) 5389 4625\",\"name\":\"Frances Strickland\"},\"user.groups[0]\":{\"bizId\":\"c9015806-7943-4319-9791-d6c2bae6ebe5\",\"bizKey\":\"Staff Manager\",\"description\":\"Todo Application - Staff Manager\",\"name\":\"Staff Manager\"},\"user.groups[0].roles[0]\":{\"bizId\":\"01cb9134-e617-4388-b50e-3d011c02104c\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"}}'),
('b5742605-6095-462c-8f42-19579fd882d5', 0, '20190704050856148setup', 'Update by setup at 04-Jul-2019 05:08:56', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'db32a46d-2328-4646-8245-961cc03151fd', 'setup - setup (person)', 'U', '2019-07-04 05:08:56', 1562191736148, 'setup', '{\"\":{\"bizId\":\"db32a46d-2328-4646-8245-961cc03151fd\",\"bizKey\":\"setup - setup (person)\",\"contactSelected\":false,\"createdDateTime\":\"2019-06-09T23:02:53.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":\"2019-07-03T22:08:55.000+00:00\",\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"setup\",\"wizardState\":null},\"contact\":{\"bizId\":\"b26d3a08-797a-4085-b9b8-e7fd41914f08\",\"bizKey\":\"setup (person)\",\"contactType\":\"Person\",\"email1\":\"rucvan.pr@gmail.com\",\"image\":null,\"mobile\":null,\"name\":\"setup\"},\"roles[0]\":{\"bizId\":\"0a3e3414-aef1-4389-af75-70b199febb06\",\"bizKey\":\"Admin - Anonymous (Access anonymous (not logged in) public features)\",\"roleName\":\"admin.Anonymous\"},\"roles[10]\":{\"bizId\":\"bd4ba674-80f6-4e82-90ee-9472ade57d2b\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"roles[11]\":{\"bizId\":\"d73efb9f-8241-403a-8f3f-05c3fa45e2bd\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"roles[12]\":{\"bizId\":\"aa26ee75-f558-44b0-a882-ea4579bf3c3b\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"},\"roles[1]\":{\"bizId\":\"fa24b2ad-ba06-40ad-a8d5-865e7c6f31bf\",\"bizKey\":\"Admin - AppUser (Manage own contact details and password)\",\"roleName\":\"admin.AppUser\"},\"roles[2]\":{\"bizId\":\"084f7aed-2b66-46e0-bce7-77153ea35bb2\",\"bizKey\":\"Admin - AuditManager (Manage the activity audit log)\",\"roleName\":\"admin.AuditManager\"},\"roles[3]\":{\"bizId\":\"3e3ee25a-a97f-4d20-9eaf-16dd9c04514f\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[4]\":{\"bizId\":\"657632fe-7a49-40c9-888e-30f292c51a34\",\"bizKey\":\"Admin - ContactManager (Manage contact details and interactions)\",\"roleName\":\"admin.ContactManager\"},\"roles[5]\":{\"bizId\":\"7a592dbd-b3df-45ff-90ad-64f83c79f283\",\"bizKey\":\"Admin - ContactViewer (View-only access to contact details)\",\"roleName\":\"admin.ContactViewer\"},\"roles[6]\":{\"bizId\":\"aee7955b-1634-43e8-8e76-c86bbcea85ee\",\"bizKey\":\"Admin - DevOps (Generate Skyve designs and metadata and adminis...)\",\"roleName\":\"admin.DevOps\"},\"roles[7]\":{\"bizId\":\"0496e551-f692-4922-ae00-4ea597d5506a\",\"bizKey\":\"Admin - JobMaintainer (Maintain Jobs)\",\"roleName\":\"admin.JobMaintainer\"},\"roles[8]\":{\"bizId\":\"b7789185-67e2-495d-8f89-73ae56172444\",\"bizKey\":\"Admin - SecurityAdministrator (Allows administration of Users and Groups)\",\"roleName\":\"admin.SecurityAdministrator\"},\"roles[9]\":{\"bizId\":\"fcde1be6-ecb6-4db8-8e88-fe0d4a923364\",\"bizKey\":\"Admin - ViewUser (View-only access to the administration module)\",\"roleName\":\"admin.ViewUser\"}}'),
('b609ffb0-2604-48d1-9a05-5af9ad8ccb85', 0, '20190707072435965setup', 'Update by setup at 07-Jul-2019 07:24:35', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma - Stewart Mann (person) (m) (02) 5002 1351', 'U', '2019-07-07 07:24:35', 1562459075965, 'setup', '{\"\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Stewart Mann\",\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('b7fd7872-feb4-4f45-93ad-c7b9923218c9', 0, '20190707072806057setup', 'Update by setup at 07-Jul-2019 07:28:06', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'd1dd3528-a9d1-4886-809f-d42c857f9825', 'chastityc - Chastity Cunningham (person) (m) (06) 5031 9633', 'U', '2019-07-07 07:28:06', 1562459286057, 'setup', '{\"\":{\"bizId\":\"d1dd3528-a9d1-4886-809f-d42c857f9825\",\"bizKey\":\"chastityc - Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:27:14.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Chastity Cunningham\",\"searchEmail\":null,\"userName\":\"chastityc\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"c16c17b3-df7c-4f70-9939-7896c526636f\",\"bizKey\":\"Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactType\":\"Person\",\"email1\":\"faucibus@purus.net\",\"image\":\"c86e1828-ac40-4d82-87f8-6b4a4586cbdc\",\"mobile\":\"(06) 5031 9633\",\"name\":\"Chastity Cunningham\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('c02e7a67-8b5e-45d1-b3b2-4ad68bb98085', 0, '20190707072706430setup', 'Update by setup at 07-Jul-2019 07:27:06', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '8934bef5-5d96-458a-bed3-21b9d3d20730', 'merrillho - Merrill Holmes (person) (m) (03) 6195 7749', 'U', '2019-07-07 07:27:06', 1562459226429, 'setup', '{\"\":{\"bizId\":\"8934bef5-5d96-458a-bed3-21b9d3d20730\",\"bizKey\":\"merrillho - Merrill Holmes (person) (m) (03) 6195 7749\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:26:06.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Merrill Holmes\",\"searchEmail\":null,\"userName\":\"merrillho\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"e5fbdf57-4b05-4a1a-913a-4efc2885e064\",\"bizKey\":\"Merrill Holmes (person) (m) (03) 6195 7749\",\"contactType\":\"Person\",\"email1\":\"egestas@dictum.edu\",\"image\":\"bba651db-8b3a-4fa8-9012-9dc62a73f909\",\"mobile\":\"(03) 6195 7749\",\"name\":\"Merrill Holmes\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('c07bae1a-5790-4655-b69a-05c7b4ad3ad1', 0, '20190707065444891setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'c16c17b3-df7c-4f70-9939-7896c526636f', 'Chastity Cunningham (person) (m) (06) 5031 9633', 'I', '2019-07-07 06:54:44', 1562457284891, 'setup', '{\"\":{\"bizId\":\"c16c17b3-df7c-4f70-9939-7896c526636f\",\"bizKey\":\"Chastity Cunningham (person) (m) (06) 5031 9633\",\"contactType\":\"Person\",\"email1\":\"faucibus@purus.net\",\"image\":null,\"mobile\":\"(06) 5031 9633\",\"name\":\"Chastity Cunningham\"}}'),
('c5450142-67ae-4d40-9d13-a28125f83e37', 0, '20190805225459809setup', 'Delete by setup at 05-Aug-2019 22:54:59', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '98977d89-2d2c-4b92-9b47-7f9ddf2d025d', 'Zephania Burton (person) (m) (04) 4212 5033', 'D', '2019-08-05 22:54:59', 1565020499809, 'setup', '{\"\":{\"bizId\":\"98977d89-2d2c-4b92-9b47-7f9ddf2d025d\",\"bizKey\":\"Zephania Burton (person) (m) (04) 4212 5033\",\"contactType\":\"Person\",\"email1\":\"nunc.nulla.vulputate@utquamvel.ca\",\"image\":null,\"mobile\":\"(04) 4212 5033\",\"name\":\"Zephania Burton\"}}'),
('c5f97483-af21-429d-983b-f225c35b7414', 0, '20190707065445234setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', 'f215dde3-fa40-4b9b-aeb3-417b2e35a2dd', 'Lance Daniel (person) (m) (08) 7729 7987', 'I', '2019-07-07 06:54:45', 1562457285234, 'setup', '{\"\":{\"bizId\":\"f215dde3-fa40-4b9b-aeb3-417b2e35a2dd\",\"bizKey\":\"Lance Daniel (person) (m) (08) 7729 7987\",\"contactType\":\"Person\",\"email1\":\"ornare.sagittis@Donecest.co.uk\",\"image\":null,\"mobile\":\"(08) 7729 7987\",\"name\":\"Lance Daniel\"}}'),
('c85c5fee-dbb7-4d28-a67e-cccbbb67c0da', 0, '20190708053423019francesst', 'Insert by francesst at 08-Jul-2019 05:34:23', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9', 'Camden Sanchez', 'I', '2019-07-08 05:34:23', 1562538863019, 'francesst', '{\"\":{\"bio\":\"Incurable zombie trailblazer. Future teen idol. Creator. Web maven. Writer. Unapologetic organizer.\",\"bizId\":\"b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9\",\"bizKey\":\"Camden Sanchez\",\"bu\":\"Tester\",\"dateOfBirth\":\"1991-06-15\",\"dept\":\"IT\",\"expiredDate\":\"2020-04-15\",\"idCardNo\":\"018937128\",\"issuedDate\":\"2008-04-15\",\"jobTitle\":\"Software Tester\",\"socialTitle\":\"ms\",\"startDate\":\"2018-05-05\"},\"user\":{\"bizId\":\"5cba2014-6d89-43b5-a810-554a31c711b0\",\"bizKey\":\"camdensan - Camden Sanchez (person) (m) (04) 1170 9137\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:24:43.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"camdensan\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"4314d577-2e43-4fe4-aa07-8541d31c094e\",\"bizKey\":\"Camden Sanchez (person) (m) (04) 1170 9137\",\"contactType\":\"Person\",\"email1\":\"quis.arcu@arcuCurabitur.ca\",\"image\":\"24518be0-b514-4ea4-a6eb-4556efdaa4d8\",\"mobile\":\"(04) 1170 9137\",\"name\":\"Camden Sanchez\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('c96c7dfb-2e19-40b7-832b-1528a111af43', 0, '20190707065445316setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '8b6da453-d153-4a2a-ba12-e792fad9d654', 'Kitra Fry (person) (m) (04) 1892 9505', 'I', '2019-07-07 06:54:45', 1562457285316, 'setup', '{\"\":{\"bizId\":\"8b6da453-d153-4a2a-ba12-e792fad9d654\",\"bizKey\":\"Kitra Fry (person) (m) (04) 1892 9505\",\"contactType\":\"Person\",\"email1\":\"fermentum.metus.Aenean@ornarefacilisis.edu\",\"image\":null,\"mobile\":\"(04) 1892 9505\",\"name\":\"Kitra Fry\"}}'),
('d0cbf90c-7e78-45ee-b4bc-9ac180dcfb34', 0, '20190707065445354setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '116da34d-721a-4ad1-b243-1d2d3a753338', 'Ramona Lowe (person) (m) (07) 0104 6288', 'I', '2019-07-07 06:54:45', 1562457285354, 'setup', '{\"\":{\"bizId\":\"116da34d-721a-4ad1-b243-1d2d3a753338\",\"bizKey\":\"Ramona Lowe (person) (m) (07) 0104 6288\",\"contactType\":\"Person\",\"email1\":\"Curae@eunibh.ca\",\"image\":null,\"mobile\":\"(07) 0104 6288\",\"name\":\"Ramona Lowe\"}}'),
('d77232ac-ac83-4dbd-8b34-ecf9e37a166f', 0, '20190708052808574francesst', 'Insert by francesst at 08-Jul-2019 05:28:08', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'cf1eb33a-1856-40d5-9f32-8b69e3eea261', 'Adria Blevins', 'I', '2019-07-08 05:28:08', 1562538488574, 'francesst', '{\"\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-01-01\"},\"user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('da679da7-b3e5-42d9-b399-58de55d1cc5b', 0, '20190707065445180setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '211a2962-1c0d-4d6d-98c0-0a77d773689a', 'Fitzgerald Grimes (person) (m) (05) 8158 0165', 'I', '2019-07-07 06:54:45', 1562457285180, 'setup', '{\"\":{\"bizId\":\"211a2962-1c0d-4d6d-98c0-0a77d773689a\",\"bizKey\":\"Fitzgerald Grimes (person) (m) (05) 8158 0165\",\"contactType\":\"Person\",\"email1\":\"sit.amet@ante.ca\",\"image\":null,\"mobile\":\"(05) 8158 0165\",\"name\":\"Fitzgerald Grimes\"}}'),
('db381d90-40f1-4bc3-9645-aeaaaa910e6b', 0, '20190707072700641setup', 'Insert by setup at 07-Jul-2019 07:27:00', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', '8934bef5-5d96-458a-bed3-21b9d3d20730', 'merrillho - Merrill Holmes (person) (m) (03) 6195 7749', 'I', '2019-07-07 07:27:00', 1562459220641, 'setup', '{\"\":{\"bizId\":\"8934bef5-5d96-458a-bed3-21b9d3d20730\",\"bizKey\":\"merrillho - Merrill Holmes (person) (m) (03) 6195 7749\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:26:06.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Merrill Holmes\",\"searchEmail\":null,\"userName\":\"merrillho\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"e5fbdf57-4b05-4a1a-913a-4efc2885e064\",\"bizKey\":\"Merrill Holmes (person) (m) (03) 6195 7749\",\"contactType\":\"Person\",\"email1\":\"egestas@dictum.edu\",\"image\":\"bba651db-8b3a-4fa8-9012-9dc62a73f909\",\"mobile\":\"(03) 6195 7749\",\"name\":\"Merrill Holmes\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('db8a0cb2-8e8a-44f9-a682-f376f759b425', 0, '20190708052405033setup', 'Update by setup at 08-Jul-2019 05:24:05', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'db32a46d-2328-4646-8245-961cc03151fd', 'setup - setup (person) (m) 0973366628', 'U', '2019-07-08 05:24:05', 1562538245032, 'setup', '{\"\":{\"bizId\":\"db32a46d-2328-4646-8245-961cc03151fd\",\"bizKey\":\"setup - setup (person) (m) 0973366628\",\"contactSelected\":false,\"createdDateTime\":\"2019-06-09T23:02:53.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":\"2019-07-03T22:08:55.000+00:00\",\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"setup\",\"wizardState\":null},\"contact\":{\"bizId\":\"b26d3a08-797a-4085-b9b8-e7fd41914f08\",\"bizKey\":\"setup (person) (m) 0973366628\",\"contactType\":\"Person\",\"email1\":\"rucvan.pr@gmail.com\",\"image\":\"84cbd562-7023-4bcb-9570-8660a9ada761\",\"mobile\":\"0973366628\",\"name\":\"setup\"},\"roles[0]\":{\"bizId\":\"0a3e3414-aef1-4389-af75-70b199febb06\",\"bizKey\":\"Admin - Anonymous (Access anonymous (not logged in) public features)\",\"roleName\":\"admin.Anonymous\"},\"roles[10]\":{\"bizId\":\"bd4ba674-80f6-4e82-90ee-9472ade57d2b\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"roles[11]\":{\"bizId\":\"d73efb9f-8241-403a-8f3f-05c3fa45e2bd\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"roles[12]\":{\"bizId\":\"aa26ee75-f558-44b0-a882-ea4579bf3c3b\",\"bizKey\":\"Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)\",\"roleName\":\"todo.StaffManager\"},\"roles[1]\":{\"bizId\":\"fa24b2ad-ba06-40ad-a8d5-865e7c6f31bf\",\"bizKey\":\"Admin - AppUser (Manage own contact details and password)\",\"roleName\":\"admin.AppUser\"},\"roles[2]\":{\"bizId\":\"084f7aed-2b66-46e0-bce7-77153ea35bb2\",\"bizKey\":\"Admin - AuditManager (Manage the activity audit log)\",\"roleName\":\"admin.AuditManager\"},\"roles[3]\":{\"bizId\":\"3e3ee25a-a97f-4d20-9eaf-16dd9c04514f\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[4]\":{\"bizId\":\"657632fe-7a49-40c9-888e-30f292c51a34\",\"bizKey\":\"Admin - ContactManager (Manage contact details and interactions)\",\"roleName\":\"admin.ContactManager\"},\"roles[5]\":{\"bizId\":\"7a592dbd-b3df-45ff-90ad-64f83c79f283\",\"bizKey\":\"Admin - ContactViewer (View-only access to contact details)\",\"roleName\":\"admin.ContactViewer\"},\"roles[6]\":{\"bizId\":\"aee7955b-1634-43e8-8e76-c86bbcea85ee\",\"bizKey\":\"Admin - DevOps (Generate Skyve designs and metadata and adminis...)\",\"roleName\":\"admin.DevOps\"},\"roles[7]\":{\"bizId\":\"0496e551-f692-4922-ae00-4ea597d5506a\",\"bizKey\":\"Admin - JobMaintainer (Maintain Jobs)\",\"roleName\":\"admin.JobMaintainer\"},\"roles[8]\":{\"bizId\":\"b7789185-67e2-495d-8f89-73ae56172444\",\"bizKey\":\"Admin - SecurityAdministrator (Allows administration of Users and Groups)\",\"roleName\":\"admin.SecurityAdministrator\"},\"roles[9]\":{\"bizId\":\"fcde1be6-ecb6-4db8-8e88-fe0d4a923364\",\"bizKey\":\"Admin - ViewUser (View-only access to the administration module)\",\"roleName\":\"admin.ViewUser\"}}'),
('dff41235-fec3-4ba1-b5d1-7f204381035a', 0, '20190707065445009setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '9c58c6c8-147c-416c-91bc-f96b93f3647d', 'Barclay Waters (person) (m) (01) 4430 7719', 'I', '2019-07-07 06:54:45', 1562457285009, 'setup', '{\"\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":null,\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"}}'),
('e1f154e0-5ed8-4f81-8fda-2f018085eab0', 0, '20190707070510887setup', 'Insert by setup at 07-Jul-2019 07:05:10', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Group', '08fac62b-1876-4e4b-89b7-b06d0145ca92', 'Project Manager', 'I', '2019-07-07 07:05:10', 1562457910887, 'setup', '{\"\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"}}'),
('e78a7b30-c33f-49d1-8b4b-a8bd7827fef5', 0, '20190707065445432setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '732c4f26-ced4-43ba-8fe0-765aeafa9de5', 'Roth Cobb (person) (m) (06) 8095 6426', 'I', '2019-07-07 06:54:45', 1562457285432, 'setup', '{\"\":{\"bizId\":\"732c4f26-ced4-43ba-8fe0-765aeafa9de5\",\"bizKey\":\"Roth Cobb (person) (m) (06) 8095 6426\",\"contactType\":\"Person\",\"email1\":\"neque@facilisisvitae.org\",\"image\":null,\"mobile\":\"(06) 8095 6426\",\"name\":\"Roth Cobb\"}}'),
('ec457ae8-c8e0-4757-8290-6b803832e0d9', 0, '20190707072319950setup', 'Insert by setup at 07-Jul-2019 07:23:19', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Group', 'a4b7e639-0d10-463d-a992-570a56761f0c', 'Project Member', 'I', '2019-07-07 07:23:19', 1562458999950, 'setup', '{\"\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('ec8c90a3-1b13-4536-b9a1-ac71ab71bb71', 0, '20190805225431740setup', 'Insert by setup at 05-Aug-2019 22:54:31', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Tag', '5fe3f05b-3ae5-4e11-992d-427dc59fa407', 'Tag delete 0508', 'I', '2019-08-05 22:54:31', 1565020471740, 'setup', '{\"\":{\"actionDocumentName\":null,\"actionModuleName\":null,\"attributeName\":null,\"bizId\":\"5fe3f05b-3ae5-4e11-992d-427dc59fa407\",\"bizKey\":\"Tag delete 0508\",\"combinationExplanation\":null,\"combinationsOperator\":null,\"copyToUserTagName\":null,\"documentAction\":null,\"documentActionResults\":null,\"documentCondition\":null,\"fileHasHeaders\":null,\"filterAction\":null,\"filterColumn\":null,\"filterOperator\":null,\"name\":\"delete 0508\",\"notification\":null,\"operandTagCount\":null,\"totalTagged\":null,\"unTagSuccessful\":null,\"uploadDocumentName\":null,\"uploadMatched\":null,\"uploadModuleName\":null,\"uploadTagged\":null,\"uploaded\":null,\"visible\":true}}'),
('ed0bb28f-cdf1-4c50-884e-77731a5a5f49', 0, '20190707065444801setup', 'Insert by setup at 07-Jul-2019 06:54:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '20e851d8-2e85-4312-8de9-176d068dfe3b', 'Davis Carr (person) (m) (06) 5871 3564', 'I', '2019-07-07 06:54:44', 1562457284800, 'setup', '{\"\":{\"bizId\":\"20e851d8-2e85-4312-8de9-176d068dfe3b\",\"bizKey\":\"Davis Carr (person) (m) (06) 5871 3564\",\"contactType\":\"Person\",\"email1\":\"malesuada.augue.ut@senectuset.net\",\"image\":null,\"mobile\":\"(06) 5871 3564\",\"name\":\"Davis Carr\"}}'),
('ee84fef3-adb1-4597-aa4d-9436e4950aaa', 0, '20190709045625696setup', 'Insert by setup at 09-Jul-2019 04:56:25', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Project', '8d67bac7-1bdf-47d5-a431-69eb28c7c287', 'PRJ001 - Custom Web Application for Montana', 'I', '2019-07-09 04:56:25', 1562622985695, 'setup', '{\"\":{\"bizId\":\"8d67bac7-1bdf-47d5-a431-69eb28c7c287\",\"bizKey\":\"PRJ001 - Custom Web Application for Montana\",\"endDate\":\"2019-08-01\",\"projectCode\":\"PRJ001\",\"projectDescription\":\"Create Custom Web Application for Montana.\\r\\nThe web application will include HRM and CRM modules\",\"projectName\":\"Custom Web Application for Montana\",\"startDate\":\"2019-03-01\"},\"projectCoordinator\":{\"bio\":\"Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.\",\"bizId\":\"2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5\",\"bizKey\":\"Barclay Waters\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1991-02-15\",\"dept\":\"IT\",\"expiredDate\":\"2029-03-15\",\"idCardNo\":\"091238712837\",\"issuedDate\":\"2009-03-15\",\"jobTitle\":\"Senior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-06-01\"},\"projectCoordinator.user\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":null},\"projectCoordinator.user.contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"projectCoordinator.user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"projectCoordinator.user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectCoordinator.user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"},\"projectManager\":{\"bio\":\"Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.\",\"bizId\":\"cf1eb33a-1856-40d5-9f32-8b69e3eea261\",\"bizKey\":\"Adria Blevins\",\"bu\":\"Software Engineering\",\"dateOfBirth\":\"1990-01-20\",\"dept\":\"IT\",\"expiredDate\":\"2020-08-20\",\"idCardNo\":\"01912383712\",\"issuedDate\":\"2010-08-20\",\"jobTitle\":\"Junior Programmer\",\"socialTitle\":\"mr\",\"startDate\":\"2018-01-01\"},\"projectManager.user\":{\"bizId\":\"bd03831c-9e44-40a6-bdde-fd5da2286042\",\"bizKey\":\"adriablev - Adria Blevins (person) (m) (06) 7653 7772\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:28:19.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"adriablev\",\"wizardState\":null},\"projectManager.user.contact\":{\"bizId\":\"931afefe-ab16-4ed6-9ad4-72856f2150dc\",\"bizKey\":\"Adria Blevins (person) (m) (06) 7653 7772\",\"contactType\":\"Person\",\"email1\":\"In@urnaconvalliserat.co.uk\",\"image\":\"d0b04cf8-20c4-4a77-9866-23850cd4cbe6\",\"mobile\":\"(06) 7653 7772\",\"name\":\"Adria Blevins\"},\"projectManager.user.groups[0]\":{\"bizId\":\"08fac62b-1876-4e4b-89b7-b06d0145ca92\",\"bizKey\":\"Project Manager\",\"description\":\"Todo Application - Project Manager\",\"name\":\"Project Manager\"},\"projectManager.user.groups[0].roles[0]\":{\"bizId\":\"9c6d3ab7-7fb2-4320-9322-11e37da0a8af\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"projectManager.user.groups[0].roles[1]\":{\"bizId\":\"e14ea62f-ccdc-4aa9-b456-8d34b33f64c7\",\"bizKey\":\"Todo Module - ProjectManager (Project Manager - who are able to manage projec...)\",\"roleName\":\"todo.ProjectManager\"},\"projectOwner\":{\"bizId\":\"7fb0e417-771e-4892-ad8f-eb45dc05cc7b\",\"bizKey\":\"Montana Sykes (organisation) (m) (06) 6284 2581\",\"contactType\":\"Organisation\",\"email1\":\"hendrerit.id@lorem.com\",\"image\":null,\"mobile\":\"(06) 6284 2581\",\"name\":\"Montana Sykes\"}}'),
('eff565f3-0283-4bcc-9251-77b3e34142ab', 0, '20190708054755362francesst', 'Insert by francesst at 08-Jul-2019 05:47:55', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', 'df4b7098-f192-40fa-ac9c-0249221cc5c9', 'Stewart Mann', 'I', '2019-07-08 05:47:55', 1562539675362, 'francesst', '{\"\":{\"bio\":\"Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst\",\"bizId\":\"df4b7098-f192-40fa-ac9c-0249221cc5c9\",\"bizKey\":\"Stewart Mann\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1994-01-01\",\"dept\":\"IT\",\"expiredDate\":\"2026-09-08\",\"idCardNo\":\"01290389712\",\"issuedDate\":\"2011-09-08\",\"jobTitle\":\"Junior Engineer\",\"socialTitle\":\"mr\",\"startDate\":\"2017-06-02\"},\"user\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('f1f13fc0-729b-4f2e-af20-025f7273a58b', 0, '20190708054555521francesst', 'Insert by francesst at 08-Jul-2019 05:45:55', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'todo', 'Staff', '4ae180a3-0f95-4f0c-bb8c-f990d2564a91', 'Merrill Holmes', 'I', '2019-07-08 05:45:55', 1562539555521, 'francesst', '{\"\":{\"bio\":\"Tv maven. Passionate bacon evangelist. Travel fanatic. Social media geek. Coffee guru. Beer buff. Hardcore twitter fanatic.\",\"bizId\":\"4ae180a3-0f95-4f0c-bb8c-f990d2564a91\",\"bizKey\":\"Merrill Holmes\",\"bu\":\"Software Engineer\",\"dateOfBirth\":\"1992-02-28\",\"dept\":\"IT\",\"expiredDate\":\"2024-06-14\",\"idCardNo\":\"90191279378\",\"issuedDate\":\"2009-06-14\",\"jobTitle\":\"Tester\",\"socialTitle\":\"ms\",\"startDate\":\"2015-05-05\"},\"user\":{\"bizId\":\"8934bef5-5d96-458a-bed3-21b9d3d20730\",\"bizKey\":\"merrillho - Merrill Holmes (person) (m) (03) 6195 7749\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:26:06.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":null,\"searchEmail\":null,\"userName\":\"merrillho\",\"wizardState\":null},\"user.contact\":{\"bizId\":\"e5fbdf57-4b05-4a1a-913a-4efc2885e064\",\"bizKey\":\"Merrill Holmes (person) (m) (03) 6195 7749\",\"contactType\":\"Person\",\"email1\":\"egestas@dictum.edu\",\"image\":\"bba651db-8b3a-4fa8-9012-9dc62a73f909\",\"mobile\":\"(03) 6195 7749\",\"name\":\"Merrill Holmes\"},\"user.groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"user.groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"user.groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('f393945d-effb-48e2-b71d-d00451d8852a', 0, '20190805225810885setup', 'Delete by setup at 05-Aug-2019 22:58:10', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Tag', '5fe3f05b-3ae5-4e11-992d-427dc59fa407', 'Tag delete 0508', 'D', '2019-08-05 22:58:10', 1565020690885, 'setup', '{\"\":{\"actionDocumentName\":null,\"actionModuleName\":null,\"attributeName\":null,\"bizId\":\"5fe3f05b-3ae5-4e11-992d-427dc59fa407\",\"bizKey\":\"Tag delete 0508\",\"combinationExplanation\":null,\"combinationsOperator\":null,\"copyToUserTagName\":null,\"documentAction\":null,\"documentActionResults\":null,\"documentCondition\":null,\"fileHasHeaders\":null,\"filterAction\":null,\"filterColumn\":null,\"filterOperator\":null,\"name\":\"delete 0508\",\"notification\":null,\"operandTagCount\":null,\"totalTagged\":null,\"unTagSuccessful\":null,\"uploadDocumentName\":null,\"uploadMatched\":null,\"uploadModuleName\":null,\"uploadTagged\":null,\"uploaded\":null,\"visible\":true}}'),
('f6e228c7-99e5-422f-a07c-d16feb28a242', 0, '20190707065445040setup', 'Insert by setup at 07-Jul-2019 06:54:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'Contact', '1767e483-cb43-4e18-b94c-4b62ab6ecd76', 'Owen Austin (person) (m) (02) 8074 5286', 'I', '2019-07-07 06:54:45', 1562457285040, 'setup', '{\"\":{\"bizId\":\"1767e483-cb43-4e18-b94c-4b62ab6ecd76\",\"bizKey\":\"Owen Austin (person) (m) (02) 8074 5286\",\"contactType\":\"Person\",\"email1\":\"malesuada.fames.ac@egetipsum.edu\",\"image\":null,\"mobile\":\"(02) 8074 5286\",\"name\":\"Owen Austin\"}}'),
('fd97206b-b535-49fc-a158-273b25e3de45', 0, '20190707072425477setup', 'Insert by setup at 07-Jul-2019 07:24:25', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma - Stewart Mann (person) (m) (02) 5002 1351', 'I', '2019-07-07 07:24:25', 1562459065477, 'setup', '{\"\":{\"bizId\":\"f5aeb24d-c2a6-4405-909f-a64fc7ebc955\",\"bizKey\":\"stewartma - Stewart Mann (person) (m) (02) 5002 1351\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:23:39.000+00:00\",\"homeModule\":null,\"inactive\":null,\"legacyId\":null,\"passwordExpired\":null,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Stewart Mann\",\"searchEmail\":null,\"userName\":\"stewartma\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"0badc510-a4c9-4e37-8e05-a67af43356c5\",\"bizKey\":\"Stewart Mann (person) (m) (02) 5002 1351\",\"contactType\":\"Person\",\"email1\":\"fermentum.arcu.Vestibulum@enimnonnisi.com\",\"image\":\"8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7\",\"mobile\":\"(02) 5002 1351\",\"name\":\"Stewart Mann\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}'),
('ff083e5a-dc64-4c97-9c85-a0e491dc6089', 0, '20190707073225809setup', 'Update by setup at 07-Jul-2019 07:32:25', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'admin', 'User', 'fe6057e9-da55-4934-9c67-1d044698f0cf', 'barclaywa - Barclay Waters (person) (m) (01) 4430 7719', 'U', '2019-07-07 07:32:25', 1562459545809, 'setup', '{\"\":{\"bizId\":\"fe6057e9-da55-4934-9c67-1d044698f0cf\",\"bizKey\":\"barclaywa - Barclay Waters (person) (m) (01) 4430 7719\",\"contactSelected\":false,\"createdDateTime\":\"2019-07-07T00:31:20.000+00:00\",\"homeModule\":null,\"inactive\":false,\"legacyId\":null,\"passwordExpired\":false,\"passwordLastChanged\":null,\"passwordResetToken\":null,\"searchContactName\":\"Barclay Waters\",\"searchEmail\":null,\"userName\":\"barclaywa\",\"wizardState\":\"confirmGroupMemberships\"},\"contact\":{\"bizId\":\"9c58c6c8-147c-416c-91bc-f96b93f3647d\",\"bizKey\":\"Barclay Waters (person) (m) (01) 4430 7719\",\"contactType\":\"Person\",\"email1\":\"eget@euismodac.com\",\"image\":\"f026633c-a589-4fb7-a03e-b3143f3f3ebd\",\"mobile\":\"(01) 4430 7719\",\"name\":\"Barclay Waters\"},\"groups[0]\":{\"bizId\":\"a4b7e639-0d10-463d-a992-570a56761f0c\",\"bizKey\":\"Project Member\",\"description\":\"Todo Application - Project Member\",\"name\":\"Project Member\"},\"groups[0].roles[0]\":{\"bizId\":\"2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4\",\"bizKey\":\"Admin - BasicUser (General access to the administration module)\",\"roleName\":\"admin.BasicUser\"},\"groups[0].roles[1]\":{\"bizId\":\"616f6f33-e317-47c5-a0ea-6db3a70d1f5a\",\"bizKey\":\"Todo Module - ProjectMember (Project Member - who are not able to create pro...)\",\"roleName\":\"todo.ProjectMember\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `adm_communication`
--

CREATE TABLE `adm_communication` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `moduleName` longtext,
  `documentName` longtext,
  `toBinding` longtext,
  `sendTo` varchar(250) DEFAULT NULL,
  `ccTo` varchar(250) DEFAULT NULL,
  `sendFrom` varchar(250) DEFAULT NULL,
  `monitorBcc` bit(1) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `body` longtext,
  `attachment1` varchar(36) DEFAULT NULL,
  `attachmentFileName1` varchar(250) DEFAULT NULL,
  `attachment2` varchar(36) DEFAULT NULL,
  `attachmentFileName2` varchar(250) DEFAULT NULL,
  `attachment3` varchar(36) DEFAULT NULL,
  `attachmentFileName3` varchar(250) DEFAULT NULL,
  `formatType` varchar(5) DEFAULT NULL,
  `system` bit(1) DEFAULT NULL,
  `unsubscribeUrl` longtext,
  `includeCalendar` bit(1) DEFAULT NULL,
  `calendarTitleExpression` varchar(200) DEFAULT NULL,
  `calendarStartTime` datetime DEFAULT NULL,
  `calendarEndTime` datetime DEFAULT NULL,
  `calendarDescriptionExpression` longtext,
  `template_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_communicationtemplate`
--

CREATE TABLE `adm_communicationtemplate` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `template` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_configuration`
--

CREATE TABLE `adm_configuration` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `passwordComplexityModel` varchar(7) DEFAULT NULL,
  `fromEmail` varchar(254) DEFAULT NULL,
  `passwordResetEmailSubject` varchar(250) DEFAULT NULL,
  `passwordResetEmailBody` longtext,
  `userSelfRegistrationGroup_id` varchar(36) DEFAULT NULL,
  `allowUserSelfRegistration` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_contact`
--

CREATE TABLE `adm_contact` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `contactType` varchar(12) DEFAULT NULL,
  `email1` longtext,
  `mobile` varchar(20) DEFAULT NULL,
  `image` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_contact`
--

INSERT INTO `adm_contact` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `name`, `contactType`, `email1`, `mobile`, `image`) VALUES
('016c8868-60f6-4d99-ad20-b617f478bf62', 0, '20190707065445397setup', 'Pamela Melton (person) (m) (09) 6024 6963', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Pamela Melton', 'Person', 'purus.sapien@et.ca', '(09) 6024 6963', NULL),
('0badc510-a4c9-4e37-8e05-a67af43356c5', 1, '20190707072425473setup', 'Stewart Mann (person) (m) (02) 5002 1351', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Stewart Mann', 'Person', 'fermentum.arcu.Vestibulum@enimnonnisi.com', '(02) 5002 1351', '8d11b756-cd53-4aa9-9f2a-e9ffb8f151f7'),
('0c604b95-8ddc-43ab-bdd3-7420cd90e597', 0, '20190707065445072setup', 'Cassady Joyner (person) (m) (01) 5812 1804', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Cassady Joyner', 'Person', 'neque@molestie.net', '(01) 5812 1804', NULL),
('116da34d-721a-4ad1-b243-1d2d3a753338', 0, '20190707065445328setup', 'Ramona Lowe (person) (m) (07) 0104 6288', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Ramona Lowe', 'Person', 'Curae@eunibh.ca', '(07) 0104 6288', NULL),
('1767e483-cb43-4e18-b94c-4b62ab6ecd76', 0, '20190707065445017setup', 'Owen Austin (person) (m) (02) 8074 5286', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Owen Austin', 'Person', 'malesuada.fames.ac@egetipsum.edu', '(02) 8074 5286', NULL),
('20e851d8-2e85-4312-8de9-176d068dfe3b', 1, '20190707071938578setup', 'Davis Carr (person) (m) (06) 5871 3564', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Davis Carr', 'Person', 'malesuada.augue.ut@senectuset.net', '(06) 5871 3564', 'a0533de5-b907-4477-9610-af5d117c20d6'),
('211a2962-1c0d-4d6d-98c0-0a77d773689a', 0, '20190707065445146setup', 'Fitzgerald Grimes (person) (m) (05) 8158 0165', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Fitzgerald Grimes', 'Person', 'sit.amet@ante.ca', '(05) 8158 0165', NULL),
('4314d577-2e43-4fe4-aa07-8541d31c094e', 1, '20190707072533234setup', 'Camden Sanchez (person) (m) (04) 1170 9137', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Camden Sanchez', 'Person', 'quis.arcu@arcuCurabitur.ca', '(04) 1170 9137', '24518be0-b514-4ea4-a6eb-4556efdaa4d8'),
('45f26a5c-c36e-4f9b-979e-ceafd043a7a1', 0, '20190707065445468setup', 'Jasper Randolph (person) (m) (01) 3430 2211', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Jasper Randolph', 'Person', 'imperdiet@risus.org', '(01) 3430 2211', NULL),
('47217da5-fee8-4564-96bb-c98ee9e317d1', 1, '20190707073006892setup', 'Cody Logan (person) (m) (09) 3475 1500', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Cody Logan', 'Person', 'erat.semper@auctorvelit.ca', '(09) 3475 1500', '3cd123b0-27ef-4155-a40f-b51c3edab623'),
('4f6cf25f-c025-4455-862c-ba33cad5fc7b', 0, '20190707065445497setup', 'Flavia Gentry (person) (m) (03) 8627 1502', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Flavia Gentry', 'Person', 'libero.est.congue@gravidaAliquam.edu', '(03) 8627 1502', NULL),
('5d50a921-a241-4d81-98b7-c2e473f77393', 0, '20190707065445373setup', 'Carl Golden (person) (m) (02) 6788 3176', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Carl Golden', 'Person', 'orci.Phasellus@lectus.co.uk', '(02) 6788 3176', NULL),
('5f3fdbda-6087-4764-8841-f372565cfa8d', 0, '20190707065445437setup', 'Mariam Crane (person) (m) (02) 3244 4527', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Mariam Crane', 'Person', 'magna@temporaugue.org', '(02) 3244 4527', NULL),
('6039ef7c-87d8-4ad9-9ebd-cb2664f5f6ef', 0, '20190707065445243setup', 'Samantha Mercer (organisation) (m) (05) 1296 9963', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Samantha Mercer', 'Organisation', 'iaculis@eratvolutpat.co.uk', '(05) 1296 9963', NULL),
('719f1953-ec1d-40f5-a4a2-27ff15514abe', 0, '20190707065445416setup', 'Robert Valentine (organisation) (m) (05) 4325 8797', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Robert Valentine', 'Organisation', 'in.tempus@montes.net', '(05) 4325 8797', NULL),
('732c4f26-ced4-43ba-8fe0-765aeafa9de5', 0, '20190707065445427setup', 'Roth Cobb (person) (m) (06) 8095 6426', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Roth Cobb', 'Person', 'neque@facilisisvitae.org', '(06) 8095 6426', NULL),
('77203fa5-2a38-4d31-aa87-a9c4b8a1baa6', 0, '20190707065445510setup', 'Joseph Barron (person) (m) (01) 6976 7456', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Joseph Barron', 'Person', 'vestibulum@estacfacilisis.com', '(01) 6976 7456', NULL),
('7fb0e417-771e-4892-ad8f-eb45dc05cc7b', 1, '20190806052116671setup', 'Montana Sykes (organisation) (m) (06) 6284 2581', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Montana Sykes', 'Organisation', 'hendrerit.id@lorem.com', '(06) 6284 2581', '204b1728-43af-4ded-8b22-10d41e5cb450'),
('86dfe1a5-faa8-4212-af17-09281fd584df', 1, '20190707073104831setup', 'Wayne Mcguire (person) (m) (05) 3219 6151', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Wayne Mcguire', 'Person', 'nascetur.ridiculus.mus@mauris.org', '(05) 3219 6151', 'd99f2029-1b73-44bc-90d0-7b84168ed7c5'),
('8b6da453-d153-4a2a-ba12-e792fad9d654', 0, '20190707065445296setup', 'Kitra Fry (person) (m) (04) 1892 9505', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Kitra Fry', 'Person', 'fermentum.metus.Aenean@ornarefacilisis.edu', '(04) 1892 9505', NULL),
('931afefe-ab16-4ed6-9ad4-72856f2150dc', 2, '20190802051353945setup', 'Adria Blevins a (person) (m) (06) 7653 7772', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Adria Blevins a', 'Person', 'In@urnaconvalliserat.co.uk', '(06) 7653 7772', 'd0b04cf8-20c4-4a77-9866-23850cd4cbe6'),
('9c58c6c8-147c-416c-91bc-f96b93f3647d', 1, '20190707073223402setup', 'Barclay Waters (person) (m) (01) 4430 7719', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Barclay Waters', 'Person', 'eget@euismodac.com', '(01) 4430 7719', 'f026633c-a589-4fb7-a03e-b3143f3f3ebd'),
('b26d3a08-797a-4085-b9b8-e7fd41914f08', 1, '20190708052405004setup', 'setup (person) (m) 0973366628', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', 'Person', 'rucvan.pr@gmail.com', '0973366628', '84cbd562-7023-4bcb-9570-8660a9ada761'),
('bbf93d83-3bac-4357-9013-c1870acc0666', 0, '20190707065445108setup', 'Debra Jenkins (person) (m) (01) 1155 6206', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Debra Jenkins', 'Person', 'aliquet.lobortis.nisi@Cumsociisnatoque.org', '(01) 1155 6206', NULL),
('bdd5a31d-58ea-4b66-af6f-dbb4200af1eb', 0, '20190707065445452setup', 'Kellie Foreman (person) (m) (05) 4711 8255', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Kellie Foreman', 'Person', 'mus.Donec@dapibusgravidaAliquam.ca', '(05) 4711 8255', NULL),
('c16c17b3-df7c-4f70-9939-7896c526636f', 1, '20190707072801943setup', 'Chastity Cunningham (person) (m) (06) 5031 9633', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Chastity Cunningham', 'Person', 'faucibus@purus.net', '(06) 5031 9633', 'c86e1828-ac40-4d82-87f8-6b4a4586cbdc'),
('c547a986-0da4-4058-8b53-ff2daf554739', 1, '20190707072124155setup', 'Frances Strickland (person) (m) (06) 5389 4625', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Frances Strickland', 'Person', 'enim@at.co.uk', '(06) 5389 4625', '83ccd1a6-ac4f-4b6b-ae72-3da457e6bb1f'),
('e5fbdf57-4b05-4a1a-913a-4efc2885e064', 1, '20190707072700627setup', 'Merrill Holmes (person) (m) (03) 6195 7749', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Merrill Holmes', 'Person', 'egestas@dictum.edu', '(03) 6195 7749', 'bba651db-8b3a-4fa8-9012-9dc62a73f909'),
('f215dde3-fa40-4b9b-aeb3-417b2e35a2dd', 0, '20190707065445206setup', 'Lance Daniel (person) (m) (08) 7729 7987', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Lance Daniel', 'Person', 'ornare.sagittis@Donecest.co.uk', '(08) 7729 7987', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adm_datagroup`
--

CREATE TABLE `adm_datagroup` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_datamaintenance`
--

CREATE TABLE `adm_datamaintenance` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `modDocName` varchar(100) DEFAULT NULL,
  `injectBootstrapUser` bit(1) DEFAULT NULL,
  `schemaName` longtext,
  `notification` bit(1) DEFAULT NULL,
  `dailyBackupRetention` int(11) DEFAULT NULL,
  `weeklyBackupRetention` int(11) DEFAULT NULL,
  `monthlyBackupRetention` int(11) DEFAULT NULL,
  `yearlyBackupRetention` int(11) DEFAULT NULL,
  `restorePreProcess` varchar(39) DEFAULT NULL,
  `contentRestoreOption` varchar(23) DEFAULT NULL,
  `restoreIndexingOption` varchar(7) DEFAULT NULL,
  `auditModuleName` varchar(128) DEFAULT NULL,
  `auditDocumentName` varchar(128) DEFAULT NULL,
  `auditOperation` varchar(1) DEFAULT NULL,
  `auditTimestampStart` datetime DEFAULT NULL,
  `auditTimestampEnd` datetime DEFAULT NULL,
  `auditUser_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_documentnumber`
--

CREATE TABLE `adm_documentnumber` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `moduleName` longtext,
  `documentName` longtext,
  `sequenceName` longtext,
  `documentNumber` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_documentnumber`
--

INSERT INTO `adm_documentnumber` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `moduleName`, `documentName`, `sequenceName`, `documentNumber`) VALUES
('05d65d74-9f8c-44fd-9a03-1cdc577f9ef3', 0, '20190704053537709setup', 'todo.Staff.STAFF001', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'todo', 'Staff', 'STAFF001', '1');

-- --------------------------------------------------------

--
-- Table structure for table `adm_importexport`
--

CREATE TABLE `adm_importexport` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `mode` varchar(10) DEFAULT NULL,
  `moduleName` varchar(100) DEFAULT NULL,
  `documentName` longtext,
  `importFileAbsolutePath` longtext,
  `importFileName` varchar(200) DEFAULT NULL,
  `exportFileAbsolutePath` longtext,
  `advancedMode` bit(1) DEFAULT NULL,
  `columnTitlesOnly` bit(1) DEFAULT NULL,
  `fileContainsHeaders` bit(1) DEFAULT NULL,
  `rollbackErrors` varchar(16) DEFAULT NULL,
  `loadType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_importexportcolumn`
--

CREATE TABLE `adm_importexportcolumn` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `bizOrdinal` int(11) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `columnName` varchar(100) DEFAULT NULL,
  `bindingName` varchar(100) DEFAULT NULL,
  `bindingExpression` varchar(200) DEFAULT NULL,
  `loadAction` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_job`
--

CREATE TABLE `adm_job` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `displayName` varchar(100) DEFAULT NULL,
  `percentComplete` int(11) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `log` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_jobschedule`
--

CREATE TABLE `adm_jobschedule` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `jobName` varchar(100) DEFAULT NULL,
  `cronExpression` varchar(128) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `runAs_id` varchar(36) DEFAULT NULL,
  `disabled` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_securitygroup`
--

CREATE TABLE `adm_securitygroup` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_securitygroup`
--

INSERT INTO `adm_securitygroup` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `name`, `description`) VALUES
('08fac62b-1876-4e4b-89b7-b06d0145ca92', 0, '20190707070510864setup', 'Project Manager', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Project Manager', 'Todo Application - Project Manager'),
('a4b7e639-0d10-463d-a992-570a56761f0c', 0, '20190707072319938setup', 'Project Member', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Project Member', 'Todo Application - Project Member'),
('c9015806-7943-4319-9791-d6c2bae6ebe5', 0, '20190707070728612setup', 'Staff Manager', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'Staff Manager', 'Todo Application - Staff Manager');

-- --------------------------------------------------------

--
-- Table structure for table `adm_securitygrouprole`
--

CREATE TABLE `adm_securitygrouprole` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `roleName` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_securitygrouprole`
--

INSERT INTO `adm_securitygrouprole` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `parent_id`, `roleName`) VALUES
('01cb9134-e617-4388-b50e-3d011c02104c', 0, '20190707070728612setup', 'Admin - BasicUser (General access to the administration module)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'c9015806-7943-4319-9791-d6c2bae6ebe5', 'admin.BasicUser'),
('2bd06b0c-8547-43ee-8cd5-4cee1f7e10b4', 0, '20190707072319938setup', 'Admin - BasicUser (General access to the administration module)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'a4b7e639-0d10-463d-a992-570a56761f0c', 'admin.BasicUser'),
('616f6f33-e317-47c5-a0ea-6db3a70d1f5a', 0, '20190707072319938setup', 'Todo Module - ProjectMember (Project Member - who are not able to create pro...)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'a4b7e639-0d10-463d-a992-570a56761f0c', 'todo.ProjectMember'),
('9c6d3ab7-7fb2-4320-9322-11e37da0a8af', 0, '20190707070510864setup', 'Admin - BasicUser (General access to the administration module)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', '08fac62b-1876-4e4b-89b7-b06d0145ca92', 'admin.BasicUser'),
('a5a3b2b0-d98c-4e12-ae0b-fc243c85a7df', 0, '20190707070728612setup', 'Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'c9015806-7943-4319-9791-d6c2bae6ebe5', 'todo.StaffManager'),
('e14ea62f-ccdc-4aa9-b456-8d34b33f64c7', 0, '20190707070510865setup', 'Todo Module - ProjectManager (Project Manager - who are able to manage projec...)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', '08fac62b-1876-4e4b-89b7-b06d0145ca92', 'todo.ProjectManager');

-- --------------------------------------------------------

--
-- Table structure for table `adm_securityuser`
--

CREATE TABLE `adm_securityuser` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `userName` varchar(254) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `createdDateTime` datetime DEFAULT NULL,
  `homeModule` varchar(30) DEFAULT NULL,
  `legacyId` varchar(100) DEFAULT NULL,
  `passwordExpired` bit(1) DEFAULT NULL,
  `passwordLastChanged` datetime DEFAULT NULL,
  `passwordResetToken` varchar(56) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `dataGroup_id` varchar(36) DEFAULT NULL,
  `inactive` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_securityuser`
--

INSERT INTO `adm_securityuser` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `userName`, `password`, `createdDateTime`, `homeModule`, `legacyId`, `passwordExpired`, `passwordLastChanged`, `passwordResetToken`, `contact_id`, `dataGroup_id`, `inactive`) VALUES
('40178471-4654-4789-818a-e76b31e3de79', 0, '20190707072124151setup', 'francesst - Frances Strickland (person) (m) (06) 5389 4625', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'francesst', '{bcrypt}$2a$10$56FuDZ7fyMAzX0rx2xe1GOJ9mCSe5fdHP6Kik6seCyjqNdOyeDrhW', '2019-07-07 07:20:06', NULL, NULL, NULL, NULL, NULL, 'c547a986-0da4-4058-8b53-ff2daf554739', NULL, NULL),
('5cba2014-6d89-43b5-a810-554a31c711b0', 1, '20190707072539876setup', 'camdensan - Camden Sanchez (person) (m) (04) 1170 9137', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'camdensan', '{bcrypt}$2a$10$g7rjo1FrEkxJDEy1cPS8IuaI2rUin8J/qnrSib5.JK1gMzMz5d3DC', '2019-07-07 07:24:43', NULL, NULL, b'0', NULL, NULL, '4314d577-2e43-4fe4-aa07-8541d31c094e', NULL, b'0'),
('8934bef5-5d96-458a-bed3-21b9d3d20730', 1, '20190707072706425setup', 'merrillho - Merrill Holmes (person) (m) (03) 6195 7749', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'merrillho', '{bcrypt}$2a$10$Ytjn9u/VVZ9urA2KDp4/xezivAytMSguBcPK9AWLjJjGPZG77svZW', '2019-07-07 07:26:06', NULL, NULL, b'0', NULL, NULL, 'e5fbdf57-4b05-4a1a-913a-4efc2885e064', NULL, b'0'),
('8e16b7e5-8e5f-40d7-9034-baf0d540fc00', 0, '20190707071938569setup', 'daviscarr - Davis Carr (person) (m) (06) 5871 3564', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'daviscarr', '{bcrypt}$2a$10$BaUwm0DA6QWNlO/PDUq2oOhGncsrNhFp9rPhUiOCLEppVRug0dELO', '2019-07-07 07:11:46', NULL, NULL, NULL, NULL, NULL, '20e851d8-2e85-4312-8de9-176d068dfe3b', NULL, NULL),
('b340f8c3-84d1-4593-86f1-e7ef483cadb8', 1, '20190707073012702setup', 'codylogan - Cody Logan (person) (m) (09) 3475 1500', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'codylogan', '{bcrypt}$2a$10$44aDUpmNaAAuxCfOYibiYez6j.mqhWT5oftNtJzWULPExh9LZHfri', '2019-07-07 07:29:13', NULL, NULL, b'0', NULL, NULL, '47217da5-fee8-4564-96bb-c98ee9e317d1', NULL, b'0'),
('bd03831c-9e44-40a6-bdde-fd5da2286042', 2, '20190802051353942setup', 'adriablev - Adria Blevins a (person) (m) (06) 7653 7772', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'adriablev', '{bcrypt}$2a$10$dErdUAg3yGEvGI9NDQs5K.1orMEhpmDjYPy41wckh02ZKOhd9S9TW', '2019-07-07 07:28:19', NULL, NULL, b'0', NULL, NULL, '931afefe-ab16-4ed6-9ad4-72856f2150dc', NULL, b'0'),
('c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd', 1, '20190707073107109setup', 'waynemcgu - Wayne Mcguire (person) (m) (05) 3219 6151', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'waynemcgu', '{bcrypt}$2a$10$obe0jberQWCqOQ/nSf0D8eRpzemZCPWREKWkGwmH.9N.G2YRJSQra', '2019-07-07 07:30:16', NULL, NULL, b'0', NULL, NULL, '86dfe1a5-faa8-4212-af17-09281fd584df', NULL, b'0'),
('d1dd3528-a9d1-4886-809f-d42c857f9825', 1, '20190707072806052setup', 'chastityc - Chastity Cunningham (person) (m) (06) 5031 9633', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'chastityc', '{bcrypt}$2a$10$3L/XiJzTvy4NvP9N7rFxYuSXIMQjP66dIQGQ2NdN3d0ADOruUfm5a', '2019-07-07 07:27:14', NULL, NULL, b'0', NULL, NULL, 'c16c17b3-df7c-4f70-9939-7896c526636f', NULL, b'0'),
('db32a46d-2328-4646-8245-961cc03151fd', 2, '20190708052405001setup', 'setup - setup (person) (m) 0973366628', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '{bcrypt}$2a$10$2oBQ7V8Wg49vGJCmv6D1N.hpKNB9yITNu6Ncgi3OFL6/EYL/lVZVe', '2019-06-10 06:02:53', NULL, NULL, b'0', '2019-07-04 05:08:55', NULL, 'b26d3a08-797a-4085-b9b8-e7fd41914f08', NULL, b'0'),
('f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 1, '20190707072435961setup', 'stewartma - Stewart Mann (person) (m) (02) 5002 1351', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'stewartma', '{bcrypt}$2a$10$sbAMy5zEiiQ/.h7nHf7DGeJTbBbI5YmfNTQUgTNqJlM8818VKorgG', '2019-07-07 07:23:39', NULL, NULL, b'0', NULL, NULL, '0badc510-a4c9-4e37-8e05-a67af43356c5', NULL, b'0'),
('fe6057e9-da55-4934-9c67-1d044698f0cf', 1, '20190707073225805setup', 'barclaywa - Barclay Waters (person) (m) (01) 4430 7719', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'barclaywa', '{bcrypt}$2a$10$l8QIxECKzsgDNEeZqFFYWOxu53SqVWF/7W3tmuR2JUTTOnjOaj.Qa', '2019-07-07 07:31:20', NULL, NULL, b'0', NULL, NULL, '9c58c6c8-147c-416c-91bc-f96b93f3647d', NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `adm_securityuserrole`
--

CREATE TABLE `adm_securityuserrole` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `roleName` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_securityuserrole`
--

INSERT INTO `adm_securityuserrole` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `parent_id`, `roleName`) VALUES
('0496e551-f692-4922-ae00-4ea597d5506a', 0, '20190610060253916setup', 'Admin - JobMaintainer (Maintain Jobs)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.JobMaintainer'),
('084f7aed-2b66-46e0-bce7-77153ea35bb2', 0, '20190610060253913setup', 'Admin - AuditManager (Manage the activity audit log)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.AuditManager'),
('0a3e3414-aef1-4389-af75-70b199febb06', 0, '20190610060253912setup', 'Admin - Anonymous (Access anonymous (not logged in) public features)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.Anonymous'),
('3e3ee25a-a97f-4d20-9eaf-16dd9c04514f', 0, '20190610060253914setup', 'Admin - BasicUser (General access to the administration module)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.BasicUser'),
('657632fe-7a49-40c9-888e-30f292c51a34', 0, '20190610060253914setup', 'Admin - ContactManager (Manage contact details and interactions)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.ContactManager'),
('7a592dbd-b3df-45ff-90ad-64f83c79f283', 0, '20190610060253914setup', 'Admin - ContactViewer (View-only access to contact details)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.ContactViewer'),
('aa26ee75-f558-44b0-a882-ea4579bf3c3b', 0, '20190704050855988setup', 'Todo Module - StaffManager (Staff Manager - who are able to manage Staffs)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'todo.StaffManager'),
('aee7955b-1634-43e8-8e76-c86bbcea85ee', 0, '20190610060253915setup', 'Admin - DevOps (Generate Skyve designs and metadata and adminis...)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.DevOps'),
('b7789185-67e2-495d-8f89-73ae56172444', 0, '20190610060253917setup', 'Admin - SecurityAdministrator (Allows administration of Users and Groups)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.SecurityAdministrator'),
('bd4ba674-80f6-4e82-90ee-9472ade57d2b', 0, '20190704050855988setup', 'Todo Module - ProjectManager (Project Manager - who are able to manage projec...)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'todo.ProjectManager'),
('d73efb9f-8241-403a-8f3f-05c3fa45e2bd', 0, '20190704050855988setup', 'Todo Module - ProjectMember (Project Member - who are not able to create pro...)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'todo.ProjectMember'),
('fa24b2ad-ba06-40ad-a8d5-865e7c6f31bf', 0, '20190610060253913setup', 'Admin - AppUser (Manage own contact details and password)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.AppUser'),
('fcde1be6-ecb6-4db8-8e88-fe0d4a923364', 0, '20190610060253917setup', 'Admin - ViewUser (View-only access to the administration module)', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'db32a46d-2328-4646-8245-961cc03151fd', 'admin.ViewUser');

-- --------------------------------------------------------

--
-- Table structure for table `adm_securityuser_groups`
--

CREATE TABLE `adm_securityuser_groups` (
  `owner_id` varchar(36) DEFAULT NULL,
  `element_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_securityuser_groups`
--

INSERT INTO `adm_securityuser_groups` (`owner_id`, `element_id`) VALUES
('8e16b7e5-8e5f-40d7-9034-baf0d540fc00', '08fac62b-1876-4e4b-89b7-b06d0145ca92'),
('40178471-4654-4789-818a-e76b31e3de79', 'c9015806-7943-4319-9791-d6c2bae6ebe5'),
('f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'a4b7e639-0d10-463d-a992-570a56761f0c'),
('5cba2014-6d89-43b5-a810-554a31c711b0', 'a4b7e639-0d10-463d-a992-570a56761f0c'),
('8934bef5-5d96-458a-bed3-21b9d3d20730', 'a4b7e639-0d10-463d-a992-570a56761f0c'),
('d1dd3528-a9d1-4886-809f-d42c857f9825', 'a4b7e639-0d10-463d-a992-570a56761f0c'),
('bd03831c-9e44-40a6-bdde-fd5da2286042', '08fac62b-1876-4e4b-89b7-b06d0145ca92'),
('b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'c9015806-7943-4319-9791-d6c2bae6ebe5'),
('c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd', 'a4b7e639-0d10-463d-a992-570a56761f0c'),
('fe6057e9-da55-4934-9c67-1d044698f0cf', 'a4b7e639-0d10-463d-a992-570a56761f0c');

-- --------------------------------------------------------

--
-- Table structure for table `adm_snapshot`
--

CREATE TABLE `adm_snapshot` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `moduleName` varchar(100) DEFAULT NULL,
  `queryName` varchar(100) DEFAULT NULL,
  `name` longtext,
  `snapshot` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_subscription`
--

CREATE TABLE `adm_subscription` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `communication_id` varchar(36) DEFAULT NULL,
  `receiverIdentifier` varchar(254) DEFAULT NULL,
  `declined` bit(1) DEFAULT NULL,
  `formatType` varchar(5) DEFAULT NULL,
  `preferredReceiverIdentifier` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_tag`
--

CREATE TABLE `adm_tag` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `name` longtext,
  `visible` bit(1) DEFAULT NULL,
  `uploadModuleName` longtext,
  `uploadDocumentName` longtext,
  `attributeName` longtext,
  `fileHasHeaders` bit(1) DEFAULT NULL,
  `filterOperator` varchar(8) DEFAULT NULL,
  `filterAction` varchar(5) DEFAULT NULL,
  `actionModuleName` longtext,
  `actionDocumentName` longtext,
  `unTagSuccessful` bit(1) DEFAULT NULL,
  `notification` bit(1) DEFAULT NULL,
  `filterColumn` int(11) DEFAULT NULL,
  `documentCondition` longtext,
  `documentAction` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_tagged`
--

CREATE TABLE `adm_tagged` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `taggedModule` varchar(30) DEFAULT NULL,
  `taggedDocument` varchar(30) DEFAULT NULL,
  `taggedBizId` varchar(36) DEFAULT NULL,
  `tag_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adm_userloginrecord`
--

CREATE TABLE `adm_userloginrecord` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `userName` varchar(254) DEFAULT NULL,
  `loginDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_userloginrecord`
--

INSERT INTO `adm_userloginrecord` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `userName`, `loginDateTime`) VALUES
('06b99104-26c3-4ebf-9481-d85639b595ce', 0, '20190711054417997setup', 'setup @ 11-Jul-2019 05:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-11 05:44:17'),
('06e5aea2-ba41-4ccb-9f4f-7383e46edfb0', 0, '20190807054132031setup', 'setup @ 07-Aug-2019 05:41', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-07 05:41:32'),
('072be83c-30df-4407-9050-a32e6571a5ca', 0, '20190806212021579setup', 'setup @ 06-Aug-2019 21:20', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 21:20:21'),
('115ba985-0ab4-4be5-ade7-0a4477ff8c6c', 0, '20190706050139185setup', 'setup @ 06-Jul-2019 05:01', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-06 05:01:39'),
('145f1399-7876-4ec4-b891-82daac5e1c82', 0, '20190802050705628setup', 'setup @ 02-Aug-2019 05:07', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-02 05:07:05'),
('158b812b-d478-491a-bb23-a001a13a4f0b', 0, '20190802054645412setup', 'setup @ 02-Aug-2019 05:46', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-02 05:46:45'),
('18451f1e-807f-4c94-bb30-b469b1ffe928', 0, '20190705053519188setup', 'setup @ 05-Jul-2019 05:35', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-05 05:35:19'),
('21de7653-c5dd-49f5-a881-44f997d0f5a9', 0, '20190704054736214setup', 'setup @ 04-Jul-2019 05:47', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:47:36'),
('2279b42c-bd98-4949-8842-0f2f28edcbcc', 0, '20190807213649565setup', 'setup @ 07-Aug-2019 21:36', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-07 21:36:49'),
('23f3d05e-6612-4052-ba8e-39a9cd90402f', 0, '20190708061410044setup', 'setup @ 08-Jul-2019 06:14', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-08 06:14:10'),
('36459062-e577-4695-b495-b52cbbe5d1ab', 0, '20190704050553634setup', 'setup @ 04-Jul-2019 05:05', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:05:53'),
('3a94ec26-2aa8-4394-b981-70d5ac29d248', 0, '20190708062520251setup', 'setup @ 08-Jul-2019 06:25', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-08 06:25:20'),
('490716cd-72cf-423f-8a29-b8dddbb9e5f1', 0, '20190806052121760setup', 'setup @ 06-Aug-2019 05:21', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 05:21:21'),
('4e735da9-fabd-4cc3-9b89-2fb163ff9f01', 0, '20190708060842481setup', 'setup @ 08-Jul-2019 06:08', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-08 06:08:42'),
('51ceea60-211d-4770-b88a-95004b86dc3d', 0, '20190809061806482stewartma', 'stewartma @ 09-Aug-2019 06:18', 'ezmasy', NULL, NULL, 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma', '2019-08-09 06:18:06'),
('584576ed-3aea-44ae-a411-521f30d21e75', 0, '20190710052727871setup', 'setup @ 10-Jul-2019 05:27', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-10 05:27:27'),
('591c6c26-9907-4b0c-b21a-8fbb331aff9a', 0, '20190706070842688setup', 'setup @ 06-Jul-2019 07:08', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-06 07:08:42'),
('5d8a6899-741f-465c-a3d5-a3cf03426ae7', 0, '20190801055436797setup', 'setup @ 01-Aug-2019 05:54', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-01 05:54:36'),
('5e4a106f-3a00-49e6-835c-2f0b06fffc3f', 0, '20190807214628418barclaywa', 'barclaywa @ 07-Aug-2019 21:46', 'ezmasy', NULL, NULL, 'fe6057e9-da55-4934-9c67-1d044698f0cf', 'barclaywa', '2019-08-07 21:46:28'),
('5eee50f2-39fc-42f3-8ffb-2ab4daadd2d5', 0, '20190731051550441setup', 'setup @ 31-Jul-2019 05:15', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-31 05:15:50'),
('67a1ca10-ee9f-40f4-a49b-348b21b8d234', 0, '20190710044051935setup', 'setup @ 10-Jul-2019 04:40', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-10 04:40:51'),
('67a26800-8777-4eea-b6f5-5dbfe13d8bfa', 0, '20190802045804404setup', 'setup @ 02-Aug-2019 04:58', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-02 04:58:04'),
('69eff307-6d3f-4fc8-8af9-2468a36ec4ba', 0, '20190809061824495setup', 'setup @ 09-Aug-2019 06:18', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-09 06:18:24'),
('6b199ef8-b4a5-4627-bd44-e1d29103c5d2', 0, '20190704050913843setup', 'setup @ 04-Jul-2019 05:09', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:09:13'),
('76697ea7-10be-43b7-a848-55158fd65b93', 0, '20190709054658836setup', 'setup @ 09-Jul-2019 05:46', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-09 05:46:58'),
('78ea5954-44c9-49cf-a182-f3d2401d2763', 0, '20190805225330639setup', 'setup @ 05-Aug-2019 22:53', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-05 22:53:30'),
('7c911fa0-f7ed-4d9e-99a3-ac36c7ec2a3c', 0, '20190709052448100setup', 'setup @ 09-Jul-2019 05:24', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-09 05:24:48'),
('7e18a986-4800-4b8e-aab6-3cedafc1ac31', 0, '20190807053741447setup', 'setup @ 07-Aug-2019 05:37', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-07 05:37:41'),
('852cdd67-8805-401b-a3bc-7a9c52810586', 0, '20190706184224991setup', 'setup @ 06-Jul-2019 18:42', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-06 18:42:24'),
('870f1aa4-0b8c-4120-b700-3d2c18ebaa4d', 0, '20190709044119551setup', 'setup @ 09-Jul-2019 04:41', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-09 04:41:19'),
('878c831d-1ba0-4bdf-8375-b82d0ff22956', 0, '20190704045926900setup', 'setup @ 04-Jul-2019 04:59', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 04:59:26'),
('88bb048d-c07d-445c-b195-014264174657', 0, '20190709052016367setup', 'setup @ 09-Jul-2019 05:20', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-09 05:20:16'),
('8a36e93c-ac8d-4bcb-8a01-c4b9c0dd4354', 0, '20190802062237195setup', 'setup @ 02-Aug-2019 06:22', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-02 06:22:37'),
('8ab875c1-998b-4678-92b3-443fbe87af07', 0, '20190710045459575setup', 'setup @ 10-Jul-2019 04:54', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-10 04:54:59'),
('8bc5e8ae-0510-4f69-a1c6-8b3e04c108fd', 0, '20190806051629375setup', 'setup @ 06-Aug-2019 05:16', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 05:16:29'),
('8c1e5614-7340-4c22-83fe-8e53eaa03d24', 0, '20190707064014842setup', 'setup @ 07-Jul-2019 06:40', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-07 06:40:14'),
('90a57013-a27d-4439-a16d-ed7032585839', 0, '20190809051733610setup', 'setup @ 09-Aug-2019 05:17', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-09 05:17:33'),
('926a6532-88b2-473f-bef5-7336aa4b1d56', 0, '20190730043818434setup', 'setup @ 30-Jul-2019 04:38', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-30 04:38:18'),
('a046258f-cc88-49f3-b6a5-0d34b99f1740', 0, '20190807060951072setup', 'setup @ 07-Aug-2019 06:09', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-07 06:09:51'),
('a0a35536-8895-48cc-9ea9-fe1a655e06bd', 0, '20190711044846954setup', 'setup @ 11-Jul-2019 04:48', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-11 04:48:46'),
('a92e06e2-264c-4f7f-acdb-4a6206c0c39c', 0, '20190710052235372setup', 'setup @ 10-Jul-2019 05:22', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-10 05:22:35'),
('ad49804f-d5fa-4347-9889-f8e5c32d2714', 0, '20190805215400243setup', 'setup @ 05-Aug-2019 21:54', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-05 21:54:00'),
('afa7360c-a7d3-4169-b966-17948ded744f', 0, '20190704054112258setup', 'setup @ 04-Jul-2019 05:41', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:41:12'),
('b42674df-d4dd-4644-9746-8c276476b91c', 0, '20190710043453464setup', 'setup @ 10-Jul-2019 04:34', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-10 04:34:53'),
('b43f094c-2d77-4cfc-abb9-3c58f7eb2ed3', 0, '20190806045550298setup', 'setup @ 06-Aug-2019 04:55', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 04:55:50'),
('b4cb8ab3-b758-44b0-8fa5-257071bd9e7f', 0, '20190708052854190setup', 'setup @ 08-Jul-2019 05:28', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-08 05:28:54'),
('b6eb18c7-fdb2-4cd5-a09a-39cb0c94f48e', 0, '20190801063119396setup', 'setup @ 01-Aug-2019 06:31', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-01 06:31:19'),
('c0120637-8ffa-4ba9-a4a1-f0b0d7590dc7', 0, '20190711054741895setup', 'setup @ 11-Jul-2019 05:47', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-11 05:47:41'),
('c13bb3aa-3a47-46ae-87e5-74423c834531', 0, '20190807052517234setup', 'setup @ 07-Aug-2019 05:25', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-07 05:25:17'),
('c51fd074-ca3f-4265-a814-49fb52fec5dc', 0, '20190809054427662stewartma', 'stewartma @ 09-Aug-2019 05:44', 'ezmasy', NULL, NULL, 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma', '2019-08-09 05:44:27'),
('c709e903-13e1-4ee7-8901-7cdd415aadff', 0, '20190809061838847stewartma', 'stewartma @ 09-Aug-2019 06:18', 'ezmasy', NULL, NULL, 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma', '2019-08-09 06:18:38'),
('ccccac7e-1a46-4a77-be1a-9555d4a06692', 0, '20190704053315863setup', 'setup @ 04-Jul-2019 05:33', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:33:15'),
('d0baf1c9-5aad-490d-91bb-198b5500ae5c', 0, '20190708052525179francesst', 'francesst @ 08-Jul-2019 05:25', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'francesst', '2019-07-08 05:25:25'),
('d0f5e6a2-e2b7-4bb9-b134-662b996db179', 0, '20190806053053001setup', 'setup @ 06-Aug-2019 05:30', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 05:30:52'),
('d8589728-6668-41c0-9660-d98dc401d444', 0, '20190806052901551setup', 'setup @ 06-Aug-2019 05:29', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-06 05:29:01'),
('d8b1cc1c-1506-4f2d-a306-cd5db9c4b3cb', 0, '20190809061104702stewartma', 'stewartma @ 09-Aug-2019 06:11', 'ezmasy', NULL, NULL, 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma', '2019-08-09 06:11:04'),
('dde987ca-3181-4e9e-b740-1edf6640be1a', 0, '20190610060351484setup', 'setup @ 10-Jun-2019 06:03', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-06-10 06:03:51'),
('e7a0fc1b-87e8-4a47-9fc5-1b84a1e3758c', 0, '20190730055705349setup', 'setup @ 30-Jul-2019 05:57', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-30 05:57:05'),
('e8fe120d-fe6d-466b-9248-e600e9a73b52', 0, '20190708052334189setup', 'setup @ 08-Jul-2019 05:23', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-08 05:23:34'),
('eeb86e97-c969-4c11-a745-a3902850b647', 0, '20190709043840926setup', 'setup @ 09-Jul-2019 04:38', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-09 04:38:40'),
('f2aa3513-aa83-4415-b46e-8662a99440c8', 0, '20190704054412283setup', 'setup @ 04-Jul-2019 05:44', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-04 05:44:12'),
('f51a77f2-a70b-44fe-a4c3-e55fc6d66e45', 0, '20190809061737431setup', 'setup @ 09-Aug-2019 06:17', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-09 06:17:37'),
('fb65f036-2757-4085-8cbc-a1f5a4211ad6', 0, '20190711044516568setup', 'setup @ 11-Jul-2019 04:45', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-07-11 04:45:16'),
('fc312c8b-47d5-473f-b2cd-49604fb0e2d8', 0, '20190807214533409codylogan', 'codylogan @ 07-Aug-2019 21:45', 'ezmasy', NULL, NULL, 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'codylogan', '2019-08-07 21:45:33'),
('fe5f3394-c8f8-44e1-b094-1b35c7ec68fd', 0, '20190809061003921setup', 'setup @ 09-Aug-2019 06:10', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', '2019-08-09 06:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `adm_usermonthlyhits`
--

CREATE TABLE `adm_usermonthlyhits` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `userName` varchar(254) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `numberOfHits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm_usermonthlyhits`
--

INSERT INTO `adm_usermonthlyhits` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `userName`, `year`, `month`, `numberOfHits`) VALUES
('0c80fb6e-4e81-4aec-9541-7ee5a6d92141', 0, '20190807214534194codylogan', 'bizKey', 'ezmasy', NULL, NULL, 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'codylogan', 2019, 8, 4),
('13261c3e-ef65-4022-ad06-a5e941c6db39', 0, '20190809054441288stewartma', 'bizKey', 'ezmasy', NULL, NULL, 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'stewartma', 2019, 8, 20),
('3a9924cc-46f9-4700-b172-dfe4dbabdca1', 0, '20190704045929371setup', 'bizKey', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', 2019, 7, 626),
('51448ecd-e430-43cd-a8f5-0c77123a1d86', 0, '20190801055439478setup', 'bizKey', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', 2019, 8, 260),
('8eac1f1d-1e39-4101-b986-99ed5624dfc1', 0, '20190610060353596setup', 'bizKey', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'setup', 2019, 6, 38),
('b0f192f8-3a95-49fd-b126-de14d29d221c', 0, '20190708052530495francesst', 'bizKey', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'francesst', 2019, 7, 51),
('fe80f478-e63d-427e-8443-c12c5d843da8', 0, '20190807214652286barclaywa', 'bizKey', 'ezmasy', NULL, NULL, 'fe6057e9-da55-4934-9c67-1d044698f0cf', 'barclaywa', 2019, 8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `adm_usertoken`
--

CREATE TABLE `adm_usertoken` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `userName` longtext,
  `series` varchar(64) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `todo_project`
--

CREATE TABLE `todo_project` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `projectCode` varchar(50) DEFAULT NULL,
  `projectName` varchar(100) DEFAULT NULL,
  `projectDescription` longtext,
  `projectOwner_id` varchar(36) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `projectManager_id` varchar(36) DEFAULT NULL,
  `projectCoordinator_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo_project`
--

INSERT INTO `todo_project` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `projectCode`, `projectName`, `projectDescription`, `projectOwner_id`, `startDate`, `endDate`, `projectManager_id`, `projectCoordinator_id`) VALUES
('3ea7796e-1809-4e74-b82f-03ab56d7fe18', 0, '20190709045934537setup', 'PRJ002 - SCM System for Robert Valentine', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'PRJ002', 'SCM System for Robert Valentine', 'Robert Valentine is a supply chain company. They are mainly provide electric device.\r\nThey need a SCM system to help them to easier manage their sales and purchase activities as well as manage Customers and Vendors dictionary.', '719f1953-ec1d-40f5-a4a2-27ff15514abe', '2019-05-01', '2019-09-30', 'efb2915c-2ce2-46a7-9b11-7f2245cdff98', 'df4b7098-f192-40fa-ac9c-0249221cc5c9'),
('8d67bac7-1bdf-47d5-a431-69eb28c7c287', 0, '20190709045625531setup', 'PRJ001 - Custom Web Application for Montana', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'PRJ001', 'Custom Web Application for Montana', 'Create Custom Web Application for Montana.\r\nThe web application will include HRM and CRM modules', '7fb0e417-771e-4892-ad8f-eb45dc05cc7b', '2019-03-01', '2019-08-01', 'cf1eb33a-1856-40d5-9f32-8b69e3eea261', '2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5');

-- --------------------------------------------------------

--
-- Table structure for table `todo_staff`
--

CREATE TABLE `todo_staff` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `socialTitle` varchar(3) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `idCardNo` varchar(20) DEFAULT NULL,
  `issuedDate` date DEFAULT NULL,
  `expiredDate` date DEFAULT NULL,
  `bio` longtext,
  `dept` varchar(50) DEFAULT NULL,
  `bu` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `staffLocation` geometry DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo_staff`
--

INSERT INTO `todo_staff` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `user_id`, `socialTitle`, `firstName`, `lastName`, `dateOfBirth`, `idCardNo`, `issuedDate`, `expiredDate`, `bio`, `dept`, `bu`, `jobTitle`, `startDate`, `staffLocation`) VALUES
('2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5', 1, '20190805215551899setup', 'Barclay Waters', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'fe6057e9-da55-4934-9c67-1d044698f0cf', 'mr', NULL, NULL, '1991-02-15', '091238712837', '2009-03-15', '2029-03-15', 'Beer expert. Certified zombie practitioner. Creator. Twitter fanatic. Reader. Food fan. Friendly writer. Entrepreneur.', 'IT', 'Software Engineer', 'Senior Programmer', '2018-06-01', '\0\0\0\0\0\0\0\0\0\0\0\0\0@™LY\'nZ@;ðI5@@™L¹NnZ@[/Œøe\05@@™Ly$oZ@=´,÷P\05@@™LY5oZ@ÁÔ45@@™LY\'nZ@;ðI5@'),
('4ae180a3-0f95-4f0c-bb8c-f990d2564a91', 0, '20190708054555507francesst', 'Merrill Holmes', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', '8934bef5-5d96-458a-bed3-21b9d3d20730', 'ms', NULL, NULL, '1992-02-28', '90191279378', '2009-06-14', '2024-06-14', 'Tv maven. Passionate bacon evangelist. Travel fanatic. Social media geek. Coffee guru. Beer buff. Hardcore twitter fanatic.', 'IT', 'Software Engineer', 'Tester', '2015-05-05', NULL),
('74896a53-4ccb-4db0-aded-92f1724733d8', 0, '20190708054328464francesst', 'Frances Strickland', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', '40178471-4654-4789-818a-e76b31e3de79', 'ms', NULL, NULL, '1992-01-25', '12039217328', '2009-05-14', '2023-05-14', 'Music maven. Typical beer fanatic. Creator. Freelance zombie advocate. Hardcore explorer', 'HRM', 'HRM', 'Staff Manager', '2015-01-01', NULL),
('754ff0e7-967f-45cc-b1ea-57706a51acf4', 0, '20190708053919154francesst', 'Cody Logan', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'b340f8c3-84d1-4593-86f1-e7ef483cadb8', 'mr', NULL, NULL, '1986-03-05', '1019231782', '2001-09-08', '2021-09-08', 'Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst.', 'HRM', 'HRM', 'Staff Manager', '2016-01-02', NULL),
('b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9', 0, '20190708053422095francesst', 'Camden Sanchez', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', '5cba2014-6d89-43b5-a810-554a31c711b0', 'ms', NULL, NULL, '1991-06-15', '018937128', '2008-04-15', '2020-04-15', 'Incurable zombie trailblazer. Future teen idol. Creator. Web maven. Writer. Unapologetic organizer.', 'IT', 'Tester', 'Software Tester', '2018-05-05', NULL),
('cf1eb33a-1856-40d5-9f32-8b69e3eea261', 1, '20190802051353928setup', 'Adria Blevins a', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'bd03831c-9e44-40a6-bdde-fd5da2286042', 'mr', NULL, NULL, '1990-01-20', '01912383712', '2010-08-20', '2020-08-20', 'Analyst. Evil gamer. Infuriatingly humble internet geek. Passionate music scholar. Avid beer nerd.', 'IT', 'Software Engineering', 'Junior Programmer', '2018-01-01', NULL),
('df4b7098-f192-40fa-ac9c-0249221cc5c9', 0, '20190708054755338francesst', 'Stewart Mann', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'f5aeb24d-c2a6-4405-909f-a64fc7ebc955', 'mr', NULL, NULL, '1994-01-01', '01290389712', '2011-09-08', '2026-09-08', 'Award-winning alcohol evangelist. Passionate explorer. Evil music ninja. Introvert. Devoted twitter guru. Hardcore analyst', 'IT', 'Software Engineer', 'Junior Engineer', '2017-06-02', NULL),
('e71ec74d-6fbf-4507-8d0e-12b203fc4edc', 0, '20190708053644591francesst', 'Chastity Cunningham', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'd1dd3528-a9d1-4886-809f-d42c857f9825', 'ms', NULL, NULL, '1990-02-02', '01293128321', '2008-05-15', '2020-05-15', 'Analyst. Communicator. Problem solver. Subtly charming reader. Student. Unapologetic food fanatic. Proud explorer.', 'IT', 'Software Engineer', 'Business Analysis', '2017-07-05', NULL),
('efb2915c-2ce2-46a7-9b11-7f2245cdff98', 0, '20190708054140782francesst', 'Davis Carr', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', '8e16b7e5-8e5f-40d7-9034-baf0d540fc00', 'mr', NULL, NULL, '1989-01-22', '1203921378', '2008-05-25', '2020-05-25', 'Pop culture enthusiast. Unable to type with boxing gloves on. Analyst. Student. Explorer.', 'IT', 'Software Engineer', 'Project Manager', '2008-12-01', NULL),
('f10ce0a9-9c82-4820-825a-64de61bd6fdb', 0, '20190708054940894francesst', 'Wayne Mcguire', 'ezmasy', NULL, NULL, '40178471-4654-4789-818a-e76b31e3de79', 'c60f8a90-bcdb-4dc8-89a1-d7cd050fafdd', 'ms', NULL, NULL, '1994-07-16', '01209387123', '2012-02-12', '2027-02-12', 'Analyst. Communicator. Problem solver. Subtly charming reader. Student. Unapologetic food fanatic. Proud explorer', 'IT', 'Software Engineer', 'Business Analysis', '2016-07-27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todo_todo`
--

CREATE TABLE `todo_todo` (
  `bizId` varchar(36) NOT NULL,
  `bizVersion` int(11) NOT NULL,
  `bizLock` longtext NOT NULL,
  `bizKey` longtext NOT NULL,
  `bizCustomer` varchar(50) NOT NULL,
  `bizFlagComment` longtext,
  `bizDataGroupId` varchar(36) DEFAULT NULL,
  `bizUserId` varchar(36) NOT NULL,
  `taskID` varchar(20) DEFAULT NULL,
  `priorityLevel` varchar(3) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `createdBy_id` varchar(36) DEFAULT NULL,
  `recordedDateTime` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `targetDate` datetime DEFAULT NULL,
  `actualStartDate` datetime DEFAULT NULL,
  `actualFinishDate` datetime DEFAULT NULL,
  `taskStatus` varchar(10) DEFAULT NULL,
  `taskDescription` longtext,
  `assignTo_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo_todo`
--

INSERT INTO `todo_todo` (`bizId`, `bizVersion`, `bizLock`, `bizKey`, `bizCustomer`, `bizFlagComment`, `bizDataGroupId`, `bizUserId`, `taskID`, `priorityLevel`, `project_id`, `createdBy_id`, `recordedDateTime`, `startDate`, `targetDate`, `actualStartDate`, `actualFinishDate`, `taskStatus`, `taskDescription`, `assignTo_id`) VALUES
('3af64ce9-79ad-4e85-85d5-6835665d2e2c', 1, '20190710045942855setup', 'TSK-10001', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'TSK-10001', 'med', '8d67bac7-1bdf-47d5-a431-69eb28c7c287', '2d5ac8f3-2a0c-4f74-81d0-eee6b35663f5', '2019-03-05 08:15:00', '2019-03-05 08:30:00', '2019-03-06 17:00:00', '2019-03-05 09:45:00', '2019-03-06 17:00:00', 'defined', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vehicula mi sed massa tempus, sed euismod neque porttitor. Proin sit amet pretium eros. Sed malesuada rhoncus iaculis. Etiam at arcu ex.', 'b4489b9a-b607-4b2b-9ccf-e89b3a6d33f9'),
('9895ea8c-a31b-495f-b593-dc88a30ca1b3', 0, '20190710050248253setup', 'TSK-10002', 'ezmasy', NULL, NULL, 'db32a46d-2328-4646-8245-961cc03151fd', 'TSK-10002', 'urg', '3ea7796e-1809-4e74-b82f-03ab56d7fe18', 'df4b7098-f192-40fa-ac9c-0249221cc5c9', '2019-05-02 09:00:00', '2019-05-02 09:00:00', '2019-05-03 17:00:00', '2019-05-02 09:45:00', '2019-05-03 17:00:00', 'assign', 'Fusce vestibulum lacus ut magna malesuada, ac sagittis mi euismod. Curabitur dolor lorem, vulputate in dapibus tincidunt, mattis vel augue. Nulla ex mi, accumsan eget efficitur quis, molestie ac quam. Cras felis odio, aliquet blandit ipsum ac, volutpat viverra mi.', 'e71ec74d-6fbf-4507-8d0e-12b203fc4edc');

-- --------------------------------------------------------

--
-- Table structure for table `todo_todo_staff`
--

CREATE TABLE `todo_todo_staff` (
  `owner_id` varchar(36) DEFAULT NULL,
  `element_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_audit`
--
ALTER TABLE `adm_audit`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_auditBizId` (`auditBizId`),
  ADD KEY `IDX_millis` (`millis`);

--
-- Indexes for table `adm_communication`
--
ALTER TABLE `adm_communication`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_template` (`template_id`);

--
-- Indexes for table `adm_communicationtemplate`
--
ALTER TABLE `adm_communicationtemplate`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_configuration`
--
ALTER TABLE `adm_configuration`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_userSelfRegistrationGroup` (`userSelfRegistrationGroup_id`);

--
-- Indexes for table `adm_contact`
--
ALTER TABLE `adm_contact`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_datagroup`
--
ALTER TABLE `adm_datagroup`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_datamaintenance`
--
ALTER TABLE `adm_datamaintenance`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_auditUser` (`auditUser_id`);

--
-- Indexes for table `adm_documentnumber`
--
ALTER TABLE `adm_documentnumber`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_importexport`
--
ALTER TABLE `adm_importexport`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_importexportcolumn`
--
ALTER TABLE `adm_importexportcolumn`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_parent` (`parent_id`);

--
-- Indexes for table `adm_job`
--
ALTER TABLE `adm_job`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_jobschedule`
--
ALTER TABLE `adm_jobschedule`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_runAs` (`runAs_id`);

--
-- Indexes for table `adm_securitygroup`
--
ALTER TABLE `adm_securitygroup`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_securitygrouprole`
--
ALTER TABLE `adm_securitygrouprole`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_parent` (`parent_id`);

--
-- Indexes for table `adm_securityuser`
--
ALTER TABLE `adm_securityuser`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_contact` (`contact_id`),
  ADD KEY `IDX_dataGroup` (`dataGroup_id`);

--
-- Indexes for table `adm_securityuserrole`
--
ALTER TABLE `adm_securityuserrole`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_parent` (`parent_id`);

--
-- Indexes for table `adm_securityuser_groups`
--
ALTER TABLE `adm_securityuser_groups`
  ADD KEY `IDX_owner_id` (`owner_id`),
  ADD KEY `IDX_element_id` (`element_id`);

--
-- Indexes for table `adm_snapshot`
--
ALTER TABLE `adm_snapshot`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_subscription`
--
ALTER TABLE `adm_subscription`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_communication` (`communication_id`);

--
-- Indexes for table `adm_tag`
--
ALTER TABLE `adm_tag`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_tagged`
--
ALTER TABLE `adm_tagged`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_taggedBizId` (`taggedBizId`),
  ADD KEY `IDX_tag` (`tag_id`);

--
-- Indexes for table `adm_userloginrecord`
--
ALTER TABLE `adm_userloginrecord`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_usermonthlyhits`
--
ALTER TABLE `adm_usermonthlyhits`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `adm_usertoken`
--
ALTER TABLE `adm_usertoken`
  ADD PRIMARY KEY (`bizId`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`);

--
-- Indexes for table `todo_project`
--
ALTER TABLE `todo_project`
  ADD PRIMARY KEY (`bizId`),
  ADD UNIQUE KEY `UK_mo9eyylr1e250kl61dmstbyfr` (`projectOwner_id`),
  ADD UNIQUE KEY `UK_236p7p24uua33c692d7858bi1` (`projectManager_id`),
  ADD UNIQUE KEY `UK_6rbdv2f93kph3sk4dodrnaw3y` (`projectCoordinator_id`),
  ADD UNIQUE KEY `UK_projectOwner` (`projectOwner_id`),
  ADD UNIQUE KEY `UK_projectManager` (`projectManager_id`),
  ADD UNIQUE KEY `UK_projectCoordinator` (`projectCoordinator_id`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_projectOwner` (`projectOwner_id`),
  ADD KEY `IDX_projectManager` (`projectManager_id`),
  ADD KEY `IDX_projectCoordinator` (`projectCoordinator_id`);

--
-- Indexes for table `todo_staff`
--
ALTER TABLE `todo_staff`
  ADD PRIMARY KEY (`bizId`),
  ADD UNIQUE KEY `UK_4tmow0f0qgtl1cv903j3wllv4` (`user_id`),
  ADD UNIQUE KEY `UK_user` (`user_id`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_user` (`user_id`);

--
-- Indexes for table `todo_todo`
--
ALTER TABLE `todo_todo`
  ADD PRIMARY KEY (`bizId`),
  ADD UNIQUE KEY `UK_dcdjhlsk1q2pbj7hn7gb21e8i` (`project_id`),
  ADD UNIQUE KEY `UK_dhmjfrxkt4195t333naulj921` (`createdBy_id`),
  ADD UNIQUE KEY `UK_project` (`project_id`),
  ADD UNIQUE KEY `UK_createdBy` (`createdBy_id`),
  ADD UNIQUE KEY `UK_h6osju1020q3rrakxx2aif3m6` (`assignTo_id`),
  ADD UNIQUE KEY `UK_assignTo` (`assignTo_id`),
  ADD KEY `IDX_bizCustomer` (`bizCustomer`),
  ADD KEY `IDX_bizUserId` (`bizUserId`),
  ADD KEY `IDX_project` (`project_id`),
  ADD KEY `IDX_createdBy` (`createdBy_id`),
  ADD KEY `IDX_assignTo` (`assignTo_id`);

--
-- Indexes for table `todo_todo_staff`
--
ALTER TABLE `todo_todo_staff`
  ADD KEY `IDX_owner_id` (`owner_id`),
  ADD KEY `IDX_element_id` (`element_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adm_communication`
--
ALTER TABLE `adm_communication`
  ADD CONSTRAINT `FK_ADM_Communication_template` FOREIGN KEY (`template_id`) REFERENCES `adm_communicationtemplate` (`bizId`);

--
-- Constraints for table `adm_configuration`
--
ALTER TABLE `adm_configuration`
  ADD CONSTRAINT `FK_ADM_Configuration_userSelfRegistrationGroup` FOREIGN KEY (`userSelfRegistrationGroup_id`) REFERENCES `adm_securitygroup` (`bizId`);

--
-- Constraints for table `adm_datamaintenance`
--
ALTER TABLE `adm_datamaintenance`
  ADD CONSTRAINT `FK_ADM_DataMaintenance_auditUser` FOREIGN KEY (`auditUser_id`) REFERENCES `adm_securityuser` (`bizId`);

--
-- Constraints for table `adm_importexportcolumn`
--
ALTER TABLE `adm_importexportcolumn`
  ADD CONSTRAINT `FK_ADM_ImportExportColumn_parent` FOREIGN KEY (`parent_id`) REFERENCES `adm_importexport` (`bizId`);

--
-- Constraints for table `adm_jobschedule`
--
ALTER TABLE `adm_jobschedule`
  ADD CONSTRAINT `FK_ADM_JobSchedule_runAs` FOREIGN KEY (`runAs_id`) REFERENCES `adm_securityuser` (`bizId`);

--
-- Constraints for table `adm_securitygrouprole`
--
ALTER TABLE `adm_securitygrouprole`
  ADD CONSTRAINT `FK_ADM_SecurityGroupRole_parent` FOREIGN KEY (`parent_id`) REFERENCES `adm_securitygroup` (`bizId`);

--
-- Constraints for table `adm_securityuser`
--
ALTER TABLE `adm_securityuser`
  ADD CONSTRAINT `FK_ADM_SecurityUser_contact` FOREIGN KEY (`contact_id`) REFERENCES `adm_contact` (`bizId`),
  ADD CONSTRAINT `FK_ADM_SecurityUser_dataGroup` FOREIGN KEY (`dataGroup_id`) REFERENCES `adm_datagroup` (`bizId`);

--
-- Constraints for table `adm_securityuserrole`
--
ALTER TABLE `adm_securityuserrole`
  ADD CONSTRAINT `FK_ADM_SecurityUserRole_parent` FOREIGN KEY (`parent_id`) REFERENCES `adm_securityuser` (`bizId`);

--
-- Constraints for table `adm_securityuser_groups`
--
ALTER TABLE `adm_securityuser_groups`
  ADD CONSTRAINT `FK_ADM_SecurityUser_groups_element_id` FOREIGN KEY (`element_id`) REFERENCES `adm_securitygroup` (`bizId`),
  ADD CONSTRAINT `FK_ADM_SecurityUser_groups_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `adm_securityuser` (`bizId`);

--
-- Constraints for table `adm_subscription`
--
ALTER TABLE `adm_subscription`
  ADD CONSTRAINT `FK_ADM_Subscription_communication` FOREIGN KEY (`communication_id`) REFERENCES `adm_communication` (`bizId`);

--
-- Constraints for table `adm_tagged`
--
ALTER TABLE `adm_tagged`
  ADD CONSTRAINT `FK_ADM_Tagged_tag` FOREIGN KEY (`tag_id`) REFERENCES `adm_tag` (`bizId`);

--
-- Constraints for table `todo_project`
--
ALTER TABLE `todo_project`
  ADD CONSTRAINT `FK_Todo_Project_projectCoordinator` FOREIGN KEY (`projectCoordinator_id`) REFERENCES `todo_staff` (`bizId`),
  ADD CONSTRAINT `FK_Todo_Project_projectManager` FOREIGN KEY (`projectManager_id`) REFERENCES `todo_staff` (`bizId`),
  ADD CONSTRAINT `FK_Todo_Project_projectOwner` FOREIGN KEY (`projectOwner_id`) REFERENCES `adm_contact` (`bizId`);

--
-- Constraints for table `todo_staff`
--
ALTER TABLE `todo_staff`
  ADD CONSTRAINT `FK_Todo_Staff_user` FOREIGN KEY (`user_id`) REFERENCES `adm_securityuser` (`bizId`);

--
-- Constraints for table `todo_todo`
--
ALTER TABLE `todo_todo`
  ADD CONSTRAINT `FK_Todo_Todo_assignTo` FOREIGN KEY (`assignTo_id`) REFERENCES `todo_staff` (`bizId`),
  ADD CONSTRAINT `FK_Todo_Todo_createdBy` FOREIGN KEY (`createdBy_id`) REFERENCES `todo_staff` (`bizId`),
  ADD CONSTRAINT `FK_Todo_Todo_project` FOREIGN KEY (`project_id`) REFERENCES `todo_project` (`bizId`);

--
-- Constraints for table `todo_todo_staff`
--
ALTER TABLE `todo_todo_staff`
  ADD CONSTRAINT `FK_Todo_Todo_staff_element_id` FOREIGN KEY (`element_id`) REFERENCES `todo_staff` (`bizId`),
  ADD CONSTRAINT `FK_Todo_Todo_staff_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `todo_todo` (`bizId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

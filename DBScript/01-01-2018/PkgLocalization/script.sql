USE [master]
GO
/****** Object:  Database [PkgLocalization]    Script Date: 10-01-2018 23:04:31 ******/
CREATE DATABASE [PkgLocalization]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PkgLocalization', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PkgLocalization.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PkgLocalization_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PkgLocalization_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PkgLocalization] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PkgLocalization].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PkgLocalization] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PkgLocalization] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PkgLocalization] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PkgLocalization] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PkgLocalization] SET ARITHABORT OFF 
GO
ALTER DATABASE [PkgLocalization] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PkgLocalization] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PkgLocalization] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PkgLocalization] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PkgLocalization] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PkgLocalization] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PkgLocalization] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PkgLocalization] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PkgLocalization] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PkgLocalization] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PkgLocalization] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PkgLocalization] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PkgLocalization] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PkgLocalization] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PkgLocalization] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PkgLocalization] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PkgLocalization] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PkgLocalization] SET RECOVERY FULL 
GO
ALTER DATABASE [PkgLocalization] SET  MULTI_USER 
GO
ALTER DATABASE [PkgLocalization] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PkgLocalization] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PkgLocalization] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PkgLocalization] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PkgLocalization] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PkgLocalization', N'ON'
GO
USE [PkgLocalization]
GO
/****** Object:  Table [dbo].[Localization]    Script Date: 10-01-2018 23:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [varchar](3) NULL,
	[ResourceID] [varchar](200) NULL,
	[PageID] [int] NULL,
	[ResourceValue] [varchar](max) NULL,
	[Culture] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Localization] ON 

INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (1, N'SD', N'errorSelectApplication', 1, N'Please Select Application Name First.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (2, N'SD', N'AddLocalizationKey', 1, N'Add Localization', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (3, N'SD', N'AddLocalizationForAvailableResources', 1, N'Add localization for available resources', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (4, N'SD', N'SelectApplicationKey', 1, N'Select Application', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (5, N'SD', N'ApplicationNameKey', 1, N'Application Name', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (6, N'SD', N'SelectResourcePageKey', 1, N'Select Resource Page', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (7, N'SD', N'ResourcePageKey', 1, N'Resource Page', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (8, N'SD', N'NextStepKey', 1, N'Next Step', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (9, N'SD', N'SelectCultureLanguageKey', 1, N'Select Culture Language', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (10, N'SD', N'LanguageKey', 1, N'Language', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (11, N'sd', N'AddNewResources', 1, N'Add New Resource', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (12, N'sd', N'EnterResourceKey', 1, N'Enter Resource Key', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (13, N'sd', N'EnterResourceValue', 1, N'Enter Resource Value', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (14, N'sd', N'SubmitResource', 1, N'Add Resource', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (15, N'sd', N'errorSelectApplication', 1, N'Veuillez d''abord sélectionner le nom de l''application.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (16, N'sD', N'SelectApplicationKey', 1, N'Sélectionner une application', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (17, N'SD', N'NextStepKey', 1, N'L''étape suivante', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (18, N'SD', N'AddLocalizationForAvailableResources', 1, N'Ajouter la localisation pour les ressources disponibles', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (19, N'SD', N'SubmitResource', 1, N'Ajouter une ressource', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (20, N'SD', N'ApplicationNameKey', 1, N'Nom de l''application', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (21, N'SD', N'SelectResourcePageKey', 1, N'Sélectionner la page de ressources', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (22, N'SD', N'ResourcePageKey', 1, N'Page de ressources', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (23, N'SD', N'SelectCultureLanguageKey', 1, N'Sélectionnez la langue de la culture', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (24, N'SD', N'LanguageKey', 1, N'La langue', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (25, N'SD', N'AddNewResources', 1, N'Ajouter une nouvelle ressource', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (26, N'SD', N'EnterResourceKey', 1, N'Entrer la clé de ressource', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (27, N'SD', N'EnterResourceValue', 1, N'Entrer la valeur de ressource', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (28, N'SD', N'RecordExistKey', 1, N'Resource inserted successfully.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (29, N'SD', N'RecordExistKey', 1, N'Ressource insérée avec succès.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (30, N'SD', N'RecordAlreadyExist', 1, N'Resource already exist for this resource key and selected culture.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (31, N'SD', N'RecordAlreadyExist', 1, N'Une ressource existe déjà pour cette clé de ressource et cette culture sélectionnée.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (32, N'SD', N'errorSelectApplication', 2, N'Please Select these detail.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (33, N'SD', N'errorSelectApplication', 2, N'Please Select these detail.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (34, N'SD', N'UpdateAgentProfileKey', 2, N'Update Agent Profile', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (35, N'SD', N'UpdateAgentProfileKey', 2, N'Mettre à jour le profil', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (36, N'SD', N'UpdatedAgentProfileMessageKey', 2, N'Your profile has been udated successfully.Some Changes might reflect with login reattempt.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (37, N'SD', N'UpdatedAgentProfileMessageKey', 2, N'Votre profil a été mis à jour avec succès.Certains changements peuvent refléter avec le login reattempt.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (38, N'sd', N'AgentProfileKey', 2, N'Profil de l''agent', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (39, N'sd', N'AgentProfileKey', 2, N'Agent Profile', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (40, N'sd', N'AgentIDKey', 2, N'ID de l''agent', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (41, N'sd', N'AgentIDKey', 2, N'Agent Id', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (42, N'sd', N'FirstNameKey', 2, N'First Name', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (43, N'sd', N'FirstNameKey', 2, N'Prénom', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (44, N'SD', N'SelectedCultureKey', 1, N'You are adding ', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (45, N'SD', N'SelectedCultureKey', 1, N'Vous ajoutez', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (46, N'SD', N'CultureResourceKey', 1, N'  culture resources.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (47, N'SD', N'CultureResourceKey', 1, N'ressources culturelles', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (130, N'SD', N'errorSelectPageNameKey', 1, N'Please select page name for which you want to add resources.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (131, N'SD', N'errorSelectPageNameKey', 1, N'Veuillez sélectionner le nom de la page pour laquelle vous souhaitez ajouter des ressources.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (132, N'SD', N'errorSelectLanguageKey', 1, N'Please select language culture field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (133, N'SD', N'errorSelectLanguageKey', 1, N'Veuillez sélectionner un champ de culture linguistique.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (134, N'SD', N'errorSelectResourceIDKey', 1, N'S''il vous plaît remplir le champ id de la ressource.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (135, N'SD', N'errorSelectResourceIDKey', 1, N'Please fill resource id field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (136, N'SD', N'errorSelectResourceValueKey', 1, N'Please fill resource value field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (137, N'SD', N'errorSelectResourceValueKey', 1, N'Veuillez remplir le champ de valeur de ressource.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (138, N'SD', N'SaveNextKey', 3, N'Save & Next', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (139, N'SD', N'SaveNextKey', 3, N'Enregistrer et Suivant', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (140, N'SD', N'AddRemovePackageImagesKey', 3, N'Ajouter/supprimer des images de package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (141, N'SD', N'AddRemovePackageImagesKey', 3, N'Add/Remove Package Images', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (142, N'SD', N'ImageNameKey', 3, N'Nom de l''image', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (143, N'SD', N'ImageNameKey', 3, N'Image Name', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (144, N'SD', N'ImageTitleKey', 3, N'Image Title', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (145, N'SD', N'ImageTitleKey', 3, N'Titre de l''image', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (146, N'SD', N'AttachmentsKey', 3, N'Attachment (s)', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (147, N'SD', N'AttachmentsKey', 3, N'Attachment(s)', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (148, N'SD', N'UptoTwoMBKey', 3, N'up to 2 MB', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (149, N'SD', N'UptoTwoMBKey', 3, N'jusqu''à 2 Mo', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (150, N'SD', N'AddImageKey', 3, N'Ajouter une image', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (151, N'SD', N'AddImageKey', 3, N'Add Image', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (152, N'SD', N'RemoveImageKey', 3, N'Supprimer l''image', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (153, N'SD', N'RemoveImageKey', 3, N'Remove Image', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (154, N'SD', N'AllAttachmentsKey', 3, N'All attachments', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (155, N'SD', N'AllAttachmentsKey', 3, N'Toutes les pièces jointes', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (156, N'sd', N'AddPackageCostingKey', 3, N'Add Package Costing', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (157, N'sd', N'AddPackageCostingKey', 3, N'Ajouter le coût du package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (48, N'sd', N'FirstNameValidationKey', 2, N'Veuillez remplir le champ du prénom.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (49, N'sd', N'FirstNameValidationKey', 2, N'Please fill first name field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (50, N'sd', N'LastNameKey', 2, N'Nom de famille', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (51, N'sd', N'LastNameKey', 2, N'Last Name', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (52, N'sd', N'LastNameValidationKey', 2, N'Veuillez remplir le champ du nom de famille.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (53, N'sd', N'LastNameValidationKey', 2, N'Please fill last name field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (54, N'sd', N'EmailKey', 2, N'Email', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (55, N'sd', N'EmailKey', 2, N'Email', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (56, N'sd', N'EmailValidationKey', 2, N'S''il vous plaît remplir le champ email.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (57, N'sd', N'EmailValidationKey', 2, N'Please fill email field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (58, N'sd', N'PhoneKey', 2, N'Téléphone', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (59, N'sd', N'PhoneKey', 2, N'Phone', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (60, N'sd', N'PhoneValidationKey', 2, N'S''il vous plaît remplir le champ de téléphone.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (61, N'sd', N'PhoneValidationKey', 2, N'Please fill phone field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (62, N'sd', N'DashBoardLanguageKey', 2, N'DashBoard Language', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (63, N'sd', N'DashBoardLanguageKey', 2, N'DashBoard Language', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (64, N'sd', N'DashBoardLanguageValidationKey', 2, N'Veuillez sélectionner votre langue par défaut', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (65, N'sd', N'DashBoardLanguageValidationKey', 2, N'Please select your default language.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (66, N'sd', N'DefaultPageKey', 2, N'Page par défaut', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (67, N'sd', N'DefaultPageKey', 2, N'Default Page', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (68, N'sd', N'DefaultPageValidationKey', 2, N'Veuillez sélectionner la page d''accueil par défaut. Entrez N / A si vous ne voulez pas sélectionner.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (69, N'sd', N'DefaultPageValidationKey', 2, N'Please select default home page.Enter N/A if you do not want to select.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (70, N'sd', N'AddressKey', 2, N'Adresse', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (71, N'sd', N'AddressKey', 2, N'Address', N'en-US')
GO
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (72, N'sd', N'AddressValidationKey', 2, N'Veuillez sélectionner le champ d''adresse.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (73, N'sd', N'AddressValidationKey', 2, N'Please select address field.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (74, N'sd', N'CountryKey', 2, N'Pays', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (75, N'sd', N'CountryKey', 2, N'Country', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (76, N'sd', N'CountryValidationKey', 2, N'S''il vous plaît sélectionnez votre pays.', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (77, N'sd', N'CountryValidationKey', 2, N'Please select your country.', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (78, N'sd', N'UpdateKey', 2, N'Mettre à jour', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (79, N'sd', N'UpdateKey', 2, N'Update', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (80, N'SD', N'CreateNewPackageKey', 3, N'Create New Package', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (81, N'SD', N'CreateNewPackageKey', 3, N'Créer un nouveau package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (82, N'SD', N'AddBasicPackageDetailKey', 3, N'Ajouter les détails du package de base', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (83, N'SD', N'AddBasicPackageDetailKey', 3, N'Add Basic Package Details', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (84, N'SD', N'BasicPackageDetailKey', 3, N'Détails du forfait de base', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (85, N'SD', N'BasicPackageDetailKey', 3, N'Basic Package Details', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (86, N'SD', N'PackageCodeKey', 3, N'Code de l''emballage', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (87, N'SD', N'PackageCodeKey', 3, N'Package Code', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (88, N'SD', N'PackageNameKey', 3, N'Package Name', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (89, N'SD', N'PackageNameKey', 3, N'Nom du paquet', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (90, N'SD', N'LanguageKey', 3, N'La langue', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (91, N'SD', N'LanguageKey', 3, N'Language', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (92, N'SD', N'PackageTitleKey', 3, N'Titre du paquet', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (93, N'SD', N'PackageTitleKey', 3, N'Package Title', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (94, N'SD', N'NextStepKey', 3, N'L''étape suivante', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (95, N'SD', N'NextStepKey', 3, N'Next Step', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (96, N'SD', N'BasicPackageCreteriaKey', 3, N'Critères de base de l''emballage', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (97, N'SD', N'BasicPackageCreteriaKey', 3, N'Basic Package Criteria', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (98, N'SD', N'PackageMarketKey', 3, N'Marché des paquets', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (99, N'SD', N'PackageMarketKey', 3, N'Package Market', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (100, N'SD', N'SelectKey', 3, N'Sélectionner', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (101, N'SD', N'SelectKey', 3, N'Select', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (102, N'SD', N'DomesticKey', 3, N'National', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (103, N'SD', N'DomesticKey', 3, N'Domestic', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (104, N'SD', N'InternationalKey', 3, N'International', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (105, N'SD', N'InternationalKey', 3, N'International', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (106, N'sd', N'PackageSaleMarketKey', 3, N'Marché de vente de paquets', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (107, N'sd', N'PackageSaleMarketKey', 3, N'Package Sale Market', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (108, N'sd', N'PackageValidityStartDateKey', 3, N'Package Validity Start Date', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (109, N'sd', N'PackageValidityStartDateKey', 3, N'Validité du package Date de début', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (110, N'sd', N'PackageValidityEndDateKey', 3, N'Date de fin de validité du package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (111, N'sd', N'PackageValidityEndDateKey', 3, N'Package Validity End Date', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (112, N'sd', N'PackageBookingStartDateKey', 3, N'Date de début de réservation de package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (113, N'sd', N'PackageBookingStartDateKey', 3, N'Package Booking Start Date', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (114, N'sd', N'PackageBookingEndDateKey', 3, N'Package Booking End Date', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (115, N'sd', N'PackageBookingEndDateKey', 3, N'Date de fin de réservation de package', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (116, N'sd', N'PackageDurationKey', 3, N'Durée du paquet (* en jours)', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (117, N'sd', N'PackageDurationKey', 3, N'Package Duration(*In Days)', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (118, N'sd', N'ChildMinAgeKey', 3, N'Child Min Age', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (119, N'sd', N'ChildMinAgeKey', 3, N'Enfant Min Age', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (120, N'sd', N'ChildMaxAgeKey', 3, N'Child Max Age', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (121, N'sd', N'ChildMaxAgeKey', 3, N'Enfant Max Age', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (122, N'sd', N'PackageLastPaymentDueKey', 3, N'Paquet dernier paiement dû', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (123, N'sd', N'PackageLastPaymentDueKey', 3, N'Package Last Payment Due', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (124, N'sd', N'PackagePaymentCutOffKey', 3, N'Paquet Paiement CutOff Day', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (125, N'sd', N'PackagePaymentCutOffKey', 3, N'Package Payment CutOff Day', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (126, N'sd', N'DiscountOnFullPaymentKey', 3, N'Remise sur le paiement intégral (% en cas de pourcentage)', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (127, N'sd', N'DiscountOnFullPaymentKey', 3, N'Discount on Full Payment(% in case of percentage)', N'en-US')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (128, N'sd', N'PreviousStepKey', 3, N'Étape précédente', N'fr-FR')
INSERT [dbo].[Localization] ([ID], [CompanyID], [ResourceID], [PageID], [ResourceValue], [Culture]) VALUES (129, N'sd', N'PreviousStepKey', 3, N'Previous Step', N'en-US')
SET IDENTITY_INSERT [dbo].[Localization] OFF
/****** Object:  StoredProcedure [dbo].[FSP_GetDatabaseName]    Script Date: 10-01-2018 23:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[FSP_GetDatabaseName]
(
@CompanyID VarChar(2),
@DataBaseCommonName VARCHAR(100)
)
As

Begin
Select DatabaseName From AdminDB..DataBaseList Where CompanyID=@CompanyID and DataBaseCommonName=@DataBaseCommonName

END
GO
/****** Object:  StoredProcedure [dbo].[FSP_GetPageResources]    Script Date: 10-01-2018 23:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FSP_GetPageResources]
(
@CompanyID varchar(2),
@ApplicationName varchar(100),
@PageName varchar(100),
@Culture varchar(5)
)

AS
BEGIN
DECLARE @PageID as int
DECLARE @ApplicationID AS INT
SET @ApplicationID=(Select ApplicationID from CompanyAdmin_ERP_SD..ApplicAtionMaster WHERE ApplicationName=@ApplicationName)
SET @PageID=(Select PageID from CompanyAdmin_ERP_SD..PageMaster WHERE PageName=@PageName AND ApplicationID=@ApplicationID)
select ResourceID,ResourceValue FROM Localization WHERE PageID=@PageID AND CompanyID=@CompanyID AND Culture=@Culture

END
GO
/****** Object:  StoredProcedure [dbo].[FSP_GETResources]    Script Date: 10-01-2018 23:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[FSP_GETResources]
(
@CompanyID VARCHAR(3),
@PageID int,
@Culture VARCHAR(10)
)

AS

BEGIN

SELECT ResourceID,ResourceValue from Localization where CompanyID=@CompanyID and PageID=@PageID and Culture=@Culture
END
GO
/****** Object:  StoredProcedure [dbo].[FSP_InsertResources]    Script Date: 10-01-2018 23:04:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FSP_InsertResources]
(
@CompanyID VARCHAR(3),
@PageID int,
@ApplicationID INT,
@ResourceID VARCHAR(200),
@ResourceValue VARCHAR(MAX),
@Culture VARCHAR(10)
)

AS

BEGIN
IF (SELECT COUNT(*) FROM Localization WHERE ResourceID = @ResourceID and Culture=@Culture and CompanyID=@CompanyID and PageID=@PageID)>0--AND(DATEDIFF(MINUTE,@SESSIONDIFF,GETDATE())>@EXPIREMINUTE
BEGIN
Select 'false'
END
ELSE
Begin
INSERT INTO Localization(CompanyID,ResourceID,ResourceValue,Culture,PageID) values(@CompanyID,@ResourceID,@ResourceValue,@Culture,@PageID)

select 'true'
END
END




GO
USE [master]
GO
ALTER DATABASE [PkgLocalization] SET  READ_WRITE 
GO

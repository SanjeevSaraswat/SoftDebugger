USE [master]
GO
/****** Object:  Database [PackageModule_ERP_SD]    Script Date: 10-01-2018 23:03:45 ******/
CREATE DATABASE [PackageModule_ERP_SD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PackageModule_ERP_SD', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PackageModule_ERP_SD.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PackageModule_ERP_SD_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PackageModule_ERP_SD_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PackageModule_ERP_SD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PackageModule_ERP_SD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET RECOVERY FULL 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET  MULTI_USER 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PackageModule_ERP_SD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PackageModule_ERP_SD', N'ON'
GO
USE [PackageModule_ERP_SD]
GO
/****** Object:  Table [dbo].[PackageCriteria]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageCriteria](
	[PackageCode] [varchar](10) NULL,
	[PackageMarket] [varchar](10) NULL,
	[PackageSaleMarket] [varchar](10) NULL,
	[PackageValidityStartDate] [date] NULL,
	[PackageValidityEndDate] [date] NULL,
	[PackageBookingEndDate] [date] NULL,
	[PackageBookingStartDate] [date] NULL,
	[PackageDuration] [varchar](5) NULL,
	[ChildMinAge] [varchar](2) NULL,
	[ChildMaxAge] [varchar](2) NULL,
	[PackageLastPaymentDue] [int] NULL,
	[PackagePaymentCutOffDay] [int] NULL,
	[Discountonfullpayment] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageDetails]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageDetails](
	[CompanyID] [varchar](2) NULL,
	[PackageCode] [varchar](10) NOT NULL,
	[PackageName] [varchar](200) NULL,
	[PackageLanguage] [varchar](5) NULL,
	[PackageTitle] [varchar](200) NULL,
	[SupplierRef] [varchar](100) NULL,
	[PackageRemarks] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[PackageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageImages]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageImages](
	[CompanyID] [varchar](2) NULL,
	[PackageCode] [varchar](10) NULL,
	[PackageImageName] [varchar](200) NULL,
	[PackageImageTitle] [varchar](200) NULL,
	[PackageVirtualImage] BIT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageList]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageList](
	[CompanyID] [varchar](2) NULL,
	[PackageCode] [varchar](10) NOT NULL,
	[PackageName] [varchar](200) NULL,
	[PackageLanguage] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PackageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageValidDays]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageValidDays](
	[ValidonMonday] [varchar](5) NULL,
	[ValidonTuesday] [varchar](5) NULL,
	[ValidonWednesday] [varchar](5) NULL,
	[ValidonThursday] [varchar](5) NULL,
	[ValidonFriday] [varchar](5) NULL,
	[ValidonSaturday] [varchar](5) NULL,
	[ValidonSunday] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PkgProductList]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PkgProductList](
	[ProductCode] [varchar](5) NULL,
	[ProductName] [varchar](100) NULL,
	[CompanyID] [varchar](2) NULL,
	[LanguageCode] [varchar](5) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'1', N'DOM', N'DOM', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-16' AS Date), CAST(N'2017-12-29' AS Date), CAST(N'2018-01-12' AS Date), N'4', N'4', N'12', 3, 6, N'500')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'2', N'DOM', N'DOM', CAST(N'2017-12-15' AS Date), CAST(N'2017-12-22' AS Date), CAST(N'2017-12-21' AS Date), CAST(N'2017-12-29' AS Date), N'1', N'3', N'12', 3, 3, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'3', N'DOM', N'INT', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-15' AS Date), CAST(N'2017-12-12' AS Date), CAST(N'2017-12-02' AS Date), N'4', N'4', N'4', 4, 44, N'4')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'4', N'DOM', N'INT', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-15' AS Date), CAST(N'2017-12-10' AS Date), CAST(N'2017-12-13' AS Date), N'4', N'4', N'4', 4, 4, N'4')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'5', N'INT', N'DOM', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-15' AS Date), CAST(N'2017-12-22' AS Date), CAST(N'2017-12-13' AS Date), N'5', N'5', N'5', 5, 5, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'6', N'DOM', N'DOM', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-30' AS Date), CAST(N'2018-02-15' AS Date), CAST(N'2018-02-14' AS Date), N'4', N'4', N'4', 4, 4, N'4')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'7', N'DOM', N'DOM', CAST(N'2017-12-14' AS Date), CAST(N'2017-12-14' AS Date), CAST(N'2018-02-14' AS Date), CAST(N'2017-12-20' AS Date), N'5', N'4', N'12', 4, 2, N'4')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'8', N'INT', N'DOM', CAST(N'1900-01-01' AS Date), CAST(N'2017-12-15' AS Date), CAST(N'2018-02-08' AS Date), CAST(N'2018-01-05' AS Date), N'4', N'3', N'12', 3, 5, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'9', N'DOM', N'DOM', CAST(N'1900-01-01' AS Date), CAST(N'2018-01-11' AS Date), CAST(N'2017-12-29' AS Date), CAST(N'2017-12-23' AS Date), N'2', N'2', N'2', 2, 2, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'12', N'DOM', N'DOM', CAST(N'2018-01-19' AS Date), CAST(N'2018-01-25' AS Date), CAST(N'2018-01-18' AS Date), CAST(N'2018-01-27' AS Date), N'5', N'5', N'15', 5, 5, N'500')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'13', N'DOM', N'DOM', CAST(N'2018-01-19' AS Date), CAST(N'2018-01-18' AS Date), CAST(N'2018-01-12' AS Date), CAST(N'2018-01-27' AS Date), N'5', N'5', N'5', 55, 5, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'14', N'DOM', N'INT', CAST(N'2018-01-11' AS Date), CAST(N'2018-01-26' AS Date), CAST(N'2018-01-27' AS Date), CAST(N'2018-01-17' AS Date), N'5', N'5', N'5', 5, 5, N'5')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'10', N'DOM', N'DOM', CAST(N'2017-12-29' AS Date), CAST(N'2017-12-13' AS Date), CAST(N'2017-12-30' AS Date), CAST(N'2017-12-20' AS Date), N'3', N'3', N'6', 2, 2, N'2')
INSERT [dbo].[PackageCriteria] ([PackageCode], [PackageMarket], [PackageSaleMarket], [PackageValidityStartDate], [PackageValidityEndDate], [PackageBookingEndDate], [PackageBookingStartDate], [PackageDuration], [ChildMinAge], [ChildMaxAge], [PackageLastPaymentDue], [PackagePaymentCutOffDay], [Discountonfullpayment]) VALUES (N'11', N'DOM', N'DOM', CAST(N'2017-12-14' AS Date), CAST(N'2017-12-15' AS Date), CAST(N'2017-12-19' AS Date), CAST(N'2017-12-30' AS Date), N'4', N'4', N'4', 4, 4, N'6')
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'1', N'Dubai Tour', N'hi', N'Dubai Desert', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'10', N'Hawaii Tour', N'id', N'Hawaii Tour to Delhi', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'11', N'star', N'en', N'Star Plus', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'12', N'Dubai Desert', N'fr-FR', N'Dubai Desert Tour Exclusive', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'13', N'Morocco', N'mn', N'Morocco with Nihal Elazher', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'14', N'Johansberg Safari', N'en-US', N'Johansberg Safari', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'2', N'Dubai New', N'en', N'test', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'3', N'Mercy', N'en', N'Test', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'SD', N'4', N'Dubai', N'en', N'Dubai Tour', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'5', N'America', N'en', N'USA', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'6', N'Los Angeles', N'en', N'Los Angeles Tour', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'7', N'Las Vegas', N'fr', N'Las Vegas Tour', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'8', N'Mauristus', N'fr', N'Maurisus Frenchise', NULL, NULL)
INSERT [dbo].[PackageDetails] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage], [PackageTitle], [SupplierRef], [PackageRemarks]) VALUES (N'sd', N'9', N'Delhi', N'fr', N'Delhi University', NULL, NULL)
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'1', N'Dubai Burj Kgalifa', N'Dubai Burj Kgalifa')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'2', N'Test.png', N'Test')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'2', N'Test.png', N'Test')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'3', N'Test.jpg', N'TEst')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'3', N'Test.jpg', N'TEst')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'4', N'Dubai.png', N'Dubai')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'5', N'Dubai.png', N'Dubai Tour')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'5', N'Dubai Door.jpg', N'Dubai Tour Door')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'5', N'Dubai Door 2.jpg', N'Dubai Tour Door')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'5', N'Dubai Door 3.jpg', N'Dubai Tour Door')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'5', N'Dubai Door 4.png', N'Dubai Tour Door')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'6', N'Los Angeles.jpg', N'Los Angeles')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'7', N'Las Vegas.png', N'Las Vegas')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'8', N'Marutisus.jpg', N'Marutisus HoneyMoon')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'8', N'Sanjeev.png', N'Saraswat')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'12', N'Dubai Desert Tour.png', N'Dubai Desert Tour')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'12', N'Next to desert.png', N'tes')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'13', N'Morrocco.png', N'morocco')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'12', N'test.png', N'tets')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'SD', N'4', N'Dubai.jpg', N'Dubai')
INSERT [dbo].[PackageImages] ([CompanyID], [PackageCode], [PackageImageName], [PackageImageTitle]) VALUES (N'sd', N'9', N'Delhi.jpg', N'Delhi University')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'1', N'Dubai Tour', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'10', N'Hawaii Tour', N'id')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'11', N'star', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'12', N'Dubai Desert', N'fr-FR')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'13', N'Morocco', N'mn')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'14', N'Johansberg Safari', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'2', N'Dubai New', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'3', N'Mercy', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'SD', N'4', N'Dubai', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'5', N'America', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'6', N'Los Angeles', N'en-US')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'7', N'Las Vegas', N'fr-FR')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'8', N'Mauristus', N'fr-FR')
INSERT [dbo].[PackageList] ([CompanyID], [PackageCode], [PackageName], [PackageLanguage]) VALUES (N'sd', N'9', N'Delhi', N'fr-FR')
INSERT [dbo].[PkgProductList] ([ProductCode], [ProductName], [CompanyID], [LanguageCode], [Active]) VALUES (N'AIR', N'Flight', N'SD', N'en-US', 1)
INSERT [dbo].[PkgProductList] ([ProductCode], [ProductName], [CompanyID], [LanguageCode], [Active]) VALUES (N'BUS', N'Bus', N'SD', N'en-US', 1)
INSERT [dbo].[PkgProductList] ([ProductCode], [ProductName], [CompanyID], [LanguageCode], [Active]) VALUES (N'AIR', N'Vol', N'SD', N'fr-FR', 1)
INSERT [dbo].[PkgProductList] ([ProductCode], [ProductName], [CompanyID], [LanguageCode], [Active]) VALUES (N'BUS', N'Autobus', N'SD', N'fr-FR', 1)
ALTER TABLE [dbo].[PackageCriteria]  WITH CHECK ADD FOREIGN KEY([PackageCode])
REFERENCES [dbo].[PackageDetails] ([PackageCode])
GO
ALTER TABLE [dbo].[PackageImages]  WITH CHECK ADD FOREIGN KEY([PackageCode])
REFERENCES [dbo].[PackageList] ([PackageCode])
GO
/****** Object:  StoredProcedure [dbo].[FSP_GetAutocompleteList]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FSP_GetAutocompleteList]
(
@LanguageCode VARCHAR(5),
@CompanyID VARCHAR(2),
@Query VARCHAR(100)
)
As


BEGIN

Select PackageName , PackageCode from PackageList Where PackageLanguage=@LanguageCode and CompanyID=@CompanyID and PackageName Like '%'+@Query+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[FSP_GetAvailableProductForPackage]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[FSP_GetAvailableProductForPackage]
(
@CompanyID VARCHAR(2),
@TokenID VarChar(100)
)
As

Begin

DECLARE @CompanyCode as VARCHAR(2)

SET @CompanyCode=(Select CompanyID from CompanyAdmin_ERP_SD..Agent_Master WHERE Tokenid=@TokenID)


Select * From PkgProductList Where CompanyID=@CompanyCode and Active=1

END

GO
/****** Object:  StoredProcedure [dbo].[FSP_GetPackageDetails]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[FSP_GetPackageDetails]
(
@CompanyID VARCHAR(2),
@PackageCode varchar(10),
@PackageLanguage varchar(5)
)
As

Begin
IF (SELECT COUNT(*) FROM PackageList WHERE PackageCode = @PackageCode and CompanyID=@CompanyID)>0
BEGIN

SELECT PackageCode,PackageName,PackageLanguage,PackageTitle FROM PackageDetails AS BasicPackageDetails  WHERE PackageCode = @PackageCode and CompanyID=@CompanyID AND PackageLanguage=@PackageLanguage

SELECT PackageMarket,PackageSaleMarket,PackageValidityStartDate,PackageValidityEndDate,PackageBookingEndDate,PackageBookingStartDate,PackageDuration,ChildMinAge,ChildMaxAge,PackageLastPaymentDue,PackagePaymentCutOffDay,DiscountonFullPayment FROM PackageCriteria AS BasicPackageCreteria where PackageCode=@PackageCode 

SELECT CancellationPolicyText as CancellationPolicyText ,ViewFormat as ViewFormat  FROM PackageCancellationPolicy AS PackageCancellationPolicy where PackageCode=@PackageCode and CompanyID=@CompanyID
END

END
GO
/****** Object:  StoredProcedure [dbo].[FSP_InsertPackageDetails]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FSP_InsertPackageDetails]
(
@CompanyID VARCHAR(2),
@PackageCode varchar(10),
@PackageName varchar(200),
@PackageLanguage varchar(5),
@PackageTitle varchar(200),
@PackageMarket varchar(10),
@PackageSaleMarket varchar(10),
@PackageValidityStartDate date,
@PackageValidityEndDate date,
@PackageBookingStartDate date,
@PackageBookingEndDate date,
@PackageDuration varchar(5),
@ChildMinAge varchar(2),
@ChildMaxAge varchar(2),
@PackageLastPaymentDue int,
@PackagePaymentCutOffDay int,
@DiscountonFullPayment varchar(10)

)
As

Begin
IF (SELECT COUNT(*) FROM PackageList WHERE PackageCode = @PackageCode and CompanyID=@CompanyID)=0
BEGIN
INSERT INTO PackageList(PackageCode,PackageName,CompanyID,PackageLanguage) values(@PackageCode,@PackageName,@CompanyID,@PackageLanguage)
Insert INTO PackageDetails(CompanyID,PackageCode,PackageLanguage,PackageName,PackageTitle) Values (@CompanyID,@PackageCode,@PackageLanguage,@PackageName,@PackageTitle)

Insert Into PackageCriteria(PackageCode,PackageMarket,PackageSaleMarket,PackageValidityStartDate,PackageValidityEndDate,PackageBookingEndDate,PackageBookingStartDate,PackageDuration,ChildMinAge,ChildMaxAge,PackageLastPaymentDue,PackagePaymentCutOffDay,Discountonfullpayment) Values(@PackageCode,@PackageMarket,@PackageSaleMarket,@PackageValidityEndDate,@PackageValidityStartDate,@PackageBookingEndDate,@PackageBookingStartDate,@PackageDuration,@ChildMinAge,@ChildMaxAge,@PackageLastPaymentDue,@PackagePaymentCutOffDay,@Discountonfullpayment)
END
ELSE
BEGIN

UPDATE PackageList SET PackageName=@PackageName WHERE PackageCode=@PackageCode AND CompanyID=@CompanyID
UPDATE PackageDetails SET PackageTitle=@PackageTitle WHERE PackageCode=@PackageCode AND CompanyID=@CompanyID

UPDATE PackageCriteria SET PackageMarket=@PackageMarket,PackageSaleMarket=@PackageSaleMarket,PackageValidityStartDate=@PackageValidityStartDate,PackageValidityEndDate=@PackageValidityEndDate,PackageBookingEndDate=@PackageBookingEndDate,PackageBookingStartDate=@PackageBookingStartDate,PackageDuration=@PackageDuration,ChildMinAge=@ChildMinAge,ChildMaxAge=@ChildMaxAge,PackageLastPaymentDue=@PackageLastPaymentDue,PackagePaymentCutOffDay=@PackagePaymentCutOffDay,Discountonfullpayment=@Discountonfullpayment WHERE PackageCode=@PackageCode 

END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPackageCode]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPackageCode]
As Begin

select Count(*)+1 from PackageList

END

GO
/****** Object:  StoredProcedure [dbo].[GetPackageImages]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetPackageImages]
(
@PackageCode VARCHAR(10),

@CompanyID VARCHAR(2)
)

AS

BEGIN

Select  PackageImageName As Name,PackageImageTitle As TItle,PackageVirtualImage AS PackageVirtualImage from PackageImages Where CompanyID=@CompanyID and PAckageCode=@PackageCode

eND
GO
/****** Object:  StoredProcedure [dbo].[InsertPackageImages]    Script Date: 10-01-2018 23:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[InsertPackageImages]
(
@CompanyID VARCHAR(2),
@PackageCode VARCHAR(5),
@PackageImageName VARCHAR(200),
@PackageImageTitle VARCHAR(200)
)

As

Begin

INSERT INTO PackageImages(CompanyID,PackageCode,PackageImageName,PackageImageTitle,PackageVirtualImage) VALUES(@CompanyID,@PackageCode,@PackageImageName,@PackageImageTitle,0)

END
GO
USE [master]
GO
ALTER DATABASE [PackageModule_ERP_SD] SET  READ_WRITE 
GO


Create Table PackageCancellationPolicy
(
CompanyID VARCHAR(2),
PackageCode varchar(10),
CancellationPolicyText Varchar(MAX),
ViewFormat VARCHAR(20)

)


ALTER Procedure FSP_InsertCancellationPolicy

(
@CompanyID VARCHAR(3),
@PackageCode varchar(10),
@CancellationPolicyText Varchar(MAX),
@ViewFormat VARCHAR(20)='text/plain'
)

AS

BEGIN
IF (SELECT COUNT(*) FROM PackageList WHERE PackageCode = @PackageCode and CompanyID=@CompanyID)>0
BEGIN
IF (SELECT COUNT(*) FROM PackageCancellationPolicy WHERE PackageCode = @PackageCode and CompanyID=@CompanyID)=0
BEGIN
INSERT INTO PackageCancellationPolicy(CompanyID,PackageCode,CancellationPolicyText,ViewFormat) Values(@CompanyID,@PackageCode,@CancellationPolicyText,@ViewFormat)
END
ELSE
BEGIN
UPDATE PackageCancellationPolicy SET CancellationPolicyText=@CancellationPolicyText,ViewFormat=@ViewFormat Where CompanyID=@CompanyID and PackageCode=@PackageCode
END
END
ELSE
BEGIN
SELECT 'No Package exist.'
END
END




Create Procedure FSP_SetVirtualImage
(
@CompanyID VARCHAR(3),
@PackageCode VARCHAR(5),
@PackageImageName VARCHAR(100)
)
As

BEGIN
UPDATE PackageImages SET PackageVirtualImage=0 WHERE CompanyID=@CompanyID AND PackageCode=@PackageCode

UPDATE PackageImages SET PackageVirtualImage=1 WHERE CompanyID=@CompanyID AND PackageCode=@PackageCode AND PackageImageName=@PackageImageName

END


CREATE Procedure FSP_DeleteImage
(
@CompanyID VARCHAR(3),
@PackageCode VARCHAR(5),
@PackageImageName VARCHAR(100)
)
As

BEGIN
DELETE FROM  PackageImages  WHERE CompanyID=@CompanyID AND PackageCode=@PackageCode AND PackageImageName=@PackageImageName



END
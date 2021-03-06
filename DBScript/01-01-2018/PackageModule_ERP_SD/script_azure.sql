USE [master]
GO
/****** Object:  Database [PackageModule_ERP_SD]    Script Date: 16-01-2018 16:53:45 ******/
CREATE DATABASE [PackageModule_ERP_SD]
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
ALTER DATABASE [PackageModule_ERP_SD] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PackageModule_ERP_SD] SET READ_COMMITTED_SNAPSHOT ON 
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
USE [PackageModule_ERP_SD]
GO
/****** Object:  Table [dbo].[Agent_Master]    Script Date: 16-01-2018 16:53:45 ******/
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_Master](
	[AgentID] [int] NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[ISAdmin] [bit] NULL,
	[ISActive] [bit] NULL,
	[Password] [varchar](200) NULL,
	[TIMESTAMP] [varchar](100) NULL,
	[CompanyID] [varchar](10) NULL,
	[Tokenid] [varchar](100) NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageCriteria]    Script Date: 16-01-2018 16:53:45 ******/
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
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageDetails]    Script Date: 16-01-2018 16:53:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageImages]    Script Date: 16-01-2018 16:53:45 ******/
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
	[PackageImageTitle] [varchar](200) NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageList]    Script Date: 16-01-2018 16:53:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageValidDays]    Script Date: 16-01-2018 16:53:45 ******/
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
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PkgProductList]    Script Date: 16-01-2018 16:53:45 ******/
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
)

GO
SET ANSI_PADDING OFF
GO

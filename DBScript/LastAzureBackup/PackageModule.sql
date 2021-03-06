USE [master]
GO
/****** Object:  Database [PackageModule_ERP_SD]    Script Date: 28-06-2018 18:13:05 ******/
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
/****** Object:  Table [dbo].[Agent_Master]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ManagePackageFlightCosting]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManagePackageFlightCosting](
	[PackageCode] [varchar](5) NULL,
	[CompanyID] [varchar](2) NULL,
	[ProductType] [varchar](3) NULL,
	[DepartureDate] [date] NULL,
	[ArrivalDate] [date] NULL,
	[DepartureTime] [varchar](8) NULL,
	[ArrivalTime] [varchar](8) NULL,
	[AirportFrom] [varchar](3) NULL,
	[AirportTo] [varchar](3) NULL,
	[AdultPrice] [decimal](18, 0) NULL,
	[ChildPrice] [decimal](18, 0) NULL,
	[PriceCurrency] [varchar](3) NULL,
	[ROE] [decimal](18, 0) NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageCancellationPolicy]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageCancellationPolicy](
	[CompanyID] [varchar](2) NULL,
	[PackageCode] [varchar](10) NULL,
	[CancellationPolicyText] [varchar](max) NULL,
	[ViewFormat] [varchar](20) NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageCriteria]    Script Date: 28-06-2018 18:13:05 ******/
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
/****** Object:  Table [dbo].[PackageDetails]    Script Date: 28-06-2018 18:13:05 ******/
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
/****** Object:  Table [dbo].[PackageImages]    Script Date: 28-06-2018 18:13:05 ******/
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
	[PackageVirtualImage] [bit] NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageList]    Script Date: 28-06-2018 18:13:05 ******/
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
/****** Object:  Table [dbo].[PackageValidDays]    Script Date: 28-06-2018 18:13:05 ******/
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
/****** Object:  Table [dbo].[PkgHotelCosting]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PkgHotelCosting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PackageCode] [varchar](50) NULL,
	[HID] [int] NULL,
	[HotelName] [varchar](200) NULL,
	[HotelCityName] [varchar](200) NULL,
	[CompanyID] [varchar](3) NULL,
	[AdultCost] [money] NULL,
	[ChildCost] [money] NULL,
	[CurrencyCode] [varchar](3) NULL,
	[PackageLanguage] [varchar](5) NULL,
	[RoomType] [varchar](20) NULL
)

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PkgProductList]    Script Date: 28-06-2018 18:13:05 ******/
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
ALTER TABLE [dbo].[PackageCriteria]  WITH CHECK ADD FOREIGN KEY([PackageCode])
REFERENCES [dbo].[PackageDetails] ([PackageCode])
GO
/****** Object:  StoredProcedure [dbo].[FSP_DeleteImage]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[FSP_DeleteImage]
(
@CompanyID VARCHAR(3),
@PackageCode VARCHAR(5),
@PackageImageName VARCHAR(100)
)
As

BEGIN
DELETE FROM  PackageImages  WHERE CompanyID=@CompanyID AND PackageCode=@PackageCode AND PackageImageName=@PackageImageName



END

GO
/****** Object:  StoredProcedure [dbo].[FSP_deletePkgHotelCosting]    Script Date: 28-06-2018 18:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FSP_deletePkgHotelCosting]
(
@PackageCode VARCHAR(50),
@PackageLanguage VARCHAR(5),
@CompanyID VARCHAR(3)
)
As
BEGIN
DELETE FROM PkgHotelCosting WHERE PackageCode=@PackageCode AND PackageLanguage=@PackageLanguage AND CompanyID=@CompanyID
END

GO
/****** Object:  StoredProcedure [dbo].[FSP_GetAutocompleteList]    Script Date: 28-06-2018 18:13:06 ******/
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
/****** Object:  StoredProcedure [dbo].[FSP_GetAvailableProductForPackage]    Script Date: 28-06-2018 18:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[FSP_GetAvailableProductForPackage]
(
@CompanyID VARCHAR(2),
@LanguageCode VarChar(100)
)
As

Begin
Select * From PkgProductList Where CompanyID=@CompanyID and Active=1 AND LanguageCode=@LanguageCode

END

GO
/****** Object:  StoredProcedure [dbo].[FSP_GetPackageDetails]    Script Date: 28-06-2018 18:13:07 ******/
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

SELECT PackageMarket,PackageSaleMarket,PackageValidityStartDate,PackageValidityEndDate,PackageBookingEndDate,PackageBookingStartDate,PackageDuration,ChildMinAge,ChildMaxAge,PackageLastPaymentDue,PackagePaymentCutOffDay,DiscountonFullPayment FROM 
PackageCriteria AS BasicPackageCreteria where PackageCode=@PackageCode 


SELECT CancellationPolicyText as CancellationPolicyText ,ViewFormat as ViewFormat  FROM PackageCancellationPolicy AS PackageCancellationPolicy where PackageCode=@PackageCode and CompanyID=@CompanyID
END

END


GO
/****** Object:  StoredProcedure [dbo].[FSP_GetPkgHotelCosting]    Script Date: 28-06-2018 18:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FSP_GetPkgHotelCosting]
(
@PackageCode VARCHAR(50),
@PackageLanguage VARCHAR(5),
@CompanyID VARCHAR(3)
)
As
BEGIN
Select CurrencyCode AS Currency,AdultCost AS AdultCost,ChildCost AS ChildCost,RoomType As RoomType,HotelCityName AS HotelCityName,HotelName AS HotelName,HID as id,PackageLanguage AS PackageLanguage from PkgHotelCosting WHERE PackageCode=@PackageCode AND PackageLanguage=@PackageLanguage AND CompanyID=@CompanyID
END
GO
/****** Object:  StoredProcedure [dbo].[FSP_InsertCancellationPolicy]    Script Date: 28-06-2018 18:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[FSP_InsertCancellationPolicy]

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


GO
/****** Object:  StoredProcedure [dbo].[FSP_InsertPackageDetails]    Script Date: 28-06-2018 18:13:09 ******/
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
/****** Object:  StoredProcedure [dbo].[FSP_InsertPkgHotelCosting]    Script Date: 28-06-2018 18:13:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FSP_InsertPkgHotelCosting]
(
@PackageCode VARCHAR(50),
@HID INT,
@HotelName VARCHAR(200),
@HotelCityName VARCHAR(200),
@CompanyID Varchar(3),
@AdultCost Money,
@ChildCost Money,
@CurrencyCode Varchar(3),
@PackageLanguage VARCHAR(5),
@RoomType VARCHAR(20)
)

As 
BEGIN
INSERT INTO PkgHotelCosting(PackageCode,HID,HotelName,HotelCityName,CompanyID,AdultCost,ChildCost,CurrencyCode,PackageLanguage,RoomType) Values(@PackageCode,@HID,@HotelName,@HotelCityName,@CompanyID,@AdultCost,@ChildCost,@CurrencyCode,@PackageLanguage,@RoomType)
END

GO
/****** Object:  StoredProcedure [dbo].[FSP_SetVirtualImage]    Script Date: 28-06-2018 18:13:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[FSP_SetVirtualImage]
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

GO
/****** Object:  StoredProcedure [dbo].[GetPackageCode]    Script Date: 28-06-2018 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPackageCode]
As Begin

select Count(*)+1 from PackageList

END



GO
/****** Object:  StoredProcedure [dbo].[GetPackageImages]    Script Date: 28-06-2018 18:13:11 ******/
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

END

GO
/****** Object:  StoredProcedure [dbo].[InsertPackageImages]    Script Date: 28-06-2018 18:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[InsertPackageImages]
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

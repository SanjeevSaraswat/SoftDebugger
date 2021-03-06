USE [master]
GO
/****** Object:  Database [SoftdebuggerWebsite]    Script Date: 12/21/2017 22:03:03 ******/
CREATE DATABASE [SoftdebuggerWebsite] ON  PRIMARY 
( NAME = N'SoftdebuggerWebsite', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SoftdebuggerWebsite.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SoftdebuggerWebsite_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\SoftdebuggerWebsite_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SoftdebuggerWebsite] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SoftdebuggerWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ARITHABORT OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET AUTO_CLOSE ON
GO
ALTER DATABASE [SoftdebuggerWebsite] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SoftdebuggerWebsite] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SoftdebuggerWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SoftdebuggerWebsite] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET  ENABLE_BROKER
GO
ALTER DATABASE [SoftdebuggerWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SoftdebuggerWebsite] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SoftdebuggerWebsite] SET  READ_WRITE
GO
ALTER DATABASE [SoftdebuggerWebsite] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SoftdebuggerWebsite] SET  MULTI_USER
GO
ALTER DATABASE [SoftdebuggerWebsite] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SoftdebuggerWebsite] SET DB_CHAINING OFF
GO
USE [SoftdebuggerWebsite]
GO
/****** Object:  Table [dbo].[CUSTOMERENQUIRY]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMERENQUIRY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QUERYTYPE] [varchar](20) NULL,
	[NAME] [varchar](100) NULL,
	[EMAIL] [varchar](100) NULL,
	[MOBILE] [varchar](20) NULL,
	[ENQUIRY] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMERENQUIRY] ON
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (1, N'contact', N'sanjeev', N'Sanjeev02Saraswat@Yandex.com', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (2, N'contact', N'Raghwendra Singh', N'RaghwendraSingh10@gmail.com', N'8057424300', N'Test Sanjeev saraswat ,This app is running over IIS.')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (3, N'contact', N'Sanjeev Saraswat', N'Sanjeev02Saraswat@Yandex.Com', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (4, N'contact', N'Sanjeev Saraswat', N'Sanjeev02Saraswat@Yandex.Com', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (5, N'contact', N'Raghwendra Singh', N'RaghwendraSingh10@gmail.com', N'767866878', N'test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (7, N'contact', N'Sanjeev Saraswat', N'sanjeev02Saraswat@yandex.com', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (8, N'contact', N'Naresh Kumar', N'NARESH02071993@GMAIL.COM', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (9, N'contact', N'Sanjeev saraswat', N'Sanjeev02Saraswat@Yandex.com', N'8057424300', N'Test')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (10, N'contact', N'SANJEEV', N'SANJEEV02SARASWAT@YANDEX.COM', N'8057424300', N'TESTING')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (11, N'contact', N'sanjeev saraswat', N'sanjeev02saraswat@yandex.com', N'8057424300', N'testing')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (12, N'contact', N'Sanjeev ', N'sanjeev02Saraswat@yandex.com', N'8057424300', N'Test Email from SoftDebugger')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (13, N'contact', N'Sanjeev Saraswat', N'sanjeev02Saraswat@yandex.com', N'8057424300', N'est')
INSERT [dbo].[CUSTOMERENQUIRY] ([ID], [QUERYTYPE], [NAME], [EMAIL], [MOBILE], [ENQUIRY]) VALUES (6, N'contact', N'Sanjeev Saraswat', N'Sanjeev02Saraswat@Yandex.Com', N'8057424300', N'Test')
SET IDENTITY_INSERT [dbo].[CUSTOMERENQUIRY] OFF
/****** Object:  Table [dbo].[CompanyCulture]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompanyCulture](
	[CultureID] [int] IDENTITY(1,1) NOT NULL,
	[CultureName] [varchar](100) NULL,
	[CultureCode] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyCulture] ON
INSERT [dbo].[CompanyCulture] ([CultureID], [CultureName], [CultureCode]) VALUES (1, N'United States(English)', N'en-US')
INSERT [dbo].[CompanyCulture] ([CultureID], [CultureName], [CultureCode]) VALUES (2, N'Brazilian', N'pt-BR')
SET IDENTITY_INSERT [dbo].[CompanyCulture] OFF
/****** Object:  Table [dbo].[SMTP_DETAILS]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMTP_DETAILS](
	[mail_id] [int] IDENTITY(1,1) NOT NULL,
	[smtp_server] [varchar](100) NOT NULL,
	[smtp_user] [varchar](100) NOT NULL,
	[smtp_password] [varchar](100) NOT NULL,
	[SSL_TLS] [bit] NULL,
	[smtp_port] [int] NULL,
	[isActive] [bit] NULL,
	[application_name] [varchar](150) NULL,
	[mail_from] [varchar](100) NULL,
	[DisplayName] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SMTP_DETAILS] ON
INSERT [dbo].[SMTP_DETAILS] ([mail_id], [smtp_server], [smtp_user], [smtp_password], [SSL_TLS], [smtp_port], [isActive], [application_name], [mail_from], [DisplayName]) VALUES (1, N'smtp.gmail.com', N'amit.dwhfcl@gmail.com', N'Sumit@204215', 1, 587, 0, N'Softdebugger', N'amit.dwhfcl@gmail.com', N'SoftDebugger Team')
INSERT [dbo].[SMTP_DETAILS] ([mail_id], [smtp_server], [smtp_user], [smtp_password], [SSL_TLS], [smtp_port], [isActive], [application_name], [mail_from], [DisplayName]) VALUES (2, N'smtp.gmail.com', N'developer.softdebugger@gmail.com', N's0ftdebugger', 1, 587, 1, N'Softdebugger', N'developer.softdebugger@gmail.com', N'SoftDebugger Team')
INSERT [dbo].[SMTP_DETAILS] ([mail_id], [smtp_server], [smtp_user], [smtp_password], [SSL_TLS], [smtp_port], [isActive], [application_name], [mail_from], [DisplayName]) VALUES (3, N'smtp.gmail.com', N'Support@SoftDebugger.com', N'Amit@204215', 1, 587, 0, N'Softdebugger', N'Support@SoftDebugger.com', N'SoftDebugger Team')
SET IDENTITY_INSERT [dbo].[SMTP_DETAILS] OFF
/****** Object:  Table [dbo].[MAIL_TEMPLATE]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAIL_TEMPLATE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MAILTYPE] [varchar](50) NULL,
	[MAILSUBJECT] [varchar](max) NULL,
	[MAILBODY] [varchar](max) NULL,
	[LOGOURL] [varchar](100) NULL,
	[APPLICATIONNAME] [varchar](100) NULL,
	[From_address] [varchar](50) NULL,
	[CC_Address] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MAIL_TEMPLATE] ON
INSERT [dbo].[MAIL_TEMPLATE] ([ID], [MAILTYPE], [MAILSUBJECT], [MAILBODY], [LOGOURL], [APPLICATIONNAME], [From_address], [CC_Address]) VALUES (1, N'Contact', N'Cutomer Enquiry', N'<html>
<head>
<style type="text/css">
div, p, a, li, td {
	-webkit-text-size-adjust:none;
}
.ReadMsgBody {
	width: 100%;
	background-color: #d1d1d1;
}
.ExternalClass {
	width: 100%;
	background-color: #d1d1d1;
	line-height:100%;
}
body {
	width: 100%;
	height: 100%;
	background-color: #d1d1d1;
	margin:0;
	padding:0;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust:100%;
}
html {
	width: 100%;
}
img {
	-ms-interpolation-mode:bicubic;
}
table[class=full] {
	padding:0 !important;
	border:none !important;
}
table td img[class=imgresponsive] {
	width:100% !important;
	height:auto !important;
	display:block !important;
}
@media only screen and (max-width: 800px) {
body {
 width:auto!important;
}
table[class=full] {
 width:100%!important;
}
table[class=devicewidth] {
 width:100% !important;
 padding-left:20px !important;
 padding-right: 20px!important;
}
table td img.responsiveimg {
 width:100% !important;
 height:auto !important;
 display:block !important;
}
}
@media only screen and (max-width: 640px) {
table[class=devicewidth] {
 width:100% !important;
}
table[class=inner] {
 width:100%!important;
 text-align: center!important;
 clear: both;
}
table td a[class=top-button] {
 width:160px !important;
  font-size:14px !important;
 line-height:37px !important;
}
table td[class=readmore-button] {
 text-align:center !important;
}
table td[class=readmore-button] a {
 float:none !important;
 display:inline-block !important;
}
.hide {
 display:none !important;
}
table td[class=smallfont] {
 border:none !important;
 font-size:26px !important;
}
table td[class=sidespace] {
 width:10px !important;
}
}
 @media only screen and (max-width: 520px) {
}
@media only screen and (max-width: 480px) {

 table {
 border-collapse: collapse;
}
table td[class=template-img] img {
 width:100% !important;
 display:block !important;
}
}
@media only screen and (max-width: 320px) {
}
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="full">
  <tbody><tr>
    <td align="center"><table width="600" border="0" cellspacing="0" cellpadding="0" align="center" class="devicewidth">
        <tbody><tr>
          <td><table width="100%" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0" align="center" class="full" style="background-color:#ffffff;">
              <tbody><tr>
                <td height="23">&nbsp;</td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="23" class="sidespace">&nbsp;</td>
                      <td><table width="76%" border="0" cellspacing="0" cellpadding="0" align="left" class="inner" id="banner" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                          <tbody>
						  <tr><td><img src="https://4.downloader.disk.yandex.ru/preview/7406790c0fe271af3cc851e2172dc72cdca67c34b7c48dd0d08df0dd52cce1e9/inf/33Jr3Ua0Z_0VfnnL-WhbfiTPqRoQqkbFhWYiPJiauDJVDs0GAgIRMpqHn5UL9bSbAcK_csl8MVz0h8o7od380g%3D%3D?uid=0&filename=logo.JPG&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&tknv=v2&size=XXL&crop=0" height="100px" width="100px" /></td></tr>
						  <tr>
                            <td style="font:bold 27px Arial, Helvetica, sans-serif; border-right:1px solid #dbdbdb;" class="smallfont">Thanks for visiting us!!!</td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                          </tr>
                        </tbody></table>
                        <table width="22%" border="0" cellspacing="0" cellpadding="0" align="right" class="inner" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                          <tbody><tr>
                            <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/9en7r4vlfj/facebook.png" width="32" height="atuo" alt="Social Media"></a></td>
                            <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/65o3uh8bin/google.png" width="32" height="atuo" alt="Social Media"></a></td>
                            <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/20siidaq0f/twitter.png" width="32" height="atuo" alt="Social Media"></a></td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                            <td height="20">&nbsp;</td>
                            <td height="20">&nbsp;</td>
                          </tr>
                        </tbody></table></td>
                      <td width="23" class="sidespace">&nbsp;</td>
                    </tr>
                  </tbody></table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="3.33%" class="sidespace">&nbsp;</td>
                      <td width="93.33%"><img class="imgresponsive" src="https://s1.postimg.org/8iqqbol9u7/banner.jpg" width="554" height="atuo" alt="Banner"></td>
                      <td width="3.33%" class="sidespace">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td height="20">&nbsp;</td>
                      <td height="20">&nbsp;</td>
                    </tr>
                  </tbody></table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="23" class="sidespace">&nbsp;</td>
                               <td  style="font:14px/19px Arial, Helvetica, sans-serif; color:#333332;" class="smallfont">
                                 
                             Dear Team,<br/>
                                   &nbsp;&nbsp;Thanks for droping an enquiry to us.Our sales team soon keep in touch with you.
						</td>
                      <td width="23" class="sidespace">&nbsp;</td>

                    </tr>
                    <tr>
                      <td height="16">&nbsp;</td>
                      <td height="16">&nbsp;</td>
                      <td height="16">&nbsp;</td>
                    </tr>
                  </tbody></table></td>
              </tr>
              <tr>
                <td style="border-bottom:1px solid #dbdbdb;">&nbsp;</td>
              </tr>
            </tbody></table></td>
        </tr>
      </tbody></table></td>
  </tr>
</tbody></table>
</body>
</html>', NULL, N'Softdebugger', NULL, NULL)
INSERT [dbo].[MAIL_TEMPLATE] ([ID], [MAILTYPE], [MAILSUBJECT], [MAILBODY], [LOGOURL], [APPLICATIONNAME], [From_address], [CC_Address]) VALUES (2, N'MailSender', N'SoftDebugger Notification', N'<html>
<head>
<style type="text/css">
div, p, a, li, td {
	-webkit-text-size-adjust:none;
}
.ReadMsgBody {
	width: 100%;
	background-color: #d1d1d1;
}
.ExternalClass {
	width: 100%;
	background-color: #d1d1d1;
	line-height:100%;
}
body {
	width: 100%;
	height: 100%;
	background-color: #d1d1d1;
	margin:0;
	padding:0;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust:100%;
}
html {
	width: 100%;
}
img {
	-ms-interpolation-mode:bicubic;
}
table[class=full] {
	padding:0 !important;
	border:none !important;
}
table td img[class=imgresponsive] {
	width:100% !important;
	height:auto !important;
	display:block !important;
}
@media only screen and (max-width: 800px) {
body {
 width:auto!important;
}
table[class=full] {
 width:100%!important;
}
table[class=devicewidth] {
 width:100% !important;
 padding-left:20px !important;
 padding-right: 20px!important;
}
table td img.responsiveimg {
 width:100% !important;
 height:auto !important;
 display:block !important;
}
}
@media only screen and (max-width: 640px) {
table[class=devicewidth] {
 width:100% !important;
}
table[class=inner] {
 width:100%!important;
 text-align: center!important;
 clear: both;
}
table td a[class=top-button] {
 width:160px !important;
  font-size:14px !important;
 line-height:37px !important;
}
table td[class=readmore-button] {
 text-align:center !important;
}
table td[class=readmore-button] a {
 float:none !important;
 display:inline-block !important;
}
.hide {
 display:none !important;
}
table td[class=smallfont] {
 border:none !important;
 font-size:26px !important;
}
table td[class=sidespace] {
 width:10px !important;
}
}
 @media only screen and (max-width: 520px) {
}
@media only screen and (max-width: 480px) {

 table {
 border-collapse: collapse;
}
table td[class=template-img] img {
 width:100% !important;
 display:block !important;
}
}
@media only screen and (max-width: 320px) {
}
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="full">
  <tbody><tr>
    <td align="center"><table width="600" border="0" cellspacing="0" cellpadding="0" align="center" class="devicewidth">
        <tbody><tr>
          <td><table width="100%" bgcolor="#ffffff" border="0" cellspacing="0" cellpadding="0" align="center" class="full" style="background-color:#ffffff;">
              <tbody><tr>
                <td height="23">&nbsp;</td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="23" class="sidespace">&nbsp;</td>
                      <td><table width="76%" border="0" cellspacing="0" cellpadding="0" align="left" class="inner" id="banner" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                          <tbody>
						  <tr><td><a href="http://www.SoftDebugger.Com/"><img src="https://4.downloader.disk.yandex.ru/preview/7406790c0fe271af3cc851e2172dc72cdca67c34b7c48dd0d08df0dd52cce1e9/inf/33Jr3Ua0Z_0VfnnL-WhbfiTPqRoQqkbFhWYiPJiauDJVDs0GAgIRMpqHn5UL9bSbAcK_csl8MVz0h8o7od380g%3D%3D?uid=0&filename=logo.JPG&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&tknv=v2&size=XXL&crop=0" height="100px" width="100px" /></a></td></tr>
						  <tr>
                            <td style="font:bold 27px Arial, Helvetica, sans-serif; border-right:1px solid #dbdbdb;" class="smallfont">MailFirst</td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                          </tr>
                        </tbody></table>
                        <table width="22%" border="0" cellspacing="0" cellpadding="0" align="right" class="inner" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                          <tbody><tr>
                               <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/9en7r4vlfj/facebook.png" width="32" height="atuo" alt="Social Media"></a></td>
                            <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/65o3uh8bin/google.png" width="32" height="atuo" alt="Social Media"></a></td>
                            <td align="center"><a href="#" style="margin-top:5px; display:inline-block;"><img src="https://s1.postimg.org/20siidaq0f/twitter.png" width="32" height="atuo" alt="Social Media"></a></td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                            <td height="20">&nbsp;</td>
                            <td height="20">&nbsp;</td>
                          </tr>
                        </tbody></table></td>
                      <td width="23" class="sidespace">&nbsp;</td>
                    </tr>
                  </tbody></table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="3.33%" class="sidespace">&nbsp;</td>
                      <td width="93.33%"><img class="imgresponsive" src="https://s1.postimg.org/8iqqbol9u7/banner.jpg" width="554" height="atuo" alt="Banner"></td>
                      <td width="3.33%" class="sidespace">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="20">&nbsp;</td>
                      <td height="20">&nbsp;</td>
                      <td height="20">&nbsp;</td>
                    </tr>
                  </tbody></table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tbody><tr>
                      <td width="23" class="sidespace">&nbsp;</td>
                      <td><table width="50%" border="0" cellspacing="0" cellpadding="0" align="left" class="inner">
                          <tbody><tr>
                            <td style="font:300 22px "Open Sans", Arial, Helvetica, sans-serif; color:#333332;" class="smallfont">
							MailSecound </td>
                            <td class="hide" width="23">&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                            <td class="hide" height="20">&nbsp;</td>
                          </tr>
                        </tbody></table>
                        <table width="50%" border="0" cellspacing="0" cellpadding="0" align="right" class="inner">
                          <tbody><tr>
                            <td style="font:14px/19px Arial, Helvetica, sans-serif; color:#333332;">
							
							MailThird</td>
                          </tr>
                          <tr>
                            <td height="20">&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="left" class="readmore-button"><a href="#" style="font:bold 12px/29px Arial, Helvetica, sans-serif; color:#ffffff; text-decoration:none; background:#16c4a9; float:left; padding:0 19px; border-radius:24px; text-transform:uppercase;">View online</a></td>
                          </tr>
                        </tbody></table></td>
                      <td width="23" class="sidespace">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="16">&nbsp;</td>
                      <td height="16">&nbsp;</td>
                      <td height="16">&nbsp;</td>
                    </tr>
                  </tbody></table></td>
              </tr>
              <tr>
                <td style="border-bottom:1px solid #dbdbdb;">&nbsp;</td>
              </tr>
            </tbody></table></td>
        </tr>
      </tbody></table></td>
  </tr>
</tbody></table>
</body>
</html>', NULL, N'SoftDebugger', NULL, NULL)
INSERT [dbo].[MAIL_TEMPLATE] ([ID], [MAILTYPE], [MAILSUBJECT], [MAILBODY], [LOGOURL], [APPLICATIONNAME], [From_address], [CC_Address]) VALUES (3, N'ENQUIRY', N'Welcome to Softdebugger World !!', N'<!--
Author: Amit Pratap Singh
Author URL: http://www.softdebugger.com
-->
<!DOCTYPE HTML>
<head>
    <title>Traveling Website Template | Home :: W3layouts</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<link href=''//fonts.googleapis.com/css?family=Roboto'' rel=''stylesheet'' type=''text/css''>
<link href=''//fonts.googleapis.com/css?family=PT+Sans+Narrow'' rel=''stylesheet'' type=''text/css''>
<link rel="stylesheet" href="css/responsiveslides.css">
<body>
<style type="text/css">
/* reset */
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0px;padding:0px;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
.wrap{
	width:80%;
	margin:0 auto;
}
/*----start-header-----*/
.header{
	background:#012231;
}
.logo{
	float: left;
	padding: 27px 0 0 0;
}
.top-nav{
	float:right;
}
.top-nav ul li{
	display:inline-block;
	float:left;
}
.top-nav ul li a{
	font-family: ''Roboto'', sans-serif;
	color: #d6d6d6;
	padding: 40px 25px;
	display: block;
	position: relative;
	text-transform: uppercase;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	font-size: 0.875em;
}
.top-nav li.active> a, .top-nav li> a:hover {
	background: #289cd8;
	color:#FFF;
}
/*---start-content----*/
.content {
	background:url(../images/content-bg.png);
}
.content-grids {
	padding: 60px 0;
}
.grid{
	float: left;
	width: 29%;
	box-shadow: 2px 3px 3px #ccc;
	background: #fff;
	border: 1px solid #d5d5d5;
	padding: 19px 18px 25px;
	color: #7e7e7e;
	text-align: center;
	margin-right: 2%;
}
.grid h3{
	text-transform: uppercase;
	padding: 8px 0;
	margin-bottom: 8px;
	font-size: 1.6em;
	color: #289cd8;
	border-bottom: 1px solid #dedede;
	font-family: ''PT Sans Narrow'', sans-serif;
}
.grid p{
	font-size: 0.875em;
	color: rgba(148, 145, 145, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	padding: 0em 1em 1em 1em;
	line-height: 1.5em;
}
.button{
	font-family: ''Roboto'', sans-serif;
	color: #ffffff;
	background-color: #289cd8;
	display: inline-block;
	text-transform: uppercase;
	padding: 10px 20px;
	font-size: 0.875em;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
}
.button:hover{
	background-color: #7e7e7e;
}
.last-grid{
	margin:0px;
}
/*-----specials-heading----*/
.specials-heading h5{
	float: left;
	width: 33%;
	height: 1px;
	background: #D1D1D1;
	margin: 24px 0px 0px 0px;
}
.specials-heading h3{
	float: left;
	width: 34%;
	font-family: ''Roboto'', sans-serif;
	font-size: 2em;
	color: #012231;
	text-align: center;
	text-transform: uppercase;
}
.specials-heading {
	width: 90%;
	margin: 0 auto;
}
/*----special-grid------*/
.special-grid {
	float: left;
	width: 32%;
	margin-right: 2%;
	text-align: center;
}
.special-grid img{
	width:100%;
}
.special-grid a{
	text-transform: uppercase;
	font-size: 1.2em;
	font-family: ''PT Sans Narrow'', sans-serif;
	color: #555;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	padding: 0.3em 0;
	display: block;
}
.special-grid a:hover{
	color: #289cd8;
}
.special-grid p{
	font-size: 0.875em;
	color: rgba(148, 145, 145, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	padding: 0em 1em 1em 1em;
	line-height: 1.5em;
}
.spe-grid{
	margin: 0px;
}
.specials-grids {
	padding: 60px 0;
}
/*----start-testmonial-grid----*/
.testmonial-grid{
	text-align:center;
}
.testmonial-grid h3{
	font-family: ''Roboto'', sans-serif;
	font-size: 2em;
	color: #012231;
	text-align: center;
	text-transform: uppercase;
	padding: 0.5em 0 0.5em 0;
}
.testmonial-grid p{
	font-size: 0.875em;
	color: rgba(85, 81, 81, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	padding: 0em 1em 1em 1em;
	line-height: 1.8em;
}
.testmonial-grid a{
	font-size: 0.875em;
	font-size: 1.2em;
	font-family: ''PT Sans Narrow'', sans-serif;
	color:#2497d2;
}
.testmonials{
	background: url(../images/test-bg.png) repeat-x;
	padding: 50px;
}
/*---start-footer-----*/
.footer{
	background:#00131C;
	padding: 50px 0;
}
.footer-grid{
	float:left;
	width:23%;
	margin-right:2%;
}
.footer-grid h3{
	font-size: 0.7em;
	color: #fff;
	text-transform: uppercase;
	font-family: ''PT Sans Narrow'', sans-serif;
	margin-bottom: 20px;
}
.footer-grid p{
	font-size: 0.875em;
	color: rgba(148, 145, 145, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.5em;
}
.footer-grid ul li a{
	display:block;
	padding:10px 0px;
	border-bottom: 1px solid rgba(201, 201, 201, 0.05);
	font-size: 0.875em;
	color: rgba(148, 145, 145, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
}
.footer-grid ul li a:hover{
	color:#289cd8;
}
.footer-lastgrid{
	margin:0;
}
.email-link{
	color:#2497d2;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	text-transform:lowercase;
}
.email-link:hover{
	color:#FFF;
}
/*---start-copy-right-----*/
.copy-right{
	text-align:center;
	padding:1em;
	background:#000;
}
.copy-right p{
	font-size: 0.7em;
	color: #fff;
	text-transform: uppercase;
	font-family: ''PT Sans Narrow'', sans-serif;
}
.copy-right p a{
	color: rgba(148, 145, 145, 0.84);
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
}
.copy-right p a:hover{
	color:#FFF;
}
/*---about-us----*/
.about-us {
	padding: 50px 0;
}
.about-header h5{
	float: left;
	width: 30%;
	height: 1px;
	background: #D1D1D1;
	margin: 24px 0px 0px 0px;
}
.about-header h3{
	float: left;
	width: 34%;
	font-family: ''Roboto'', sans-serif;
	font-size: 2em;
	color: #012231;
	text-align: center;
	text-transform: uppercase;
}
.about-header {
	width: 90%;
	margin: 0 auto;
}
.about-info a{
	text-transform: uppercase;
	font-size: 1.2em;
	font-family: ''PT Sans Narrow'', sans-serif;
	color: #555;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	padding: 1em 0 0.5em 0;
	display: block;
}
.about-info a:hover{
	color:#2497d2;
}
.about-info p{
	font-size: 0.875em;
	color: rgba(85, 81, 81, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.8em;
}
/*---start-services----*/
.services {
	padding: 50px 0;
}
.services-header h5{
	float: left;
	width: 40%;
	height: 1px;
	background: #D1D1D1;
	margin: 24px 0px 0px 0px;
}
.services-header h3{
	float: left;
	width: 20%;
	font-family: ''Roboto'', sans-serif;
	font-size: 2em;
	color: #012231;
	text-align: center;
	text-transform: uppercase;
	padding: 0 0 0.5em 0;
}
.services-header {
	width: 90%;
	margin: 0 auto;
}
.services-grid{
	width:25%;
	float:left;
}
.services-grid a{
	text-transform: uppercase;
	font-size: 1.2em;
	font-family: ''PT Sans Narrow'', sans-serif;
	color: #555;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	padding: 1em 0 0.5em 0;
	display: block;
}
.services-grid a:hover{
	color:#2497d2;
}
.services-grid p{
	font-size: 0.875em;
	color: rgba(85, 81, 81, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.8em;
}
/*---plans-404page-----*/
.error-page{
	text-align:center;
}
.error-page p{
	font-family: ''Roboto'', sans-serif;
	font-size: 4em;
	color: #012231;
	text-shadow: -2px 3px 4px #9B9B9B;
}
.error-page h3{
	font-family: ''Roboto'', sans-serif;
	font-size: 10em;
	color: #012231;
	text-shadow: -2px 3px 4px #9B9B9B;
}
.error-page {
	padding: 200px 0px 0 0;
	min-height: 450px;
}
/*---start-contact----*/
/*  Contact Form  ============================================================================= */
.section {
	clear: both;
	padding: 0px;
	margin: 0px;
}
.group:before,
.group:after {
    content:"";
    display:table;
}
.group:after {
    clear:both;
}
.group {
    zoom:1;
}
.col{
	display: block;
	float:left;
	margin: 1% 0 1% 1.6%;
}
.col:first-child{
	margin-left:0;
}	
.span_2_of_3 {
	width: 63.1%;
	padding:1.5%; 
}
.span_1_of_3 {
	width: 29.2%;
	padding:1.5%; 
}
.span_2_of_3  h3,
.span_1_of_3  h3 {
	font-family: ''Roboto'', sans-serif;
	font-size: 1.5em;
	padding: 0.5em 0;
	color: #012231;
	text-transform: uppercase;
}
.contact-form{
	position:relative;
	padding-bottom:30px;
}
.contact-form div{
	padding:5px 0;
}
.contact-form span{
	display:block;
	font-family: ''Roboto'', sans-serif;
	font-size: 0.9em;
	padding-bottom:5px;
	color: #012231;
	text-transform: uppercase;
}
.contact-form input[type="text"],.contact-form textarea{
		   padding: 8px;
			display: block;
			width: 98%;
			border: none;
			outline: none;
			color: #464646;
			font-size: 0.8125em;
			font-family: Arial, Helvetica, sans-serif;
			border: 1px solid rgba(85, 85, 85, 0.19);
			-webkit-appearance:none;
}
.contact-form textarea{
		resize:none;
		height:120px;		
}
.contact-form input[type="submit"]{
	font-family: ''Roboto'', sans-serif;
	background: #012231;
	color: #d6d6d6;
	padding: 15px 40px;
	font-size: 0.875em;
	text-transform: uppercase;
	display: block;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
	cursor:pointer;
	border:none;
}
.contact-form input[type="submit"]:hover{
	background: #289cd8;
	color: #FFF;
}
.contact-form input[type="submit"]:active{
	background: #289cd8;
	color: #FFF;	
}
.company_address{
	padding-top:26px;
}
.company_address p{
	font-size: 0.875em;
	color: rgba(85, 81, 81, 0.84);
	font-family: Arial, Helvetica, sans-serif;
	line-height: 1.8em;
}
.company_address p span,.company_address p span a{
	text-decoration:underline;
	color:#012231;
	cursor:pointer;
	transition: 0.5s ease;
	-o-transition: 0.5s ease;
	-webkit-transition: 0.5s ease;
}
.company_address p span:hover{
	color:#289cd8;
}
/***** Media Quries *****/
@media only screen and (max-width: 1024px) {
	.wrap{
		width:95%;
	}	
}
/*  GO FULL WIDTH AT LESS THAN 800 PIXELS */

@media only screen and (max-width: 800px) {
	.wrap{
		width:95%;
	}
	.span_2_of_3 {
		width:94%;
		padding:3%; 
	}
	.col{ 
		margin: 1% 0 1% 0%;
	}
	.span_1_of_3 {
		width:94%;
		padding:3%; 
	}
}

/*  GO FULL WIDTH AT LESS THAN 640 PIXELS */

@media only screen and (max-width: 640px) and (min-width: 480px) {
	.wrap{
		width:95%;
	}
	.span_2_of_3 {
		width:94%;
		padding:3%; 
	}
	.col{ 
		margin: 1% 0 1% 0%;
	}
	.span_1_of_3 {
		width:94%;
		padding:3%; 
	}
   
   .contact-form input[type="text"],.contact-form textarea{
		width:97%;
	}
}
/*  GO FULL WIDTH AT LESS THAN 480 PIXELS */

@media only screen and (max-width: 480px) {
	.wrap{
		width:95%;
	}
	.span_2_of_3 {
		width:90%;
		padding:5%; 
	}
	.col { 
		margin: 1% 0 1% 0%;
	}
	.span_1_of_3 {
		width:90%;
		padding:5%; 
	}
	.contact-form input[type="text"],.contact-form textarea{
		width:92%;
	}
}
/*-----responsive-design-----*/
@media only screen and (max-width: 1366px) and (min-width: 1280px) {
	.wrap{
		width:90%;
	}
	.slider-info {
		left: 15%;
	}
	.grid {
		width: 28.8%;
	}

}
@media only screen and (max-width: 1280px) and (min-width: 1024px) {
	.wrap{
		width:90%;
	}
	.slider-info {
		left: 15%;
	}
	.grid {
		width: 28.6%;
	}
}
@media only screen and (max-width: 1024px) and (min-width: 768px) {
	.wrap{
		width:90%;
	}
	.slider-info {
		left: 15%;
	}
	.grid {
		width: 27.6%;
	}
	.specials-heading h3 {
		width: 42%;
	}
	.specials-heading h5 {
		width: 29%;
	}
}
@media only screen and (max-width: 768px) and (min-width: 640px) {
	.wrap{
		width:90%;
	}
	.slider-info {
		left: 15%;
	}
	.grid {
		width: 26.3%;
	}
	.specials-heading h3 {
		width: 42%;
	}
	.specials-heading h5 {
		width: 29%;
	}
	.top-nav ul li a {
		padding: 40px 19px;
	}
}
	</style>

    <!---start-wrap---->
    <!---start-header---->
    <div class="header">
        <div class="wrap">
            <!---start-logo---->
            <div class="logo">
                <a href="www.softdebugger.com"><img src="images/logo.png" title="logo" alt="Company Logo"/></a>
            </div>
            <!---End-logo---->
            <!---start-top-nav---->
            
            <div class="clear"> </div>
            <!---End-top-nav---->
        </div>
        <!---End-header---->
    </div>
  <div>
  <P ></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dear #Customer,</P></br>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you for raising aa enqiry with us !!</p></br>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We acknowledged your enquiry, Our sales team member will contact you shortly after analysing the case. <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Below is the enquiry id you may contact us for related to enquiry concern.</p></br>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enquiry ID : #ID04587</p></br>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thank you for your co-oporation with us !!</p></br></div>
  <div >
  <p font-size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks &amp; Regards....</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soft-Debugger Team</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gurgaon, Hariyana, India-122018</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone : +91-9821457769,+91-8057424300</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email : amit.dwhfcl@gmail.com, sanjeev02saraswat@yandex.com</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Website : www.softdebugger.com</p>
  </div>
    <div class="copy-right">
        <p> &copy; 2017 www.softdebugger.com. All rights reserved | Design by <a href="www.softdebugger.com">Softdebugger Team</a></p>
    </div>
</body>
</html>', NULL, N'SoftDebugger', NULL, NULL)
INSERT [dbo].[MAIL_TEMPLATE] ([ID], [MAILTYPE], [MAILSUBJECT], [MAILBODY], [LOGOURL], [APPLICATIONNAME], [From_address], [CC_Address]) VALUES (4, N'TicketSender', N'SoftDebugger Notification', N'<html>', NULL, N'SoftDebugger', NULL, NULL)
INSERT [dbo].[MAIL_TEMPLATE] ([ID], [MAILTYPE], [MAILSUBJECT], [MAILBODY], [LOGOURL], [APPLICATIONNAME], [From_address], [CC_Address]) VALUES (5, NULL, N'SoftDebugger', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MAIL_TEMPLATE] OFF
/****** Object:  Table [dbo].[LocalizationUser]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocalizationUser](
	[Email] [varchar](100) NULL,
	[ProfileName] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[HasAccess] [bit] NULL,
	[Cultureaccess] [varchar](10) NULL,
	[LastLoginDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LocalizationsHistory]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocalizationsHistory](
	[Email] [varchar](100) NULL,
	[UpdatedTextTime] [datetime] NULL,
	[Previouscontent] [nvarchar](max) NULL,
	[Recentcontent] [nvarchar](max) NULL,
	[PageFileName] [varchar](100) NULL,
	[Culture] [varchar](10) NULL,
	[SystemIPAddress] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Localizations]    Script Date: 12/21/2017 22:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localizations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ResourceKeyName] [varchar](100) NULL,
	[ResourceKeyValue] [nvarchar](max) NULL,
	[Culture] [varchar](10) NULL,
	[ResourceFileName] [varchar](50) NULL,
	[Timestamp] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Localizations] ON
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (1, N'TitleKey', N'SoftDebugger', N'en-US', N'Header', CAST(0x0000A81400D34854 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (2, N'HomeKey', N'Home', N'en-US', N'Header', CAST(0x0000A81400D37292 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (3, N'AboutKey', N'About', N'en-US', N'Header', CAST(0x0000A81400D3BBF6 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (4, N'ServicesKey', N'Services', N'en-US', N'Header', CAST(0x0000A81400D3D385 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (5, N'TimelineKey', N'Timeline', N'en-US', N'Header', CAST(0x0000A81400D3E9F8 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (6, N'Loginkey', N'Login', N'en-US', N'Header', CAST(0x0000A81400D402EE AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (7, N'ContactKey', N'Contact', N'en-US', N'Header', CAST(0x0000A81400D40EA4 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (8, N'ExtrasKey', N'Extras', N'en-US', N'Header', CAST(0x0000A81400D426B3 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (9, N'ExtrasContentKey', N'We are IT Technology service provider, You can contact us for any enquiry.', N'en-US', N'Header', CAST(0x0000A81400D44A62 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (10, N'OurServicesKey', N'Our Services', N'en-US', N'Header', CAST(0x0000A81400D46C78 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (11, N'TravelTechnologyServiceKey', N'Travel Technology Service''s', N'en-US', N'Header', CAST(0x0000A81400D47CFD AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (12, N'MedicalServicesKey', N'Medical Service''s', N'en-US', N'Header', CAST(0x0000A81400D4B010 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (13, N'AutomobileServicesKey', N'Automobiles IT Service''s', N'en-US', N'Header', CAST(0x0000A81400D4E8E0 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (14, N'EducationTrainingService', N'Educational and Training Service''s', N'en-US', N'Header', CAST(0x0000A81400D51207 AS DateTime))
INSERT [dbo].[Localizations] ([ID], [ResourceKeyName], [ResourceKeyValue], [Culture], [ResourceFileName], [Timestamp]) VALUES (15, N'UsefulInfoKey', N'Useful Info', N'en-US', N'Header', CAST(0x0000A81400D552A8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Localizations] OFF
/****** Object:  StoredProcedure [dbo].[GetMailTeplate]    Script Date: 12/21/2017 22:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetMailTeplate]
(
@ApplicationName Varchar(100),

@MailType Varchar(50)
)
As 
Begin
SELECT TOP 1 * from MAIL_TEMPLATE where APPLICATIONNAME=@ApplicationName and MAILTYPE=@MailType

End
GO
/****** Object:  StoredProcedure [dbo].[GET_SMTPDETAILS]    Script Date: 12/21/2017 22:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GET_SMTPDETAILS]
(
@Application_Name varchar(150),
@Mail_Type varchar(200)='',
@QUERYTYPE INT=1
)

AS BEGIN
IF @QUERYTYPE=1
BEGIN
SELECT * FROM smtp_details WHERE application_name=@Application_Name and isactive='True'
END
IF @QUERYTYPE=2
BEGIN
SELECT * FROM smtp_details WHERE application_name=@Application_Name and isactive='True'
END
END
GO
/****** Object:  StoredProcedure [dbo].[Get_MailValue]    Script Date: 12/21/2017 22:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Get_MailValue]
(
@MAILTYPE varchar(50)
)
AS BEGIN

select MAILBODY,MAILSUBJECT from MAIL_TEMPLATE where MAILTYPE=@MAILTYPE

END
GO
/****** Object:  StoredProcedure [dbo].[FSP_INSERTCONTACTDETAILS]    Script Date: 12/21/2017 22:03:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FSP_INSERTCONTACTDETAILS]
(
@QUERYTYPE varchar(20)='contact',
@NAME varchar(50),
@EMAIL varchar(50),
@MOBILE varchar(13),
@ENQUIRY varchar(200)
)
AS BEGIN

INSERT INTO CUSTOMERENQUIRY(NAME,EMAIL,MOBILE,ENQUIRY,QUERYTYPE) VALUES(@NAME,@EMAIL,@MOBILE,@ENQUIRY,@QUERYTYPE)

END
GO
/****** Object:  Default [DF__SMTP_DETA__SSL_T__108B795B]    Script Date: 12/21/2017 22:03:08 ******/
ALTER TABLE [dbo].[SMTP_DETAILS] ADD  DEFAULT ((0)) FOR [SSL_TLS]
GO
/****** Object:  Default [DF__SMTP_DETA__isAct__117F9D94]    Script Date: 12/21/2017 22:03:08 ******/
ALTER TABLE [dbo].[SMTP_DETAILS] ADD  DEFAULT ((0)) FOR [isActive]
GO
/****** Object:  Default [DF__Localizat__Times__7E6CC920]    Script Date: 12/21/2017 22:03:08 ******/
ALTER TABLE [dbo].[Localizations] ADD  DEFAULT (getdate()) FOR [Timestamp]
GO

USE [master]
GO
/****** Object:  Database [Colder.Fx.Net.AdminLTE]    Script Date: 03/05/2019 22:01:34 ******/
CREATE DATABASE [Colder.Fx.Net.AdminLTE] ON  PRIMARY 
( NAME = N'Colder.Fx.Net.AdminLTE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Colder.Fx.Net.AdminLTE.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Colder.Fx.Net.AdminLTE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Colder.Fx.Net.AdminLTE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Colder.Fx.Net.AdminLTE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ARITHABORT OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET  DISABLE_BROKER
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET  READ_WRITE
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET RECOVERY FULL
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET  MULTI_USER
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Colder.Fx.Net.AdminLTE] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Colder.Fx.Net.AdminLTE', N'ON'
GO
USE [Colder.Fx.Net.AdminLTE]
GO
/****** Object:  Table [dbo].[Dev_ProjectType]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dev_ProjectType](
	[Id] [varchar](50) NOT NULL,
	[ProjectTypeId] [varchar](50) NULL,
	[ProjectTypeName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_ProjectType', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_ProjectType', @level2type=N'COLUMN',@level2name=N'ProjectTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_ProjectType', @level2type=N'COLUMN',@level2name=N'ProjectTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_ProjectType'
GO
/****** Object:  Table [dbo].[Dev_Project]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dev_Project](
	[Id] [varchar](50) NOT NULL,
	[ProjectId] [varchar](50) NOT NULL,
	[ProjectName] [varchar](255) NOT NULL,
	[ProjectTypeId] [varchar](50) NULL,
	[ProjectManagerId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project', @level2type=N'COLUMN',@level2name=N'ProjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project', @level2type=N'COLUMN',@level2name=N'ProjectName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project', @level2type=N'COLUMN',@level2name=N'ProjectTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目经理Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project', @level2type=N'COLUMN',@level2name=N'ProjectManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dev_Project'
GO
INSERT [dbo].[Dev_Project] ([Id], [ProjectId], [ProjectName], [ProjectTypeId], [ProjectManagerId]) VALUES (N'039e943dea9f4-30e0e19b-828e-4938-98b6-da3941987925', N'asdsa', N'aaa', N'zxzxz', N'zxzx')
/****** Object:  Table [dbo].[Base_UserRoleMap]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_UserRoleMap](
	[Id] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[RoleId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039E7867D8D17-DDF7060D-10BA-4641-8605-24FB4DE4F446', N'Admin', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7')
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039EC43150704-7A0EA07C-BAFD-4B14-B05E-65439F838AE3', N'039ec43150699-20328720-bf30-4e8c-b9f9-b6fc49b61a5c', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8')
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039EC43165A96-A73A240F-0AF0-4352-9BD4-E176B373B4E7', N'039ec43165a91-1641d1f1-71b3-463e-9548-3a80e36ddeaa', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8')
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039EC43188FFC-93C6F3F7-A5FC-4711-A532-08C0CC7E4DF6', N'039ec43188ff6-30bbeb3b-14da-4c82-95e8-e2036178d10b', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8')
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039EC480B9E29-6A8BA4F0-8656-427B-9302-962721F1E10B', N'039ec480b9cf0-6da655f5-683c-453b-ba30-8faee35c3c72', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7')
INSERT [dbo].[Base_UserRoleMap] ([Id], [UserId], [RoleId]) VALUES (N'039EC480B9E29-7DC35E27-B7CA-4A7B-B58E-BFC7F3CB669E', N'039ec480b9cf0-6da655f5-683c-453b-ba30-8faee35c3c72', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8')
/****** Object:  Table [dbo].[Base_User]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_User](
	[Id] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[UserName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[RealName] [varchar](50) NULL,
	[Sex] [int] NULL,
	[Birthday] [date] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id,逻辑主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别(1为男，0为女)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统，用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_User'
GO
INSERT [dbo].[Base_User] ([Id], [UserId], [UserName], [Password], [RealName], [Sex], [Birthday]) VALUES (N'039e3e3891eea-1e885eb2-75a3-4f82-bb9a-570d717f2af4', N'039e3e3891eea-a67a61c4-adae-49fb-9fa3-50f3d54eabc3', N'xiaoming', N'e10adc3949ba59abbe56e057f20f883e', N'小明', 1, CAST(0xB73D0B00 AS Date))
INSERT [dbo].[Base_User] ([Id], [UserId], [UserName], [Password], [RealName], [Sex], [Birthday]) VALUES (N'039e40811175f-af4ebd3b-4908-4f9e-8075-31859b8aede0', N'039e40811175f-dbed6ef5-f06a-4512-9b40-ecfa2c7925f9', N'xiaohua', N'e10adc3949ba59abbe56e057f20f883e', N'小花', 0, CAST(0xC33D0B00 AS Date))
INSERT [dbo].[Base_User] ([Id], [UserId], [UserName], [Password], [RealName], [Sex], [Birthday]) VALUES (N'2e9a9876-469e-42b3-b631-48e866723eeb', N'Admin', N'Admin', N'e10adc3949ba59abbe56e057f20f883e', N'超级管理员', 1, CAST(0xA53D0B00 AS Date))
/****** Object:  Table [dbo].[Base_UnitTest]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_UnitTest](
	[Id] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_UnitTest', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元测试表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_UnitTest'
GO
/****** Object:  Table [dbo].[Base_SysRole]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_SysRole](
	[Id] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NULL,
	[RoleName] [nvarchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [RoleId] ON [dbo].[Base_SysRole] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'逻辑主键，角色Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysRole', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysRole', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysRole'
GO
INSERT [dbo].[Base_SysRole] ([Id], [RoleId], [RoleName]) VALUES (N'039e3de2a3a7c-e35bc1a8-7e42-44a2-9881-7d1d6768ab72', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'超级管理员')
INSERT [dbo].[Base_SysRole] ([Id], [RoleId], [RoleName]) VALUES (N'039e4630ba5a1-31320968-d1dd-4275-ae71-a06da0731a2b', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'管理员')
/****** Object:  Table [dbo].[Base_SysLog]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_SysLog](
	[Id] [varchar](50) NOT NULL,
	[LogType] [varchar](255) NULL,
	[LogContent] [varchar](max) NULL,
	[OpUserName] [varchar](255) NULL,
	[OpTime] [datetime] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [OpTime] ON [dbo].[Base_SysLog] 
(
	[OpTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [LogType] ON [dbo].[Base_SysLog] 
(
	[LogType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog', @level2type=N'COLUMN',@level2name=N'LogContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog', @level2type=N'COLUMN',@level2name=N'OpUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog', @level2type=N'COLUMN',@level2name=N'OpTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_SysLog'
GO
INSERT [dbo].[Base_SysLog] ([Id], [LogType], [LogContent], [OpUserName], [OpTime]) VALUES (N'039ec61e00c79-6ea06792-8841-4a34-ae32-c3018304746a', N'系统异常', N'<br />1层错误:<br />&nbsp;&nbsp;消息:<br />&nbsp;&nbsp;&nbsp;&nbsp;请输入数据库类型字符串！<br />&nbsp;&nbsp;位置:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在 Coldairarrow.Util.DbProviderFactoryHelper.DbTypeStrToDbType(String dbTypeStr) 位置 D:\文档\0软件项目\GitHub\Colder.Fx.Net.AdminLTE\src\Coldairarrow.Util\DataAccess\DbProviderFactoryHelper.cs:行号 105<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在 Coldairarrow.Util.DbHelperFactory.GetDbHelper(String dbTypeStr, String conStr) 位置 D:\文档\0软件项目\GitHub\Colder.Fx.Net.AdminLTE\src\Coldairarrow.Util\DataAccess\DbHelperFactory.cs:行号 39<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在 Coldairarrow.Business.Base_SysManage.RapidDevelopmentBusiness.GetTheDbHelper(String linkId) 位置 D:\文档\0软件项目\GitHub\Colder.Fx.Net.AdminLTE\src\Coldairarrow.Business\Base_SysManage\RapidDevelopmentBusiness.cs:行号 630<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在 Coldairarrow.Business.Base_SysManage.RapidDevelopmentBusiness.GetDbTableList(String linkId) 位置 D:\文档\0软件项目\GitHub\Colder.Fx.Net.AdminLTE\src\Coldairarrow.Business\Base_SysManage\RapidDevelopmentBusiness.cs:行号 35<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在 Coldairarrow.Web.RapidDevelopmentController.GetDbTableList(String linkId) 位置 D:\文档\0软件项目\GitHub\Colder.Fx.Net.AdminLTE\src\Coldairarrow.Web\Areas\Base_SysManage\Controllers\RapidDevelopmentController.cs:行号 52<br /><br />', N'Admin', CAST(0x0000AA07015D72F1 AS DateTime))
/****** Object:  Table [dbo].[Base_PermissionUser]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_PermissionUser](
	[Id] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NULL,
	[PermissionValue] [varchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [UserId] ON [dbo].[Base_PermissionUser] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionUser', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionUser', @level2type=N'COLUMN',@level2name=N'PermissionValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionUser'
GO
INSERT [dbo].[Base_PermissionUser] ([Id], [UserId], [PermissionValue]) VALUES (N'039ec57a5d4e2-48b4af86-deb0-4155-aec1-b2d6c88b914f', N'039e3e3891eea-a67a61c4-adae-49fb-9fa3-50f3d54eabc3', N'sysrole.manageSysPermission')
INSERT [dbo].[Base_PermissionUser] ([Id], [UserId], [PermissionValue]) VALUES (N'039ec57a5d4e2-e3fdd467-7d71-4ca3-9869-ab6e773b848f', N'039e3e3891eea-a67a61c4-adae-49fb-9fa3-50f3d54eabc3', N'sysLog.search')
/****** Object:  Table [dbo].[Base_PermissionRole]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_PermissionRole](
	[Id] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NULL,
	[PermissionValue] [varchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [RoleId] ON [dbo].[Base_PermissionRole] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionRole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionRole', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionRole', @level2type=N'COLUMN',@level2name=N'PermissionValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionRole'
GO
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-173754c2-e902-4988-b50f-b883d8455db1', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'appsecret.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-6485672f-8a64-4e1d-9929-b0e7349c364b', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'sysuser.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-722409a9-e42c-49f5-be03-eb625518eb7b', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'appsecret.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-75c3fcd4-4fa9-4954-8479-7d6f167bd491', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'sysrole.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-980eea1a-800b-4436-bd2a-3f4e12baa049', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'databaseLink.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-aa682996-32a1-4a6c-b641-4c4d380e94c0', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'sysuser.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-ac1b4d9c-1823-44e1-b8bc-fe4221446b62', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'sysrole.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116c54e5-d61e0d12-dc36-4e51-8ba5-856bdd0dba4b', N'039e3de2a3a7c-b3a0d714-922a-4cb7-a412-69eefd4d3ac7', N'buildcode.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4082682ad-73a3c09d-02bc-4976-9261-bc54d503d4b3', N'039e3de2a5724-492ec4b1-848f-4214-8df5-05ddeffa3e3e', N'sysrole.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4082682ad-b69b58c3-ece5-4798-9af4-67d87f6fec57', N'039e3de2a5724-492ec4b1-848f-4214-8df5-05ddeffa3e3e', N'sysuser.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e40813d768-8f112ee0-ab06-40de-bea6-84d08585929a', N'039e3de2a728b-95a8888c-5b3c-42e7-a983-379e7f0cefc4', N'sysrole.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e40813d768-c302de76-116c-49ec-881d-64c21ef23f25', N'039e3de2a728b-95a8888c-5b3c-42e7-a983-379e7f0cefc4', N'sysuser.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b5bdc-19705d4a-67b0-4653-b8d3-01b33ea95dfd', N'039e4116b3565-6ba14a24-ac04-4c42-bd7f-37205a6687d8', N'sysuser.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b5bdd-1744d3c5-d8a9-4ca8-b674-8a29b63f3579', N'039e4116b3565-6ba14a24-ac04-4c42-bd7f-37205a6687d8', N'appsecret.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b5bdd-859268b8-7d41-47f7-b4a0-9c1723fdd8b4', N'039e4116b3565-6ba14a24-ac04-4c42-bd7f-37205a6687d8', N'sysrole.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b5bdd-a1bc3b7c-2e70-4bb6-880e-78ba1ff96ef0', N'039e4116b3565-6ba14a24-ac04-4c42-bd7f-37205a6687d8', N'buildcode.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b5bdd-bd389b48-8646-44cb-aaf6-1ad63e290b31', N'039e4116b3565-6ba14a24-ac04-4c42-bd7f-37205a6687d8', N'databaseLink.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b7175-0a86c2f0-2814-4e7d-8168-5a4a4eb045ab', N'039e4116b4700-0f37d7f4-41b5-4a17-b0fb-67654ff44185', N'sysuser.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b7175-2f158fb9-8231-422a-9aac-58071e7f8634', N'039e4116b4700-0f37d7f4-41b5-4a17-b0fb-67654ff44185', N'sysrole.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e4116b7175-fdbcad8b-fbbb-4414-9df5-b63fdf00f84e', N'039e4116b4700-0f37d7f4-41b5-4a17-b0fb-67654ff44185', N'appsecret.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-5b33d05f-e8b0-4989-8176-8c9133971dce', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'sysuser.manageSysPermission')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-9156a79d-15d4-45f1-bef9-59da5cb867fd', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'sysuser.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-93c4bf2e-d067-490c-b9a2-ab5dcd0a1924', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'appsecret.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-9e509aab-a5d6-4450-a18c-d5200e1b49b0', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'appsecret.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-ad434eca-4e96-4c31-a769-7628a7dd1127', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'sysrole.search')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-e6abc1cc-d403-4c11-99d9-4752fd5cedb7', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'sysrole.manage')
INSERT [dbo].[Base_PermissionRole] ([Id], [RoleId], [PermissionValue]) VALUES (N'039e7906b1039-ed051d70-b620-4960-80df-7e1cbc3e6770', N'039e4630ba5a1-72a1d684-e3e8-4391-b38a-ad393e85b5b8', N'sysuser.search')
/****** Object:  Table [dbo].[Base_PermissionAppId]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_PermissionAppId](
	[Id] [varchar](50) NOT NULL,
	[AppId] [varchar](50) NULL,
	[PermissionValue] [varchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [RoleId] ON [dbo].[Base_PermissionAppId] 
(
	[AppId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionAppId', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionAppId', @level2type=N'COLUMN',@level2name=N'AppId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionAppId', @level2type=N'COLUMN',@level2name=N'PermissionValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_PermissionAppId'
GO
INSERT [dbo].[Base_PermissionAppId] ([Id], [AppId], [PermissionValue]) VALUES (N'039e4082caa0a-4b9fb0cf-05f3-4287-a5b4-c8004a21627c', N'AppTest', N'sysuser.manage')
INSERT [dbo].[Base_PermissionAppId] ([Id], [AppId], [PermissionValue]) VALUES (N'039e4082caa0a-61c9c1c6-9f27-48a1-b002-ad69eece2fba', N'AppTest', N'sysrole.search')
INSERT [dbo].[Base_PermissionAppId] ([Id], [AppId], [PermissionValue]) VALUES (N'039e4082caa0a-a13df201-5f8b-4178-8823-72709c75d30d', N'AppTest', N'sysuser.search')
INSERT [dbo].[Base_PermissionAppId] ([Id], [AppId], [PermissionValue]) VALUES (N'039e4082caa0a-c10ea62d-290d-4a74-bb0d-74d4891b5fb9', N'AppTest', N'sysrole.manage')
/****** Object:  Table [dbo].[Base_DatabaseLink]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_DatabaseLink](
	[Id] [varchar](50) NOT NULL,
	[LinkName] [varchar](50) NULL,
	[ConnectionStr] [varchar](1000) NULL,
	[DbType] [varchar](50) NULL,
	[SortNum] [varchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [LinkName] ON [dbo].[Base_DatabaseLink] 
(
	[LinkName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink', @level2type=N'COLUMN',@level2name=N'LinkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink', @level2type=N'COLUMN',@level2name=N'ConnectionStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink', @level2type=N'COLUMN',@level2name=N'DbType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink', @level2type=N'COLUMN',@level2name=N'SortNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_DatabaseLink'
GO
INSERT [dbo].[Base_DatabaseLink] ([Id], [LinkName], [ConnectionStr], [DbType], [SortNum]) VALUES (N'039e900bc6bbb-a0070d5c-1fc7-4cf0-a177-e3aebc4633c5', N'SqlServer', N'Data Source=.;Initial Catalog=Colder.Fx.Net.AdminLTE;Integrated Security=True', N'SqlServer', N'aa')
/****** Object:  Table [dbo].[Base_AppSecret]    Script Date: 03/05/2019 22:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Base_AppSecret](
	[Id] [varchar](50) NOT NULL,
	[AppId] [varchar](50) NULL,
	[AppSecret] [varchar](50) NULL,
	[AppName] [varchar](255) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [AppId] ON [dbo].[Base_AppSecret] 
(
	[AppId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_AppSecret', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_AppSecret', @level2type=N'COLUMN',@level2name=N'AppId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用密钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_AppSecret', @level2type=N'COLUMN',@level2name=N'AppSecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_AppSecret', @level2type=N'COLUMN',@level2name=N'AppName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用密钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Base_AppSecret'
GO
INSERT [dbo].[Base_AppSecret] ([Id], [AppId], [AppSecret], [AppName]) VALUES (N'039e41170bc72-b89139b1-f3f4-430e-aed7-36b193d256dc', N'AppAdmin', N'7344a9c5-4f8c-4725-bde5-3fb99716f457', N'超级权限')

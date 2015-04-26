USE [master]
GO
/****** Object:  Database [OpenAuthDB]    Script Date: 04/25/2015 21:09:45 ******/
CREATE DATABASE [OpenAuthDB] ON  PRIMARY 
( NAME = N'OpenAuthDB', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\OpenAuthDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OpenAuthDB_log', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\OpenAuthDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OpenAuthDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OpenAuthDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OpenAuthDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [OpenAuthDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [OpenAuthDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [OpenAuthDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [OpenAuthDB] SET ARITHABORT OFF
GO
ALTER DATABASE [OpenAuthDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [OpenAuthDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [OpenAuthDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [OpenAuthDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [OpenAuthDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [OpenAuthDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [OpenAuthDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [OpenAuthDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [OpenAuthDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [OpenAuthDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [OpenAuthDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [OpenAuthDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [OpenAuthDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [OpenAuthDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [OpenAuthDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [OpenAuthDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [OpenAuthDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [OpenAuthDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [OpenAuthDB] SET  READ_WRITE
GO
ALTER DATABASE [OpenAuthDB] SET RECOVERY FULL
GO
ALTER DATABASE [OpenAuthDB] SET  MULTI_USER
GO
ALTER DATABASE [OpenAuthDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [OpenAuthDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'OpenAuthDB', N'ON'
GO
USE [OpenAuthDB]
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(max)]    Script Date: 04/25/2015 21:09:45 ******/
CREATE TYPE [dbo].[varchar(max)] FROM [varchar](max) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(50)]    Script Date: 04/25/2015 21:09:45 ******/
CREATE TYPE [dbo].[varchar(50)] FROM [varchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[varchar(200)]    Script Date: 04/25/2015 21:09:45 ******/
CREATE TYPE [dbo].[varchar(200)] FROM [varchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[decimal (16,2)]    Script Date: 04/25/2015 21:09:45 ******/
CREATE TYPE [dbo].[decimal (16,2)] FROM [decimal](16, 2) NULL
GO
/****** Object:  Table [dbo].[Button]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Button](
	[ButtonId] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NULL,
	[Img] [varchar](50) NULL,
	[Event] [varchar](50) NULL,
	[Control_ID] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Enabled] [bit] NOT NULL,
	[SortCode] [int] NULL,
 CONSTRAINT [PK_BUTTON] PRIMARY KEY NONCLUSTERED 
(
	[ButtonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作按钮表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Button'
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Img] [varchar](50) NULL,
	[Category] [int] NULL,
	[NavigateUrl] [varchar](200) NULL,
	[FormName] [varchar](200) NULL,
	[Target] [varchar](50) NULL,
	[IsUnfold] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[SortCode] [int] NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY NONCLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块（菜单导航）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu'
GO
/****** Object:  Table [dbo].[Department]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Enabled] [bit] NOT NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NOT NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构、部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Department'
GO
INSERT [dbo].[Department] ([DepartmentId], [ParentId], [FullName], [Description], [Enabled], [SortCode], [DeleteMark]) VALUES (N'5F2EA929-9BF9-4239-B9F7-9B22B7008D18', NULL, N'集团公司', N'test', 1, 1, 0)
INSERT [dbo].[Department] ([DepartmentId], [ParentId], [FullName], [Description], [Enabled], [SortCode], [DeleteMark]) VALUES (N'0A53ACD1-4633-44FF-9C40-504AB8115A37', N'5F2EA929-9BF9-4239-B9F7-9B22B7008D18', N'研发部', N'test', 1, 2, 0)
/****** Object:  Table [dbo].[User]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [varchar](50) NOT NULL,
	[Account] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RealName] [varchar](50) NULL,
	[RoleId] [varchar](50) NULL,
	[Enabled] [bit] NOT NULL,
	[DeleteMark] [bit] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户、帐户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User'
GO
INSERT [dbo].[User] ([UserId], [Account], [Password], [RealName], [RoleId], [Enabled], [DeleteMark]) VALUES (N'A142CD9F-54D2-4227-B0E8-E8B5E8331EF8', N'admin', N'123456', N'test', N'DA7F012E-18A1-4C61-8887-3A8413D4CF7D', 1, 0)
/****** Object:  Table [dbo].[Role]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [varchar](50) NOT NULL,
	[ParentId] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Enabled] [bit] NOT NULL,
	[SortCode] [int] NULL,
	[DeleteMark] [bit] NOT NULL,
	[DepartmentId] [varchar](50) NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role'
GO
INSERT [dbo].[Role] ([RoleId], [ParentId], [FullName], [Category], [Description], [Enabled], [SortCode], [DeleteMark], [DepartmentId]) VALUES (N'DA7F012E-18A1-4C61-8887-3A8413D4CF7D', NULL, N'管理员', N'系统角色', N'管理员', 1, 1, 0, N'5F2EA929-9BF9-4239-B9F7-9B22B7008D18')
INSERT [dbo].[Role] ([RoleId], [ParentId], [FullName], [Category], [Description], [Enabled], [SortCode], [DeleteMark], [DepartmentId]) VALUES (N'D6F16C49-FBB6-4BDA-80EE-43A58B6D80D2', NULL, N'业务员', N'系统角色', N'业务员', 1, 1, 0, N'5F2EA929-9BF9-4239-B9F7-9B22B7008D18')
/****** Object:  Table [dbo].[MenuButton]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuButton](
	[MenuButtonId] [varchar](50) NOT NULL,
	[MenuId] [varchar](50) NOT NULL,
	[ButtonId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MENUBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[MenuButtonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_10_FK] ON [dbo].[MenuButton] 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_11_FK] ON [dbo].[MenuButton] 
(
	[ButtonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单导航按钮关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MenuButton'
GO
/****** Object:  Table [dbo].[UserDepartment]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDepartment](
	[UserDepartmentId] [varchar](50) NOT NULL,
	[DepartmentId] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USERDEPARTMENT] PRIMARY KEY NONCLUSTERED 
(
	[UserDepartmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_3_FK] ON [dbo].[UserDepartment] 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_6_FK] ON [dbo].[UserDepartment] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户账户部门关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserDepartment'
GO
INSERT [dbo].[UserDepartment] ([UserDepartmentId], [DepartmentId], [UserId]) VALUES (N'32EA0F98-757C-4529-A7E8-BF8D605B708B', N'5F2EA929-9BF9-4239-B9F7-9B22B7008D18', N'A142CD9F-54D2-4227-B0E8-E8B5E8331EF8')
/****** Object:  Table [dbo].[UserRole]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_USERROLE] PRIMARY KEY NONCLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_7_FK] ON [dbo].[UserRole] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_8_FK] ON [dbo].[UserRole] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户帐户角色关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRole'
GO
/****** Object:  Table [dbo].[RoleMenuButton]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleMenuButton](
	[RoleMenuButtonId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
	[MenuId] [varchar](50) NOT NULL,
	[ButtonId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ROLEMENUBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[RoleMenuButtonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_19_FK] ON [dbo].[RoleMenuButton] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_20_FK] ON [dbo].[RoleMenuButton] 
(
	[ButtonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_21_FK] ON [dbo].[RoleMenuButton] 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色菜单按钮关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleMenuButton'
GO
/****** Object:  Table [dbo].[RoleMenu]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleMenu](
	[RoleMenuId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
	[MenuId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ROLEMENU] PRIMARY KEY NONCLUSTERED 
(
	[RoleMenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_4_FK] ON [dbo].[RoleMenu] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Relationship_5_FK] ON [dbo].[RoleMenu] 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色菜单关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleMenu'
GO
/****** Object:  Table [dbo].[DataPermission]    Script Date: 04/25/2015 21:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataPermission](
	[Id] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
	[ResourceId] [varchar](50) NULL,
	[ObjectId] [text] NULL,
 CONSTRAINT [PK_DATAPERMISSION] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [Relationship_24_FK] ON [dbo].[DataPermission] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要是存储该角色能访问哪个部门的数据内容，单独提取出来是为了在查找数据的时候不用级联查询部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataPermission'
GO
/****** Object:  Default [DF_Button_ButtonId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Button] ADD  CONSTRAINT [DF_Button_ButtonId]  DEFAULT (newid()) FOR [ButtonId]
GO
/****** Object:  Default [DF_Button_Enabled]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Button] ADD  CONSTRAINT [DF_Button_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DF_Menu_MenuId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_MenuId]  DEFAULT (newid()) FOR [MenuId]
GO
/****** Object:  Default [DF_Menu_IsUnfold]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsUnfold]  DEFAULT ((1)) FOR [IsUnfold]
GO
/****** Object:  Default [DF_Menu_Enabled]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DF_Department_DepartmentId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_DepartmentId]  DEFAULT (newid()) FOR [DepartmentId]
GO
/****** Object:  Default [DF_Department_Enabled]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DF_Department_DeleteMark]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_DeleteMark]  DEFAULT ((0)) FOR [DeleteMark]
GO
/****** Object:  Default [DF_User_UserId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserId]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF_User_Enabled]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DF_User_DeleteMark]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_DeleteMark]  DEFAULT ((0)) FOR [DeleteMark]
GO
/****** Object:  Default [DF_Role_RoleId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_RoleId]  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF_Role_Enabled]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DF_Role_DeleteMark]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_DeleteMark]  DEFAULT ((0)) FOR [DeleteMark]
GO
/****** Object:  Default [DF_MenuButton_MenuButtonId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[MenuButton] ADD  CONSTRAINT [DF_MenuButton_MenuButtonId]  DEFAULT (newid()) FOR [MenuButtonId]
GO
/****** Object:  Default [DF_UserDepartment_UserDepartmentId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserDepartment] ADD  CONSTRAINT [DF_UserDepartment_UserDepartmentId]  DEFAULT (newid()) FOR [UserDepartmentId]
GO
/****** Object:  Default [DF_UserRole_UserRoleId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_UserRoleId]  DEFAULT (newid()) FOR [UserRoleId]
GO
/****** Object:  Default [DF_RoleMenuButton_RoleMenuButtonId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenuButton] ADD  CONSTRAINT [DF_RoleMenuButton_RoleMenuButtonId]  DEFAULT (newid()) FOR [RoleMenuButtonId]
GO
/****** Object:  Default [DF_RoleMenu_RoleMenuId]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenu] ADD  CONSTRAINT [DF_RoleMenu_RoleMenuId]  DEFAULT (newid()) FOR [RoleMenuId]
GO
/****** Object:  Default [DF_DataPermission_Id]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[DataPermission] ADD  CONSTRAINT [DF_DataPermission_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  ForeignKey [FK_Role_Department]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Department]
GO
/****** Object:  ForeignKey [FK_MENUBUTT_RELATIONS_BUTTON]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[MenuButton]  WITH CHECK ADD  CONSTRAINT [FK_MENUBUTT_RELATIONS_BUTTON] FOREIGN KEY([ButtonId])
REFERENCES [dbo].[Button] ([ButtonId])
GO
ALTER TABLE [dbo].[MenuButton] CHECK CONSTRAINT [FK_MENUBUTT_RELATIONS_BUTTON]
GO
/****** Object:  ForeignKey [FK_MENUBUTT_RELATIONS_MENU]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[MenuButton]  WITH CHECK ADD  CONSTRAINT [FK_MENUBUTT_RELATIONS_MENU] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[MenuButton] CHECK CONSTRAINT [FK_MENUBUTT_RELATIONS_MENU]
GO
/****** Object:  ForeignKey [FK_USERDEPA_RELATIONS_DEPARTME]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserDepartment]  WITH CHECK ADD  CONSTRAINT [FK_USERDEPA_RELATIONS_DEPARTME] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[UserDepartment] CHECK CONSTRAINT [FK_USERDEPA_RELATIONS_DEPARTME]
GO
/****** Object:  ForeignKey [FK_USERDEPA_RELATIONS_USER]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserDepartment]  WITH CHECK ADD  CONSTRAINT [FK_USERDEPA_RELATIONS_USER] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserDepartment] CHECK CONSTRAINT [FK_USERDEPA_RELATIONS_USER]
GO
/****** Object:  ForeignKey [FK_USERROLE_RELATIONS_ROLE]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_USERROLE_RELATIONS_ROLE] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_USERROLE_RELATIONS_ROLE]
GO
/****** Object:  ForeignKey [FK_USERROLE_RELATIONS_USER]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_USERROLE_RELATIONS_USER] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_USERROLE_RELATIONS_USER]
GO
/****** Object:  ForeignKey [FK_ROLEMENU_RELATIONS_BUTTON]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenuButton]  WITH CHECK ADD  CONSTRAINT [FK_ROLEMENU_RELATIONS_BUTTON] FOREIGN KEY([ButtonId])
REFERENCES [dbo].[Button] ([ButtonId])
GO
ALTER TABLE [dbo].[RoleMenuButton] CHECK CONSTRAINT [FK_ROLEMENU_RELATIONS_BUTTON]
GO
/****** Object:  ForeignKey [FK_ROLEMENUBTN_RELATIONS_MENU]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenuButton]  WITH CHECK ADD  CONSTRAINT [FK_ROLEMENUBTN_RELATIONS_MENU] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[RoleMenuButton] CHECK CONSTRAINT [FK_ROLEMENUBTN_RELATIONS_MENU]
GO
/****** Object:  ForeignKey [FK_ROLEMENUBTN_RELATIONS_ROLE]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenuButton]  WITH CHECK ADD  CONSTRAINT [FK_ROLEMENUBTN_RELATIONS_ROLE] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[RoleMenuButton] CHECK CONSTRAINT [FK_ROLEMENUBTN_RELATIONS_ROLE]
GO
/****** Object:  ForeignKey [FK_ROLEMENU_RELATIONS_MENU]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK_ROLEMENU_RELATIONS_MENU] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[RoleMenu] CHECK CONSTRAINT [FK_ROLEMENU_RELATIONS_MENU]
GO
/****** Object:  ForeignKey [FK_ROLEMENU_RELATIONS_ROLE]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[RoleMenu]  WITH CHECK ADD  CONSTRAINT [FK_ROLEMENU_RELATIONS_ROLE] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[RoleMenu] CHECK CONSTRAINT [FK_ROLEMENU_RELATIONS_ROLE]
GO
/****** Object:  ForeignKey [FK_DATAPERM_RELATIONS_ROLE]    Script Date: 04/25/2015 21:09:45 ******/
ALTER TABLE [dbo].[DataPermission]  WITH CHECK ADD  CONSTRAINT [FK_DATAPERM_RELATIONS_ROLE] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[DataPermission] CHECK CONSTRAINT [FK_DATAPERM_RELATIONS_ROLE]
GO

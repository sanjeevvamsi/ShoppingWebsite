USE [ShoppingSolera]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderItems_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MfgDate] [date] NOT NULL,
	[ExpiryDate] [date] NULL,
	[Stock] [int] NULL,
	[Price] [money] NOT NULL,
	[CategoryId] [tinyint] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_roles_id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[DOJ] [date] NULL,
	[Gender] [nchar](1) NULL,
	[Mobile] [nchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [tinyint] NOT NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [pk_users_id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Mobile')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Tv')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Laptop')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Books')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [MfgDate], [ExpiryDate], [Stock], [Price], [CategoryId], [Status]) VALUES (1, N'Mi 10 Pro', CAST(N'2021-12-03' AS Date), NULL, 10, 30000.0000, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [MfgDate], [ExpiryDate], [Stock], [Price], [CategoryId], [Status]) VALUES (2, N'Samsung s21 ultra', CAST(N'2022-02-02' AS Date), NULL, 5, 150000.0000, 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [MfgDate], [ExpiryDate], [Stock], [Price], [CategoryId], [Status]) VALUES (4, N'Dell Precision', CAST(N'2020-02-02' AS Date), NULL, 15, 70000.0000, 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [MfgDate], [ExpiryDate], [Stock], [Price], [CategoryId], [Status]) VALUES (5, N'C# prog 4.8', CAST(N'2021-02-05' AS Date), NULL, 100, 1200.0000, 4, 1)
INSERT [dbo].[Products] ([Id], [Name], [MfgDate], [ExpiryDate], [Stock], [Price], [CategoryId], [Status]) VALUES (6, N'Sony Bravia', CAST(N'2019-02-06' AS Date), NULL, 4, 50000.0000, 2, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Customer')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Vendors')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (1, N'TAdmin', CAST(N'1991-12-03' AS Date), CAST(N'2022-10-24' AS Date), N'F', N'9876567890', N'tadmin@mail.com', N'pass123', 1, 1)
INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (2, N'UCust', CAST(N'1995-03-05' AS Date), CAST(N'2022-10-24' AS Date), N'M', N'9797679768', N'ucust@mail.com', N'pass123', 2, 1)
INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (3, N'ICust', CAST(N'2002-03-05' AS Date), CAST(N'2022-10-24' AS Date), N'F', N'9876567590', N'icust@mail.com', N'pass123', 2, 1)
INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (6, N'YCust', CAST(N'2002-03-05' AS Date), CAST(N'2022-10-24' AS Date), N'M', N'9876567546', N'ycust@mail.com', N'pass123', 2, 1)
INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (7, N'OVend', CAST(N'2000-03-05' AS Date), CAST(N'2022-10-24' AS Date), N'M', N'9876567576', N'ovend@mail.com', N'pass123', 3, 1)
INSERT [dbo].[Users] ([Id], [Name], [DOB], [DOJ], [Gender], [Mobile], [Email], [Password], [RoleId], [Status]) VALUES (8, N'OCust', CAST(N'1993-12-04' AS Date), CAST(N'2022-10-26' AS Date), N'M', N'3932979092', N'ocust@mail.com', N'pass123', 2, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uk_users_email]    Script Date: 10/31/2022 1:34:33 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [uk_users_email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Stock]  DEFAULT ((5)) FOR [Stock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [def_users_doj]  DEFAULT (getdate()) FOR [DOJ]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [def_user_gen]  DEFAULT ('M') FOR [Gender]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [def_users_status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_userss_rid] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_userss_rid]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_Products] CHECK  (([MfgDate]<getdate()))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [chk_users_dob] CHECK  (([dob]<getdate()))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [chk_users_dob]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteUser](@id int)
as
update Users set [Status]=3 where id=@id
GO
/****** Object:  StoredProcedure [dbo].[GetAllActiveUsers]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAllActiveUsers]
as
select u.Id,u.[Name] as UserName,DOB,DOJ,
Gender= case Gender
when 'M' then 'Male'
when 'F' then 'Female'
end
,Mobile,Email,
r.[Name] as RoleName from 
Users u inner join  roles r
on u.RoleId=r.Id
where [Status]=1
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetUserById](@id int)
as
select u.Id,u.[Name] as UserName,DOB,DOJ,
Gender= case Gender
when 'M' then 'Male'
when 'F' then 'Female'
end
,Mobile,Email,
r.[Name] as RoleName from 
Users u inner join  roles r
on u.RoleId=r.Id
where [Status]=1 and u.[Id]=@id
GO
/****** Object:  StoredProcedure [dbo].[MathProc]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MathProc](@num1 int=20 ,@num2 int=40 ,@opr nvarchar(30)='add',
		@result money output,@result1 nvarchar(30) output)
		as
begin	
	if(@opr ='add')
	begin
	set @result = @num1 +@num2
	set @result1= 'Sum of two numbers is ' + CONVERT(nvarchar(30), @result)
	end
	else if(@opr ='sub')
	begin
	set @result = @num1 -@num2
	set @result1= 'Subtraction of two numbers is ' + CONVERT(nvarchar(30), @result)
	end
	else if(@opr ='div')
	begin
		set  @result = convert(money,@num1)/CONVERT(money,@num2)
		set @result1= 'Division of two numbers is ' + CONVERT(nvarchar(30), @result)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[SearchUsersOnName]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SearchUsersOnName](@name nvarchar(30))
as
select u.Id,u.[Name] as UserName,DOB,DOJ,
Gender= case Gender
when 'M' then 'Male'
when 'F' then 'Female'
end
,Mobile,Email,
r.[Name] as RoleName from 
Users u inner join  roles r
on u.RoleId=r.Id
where [Status]=1 and u.[Name] like @name + '%'
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 10/31/2022 1:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateUser](@mob nchar(10)='',@name nvarchar(50)='',@id int)
as
begin
	if(@mob <> '' and @name <> '')
		update Users set Mobile=@mob ,[Name]=@name where id=@id
	else if(@mob <> '' and @name ='')
		update Users set Mobile=@mob where id=@id
	else if(@mob = '' and @name <>'')
		update Users set [Name]=@name where id=@id
end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 1-new,2-Approved,3-Rejected,4-Shipped,5-Delivered' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Status'
GO

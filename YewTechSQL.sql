create database [YewtechnologyTask]
USE [YewtechnologyTask]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29-04-2023 18:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [bigint] NULL,
	[Department] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Salary] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmpId], [LastName], [FirstName], [DOB], [Email], [Mobile], [Department], [Designation], [Salary]) VALUES (1, N'Thimmanagaram', N'Anil', CAST(N'1894-07-05T00:00:00.000' AS DateTime), N'anil@gmail.com', 9828282828, N'Accounts', N'Peon', 6700)
GO
INSERT [dbo].[Employee] ([EmpId], [LastName], [FirstName], [DOB], [Email], [Mobile], [Department], [Designation], [Salary]) VALUES (6, N'Thimmanagaram', N'Anil', CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'thimmanagaramanil@gmail.com', 9542399823, N'Finance', N'Manager', 15000)
GO
INSERT [dbo].[Employee] ([EmpId], [LastName], [FirstName], [DOB], [Email], [Mobile], [Department], [Designation], [Salary]) VALUES (10, N'sssdcfdsfd', N'aaadfds', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'yewtec123@gmail.com', 8596321455, N'sales', N'Manager', 500)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Employee__A9D105349ADA3FC2]    Script Date: 29-04-2023 18:09:11 ******/
ALTER TABLE [dbo].[Employee] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployeeData]    Script Date: 29-04-2023 18:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 Create procedure [dbo].[DeleteEmployeeData] @Id int 
 As begin 
 Delete from Employee Where EmpId=@Id
 end 
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeData]    Script Date: 29-04-2023 18:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetEmployeeData]
 as
 begin
 Select* from Employee
 end 
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeDataById]    Script Date: 29-04-2023 18:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 Create procedure [dbo].[GetEmployeeDataById] @Id int
 as
 begin
 Select* from Employee Where EmpId=@Id
 end 
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployeeData]    Script Date: 29-04-2023 18:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure  [dbo].[InsertEmployeeData] @LastName varchar(50),@FirstName varchar(50),@DOB datetime ,
 @Email varchar(50),@Mobile Bigint ,@Department varchar(50),@Designation Varchar(50),@Salary bigint
 as 
 begin
 Insert into Employee Values (@LastName,@FirstName,@DOB,@Email,@Mobile,@Department,@Designation,@Salary)
 end 
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployeeData]    Script Date: 29-04-2023 18:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 Create procedure  [dbo].[UpdateEmployeeData]   @EmpId int, @LastName varchar(50),@FirstName varchar(50),@DOB datetime ,
 @Email varchar(50),@Mobile Bigint ,@Department varchar(50),@Designation Varchar(50),@Salary bigint
 as 
 begin
 Update  Employee set LastName=@LastName,FirstName=@FirstName,DOB=@DOB,Email=@Email,Mobile=@Mobile,Department=@Department,
 Designation=@Designation,Salary=@Salary Where EmpId=@EmpId
 end 
GO

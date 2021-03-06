USE [master]
GO
/****** Object:  Database [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703]    Script Date: 24/09/2020 2:23:03 PM ******/
CREATE DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703', FILENAME = N'C:\Users\Melis\CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703_log', FILENAME = N'C:\Users\Melis\CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ARITHABORT OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET  MULTI_USER 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET QUERY_STORE = OFF
GO
USE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/09/2020 2:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 24/09/2020 2:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightID] [int] IDENTITY(1,1) NOT NULL,
	[StaffID] [int] NOT NULL,
	[PlaneID] [int] NOT NULL,
	[Passengers] [int] NOT NULL,
	[Weight] [int] NOT NULL,
	[DepartDate] [datetime2](7) NOT NULL,
	[DepartTime] [datetime2](7) NOT NULL,
	[ArrivalDate] [datetime2](7) NOT NULL,
	[ArrivalTime] [datetime2](7) NOT NULL,
	[FlightStatus] [int] NOT NULL,
 CONSTRAINT [PK_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planes]    Script Date: 24/09/2020 2:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planes](
	[PlaneID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](30) NOT NULL,
	[PlaneNum] [nvarchar](12) NOT NULL,
	[Fit4Flight] [bit] NOT NULL,
	[MaxPassengers] [int] NOT NULL,
	[MaxWeight] [int] NOT NULL,
 CONSTRAINT [PK_Planes] PRIMARY KEY CLUSTERED 
(
	[PlaneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 24/09/2020 2:23:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Role] [int] NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200923222227_CADB', N'3.1.8')
GO
SET IDENTITY_INSERT [dbo].[Flights] ON 

INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (2, 2, 9, 65, 21120, CAST(N'2020-09-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T13:00:00.0000000' AS DateTime2), CAST(N'2020-09-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T15:30:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (5, 9, 2, 67, 11992, CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T11:00:00.0000000' AS DateTime2), CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T13:15:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (6, 3, 10, 120, 14512, CAST(N'2020-10-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T13:00:00.0000000' AS DateTime2), CAST(N'2020-10-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T18:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (7, 2, 9, 120, 33000, CAST(N'2020-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T19:00:00.0000000' AS DateTime2), CAST(N'2020-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T11:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (8, 4, 3, 71, 56116, CAST(N'2020-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T09:00:00.0000000' AS DateTime2), CAST(N'2020-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T11:35:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (10, 8, 3, 58, 98943, CAST(N'2020-10-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T07:30:00.0000000' AS DateTime2), CAST(N'2020-10-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T17:15:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Flights] ([FlightID], [StaffID], [PlaneID], [Passengers], [Weight], [DepartDate], [DepartTime], [ArrivalDate], [ArrivalTime], [FlightStatus]) VALUES (11, 7, 7, 56, 31017, CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T12:30:00.0000000' AS DateTime2), CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T16:10:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Flights] OFF
GO
SET IDENTITY_INSERT [dbo].[Planes] ON 

INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (2, N'Boeing 747-8', N'NZ18834', 1, 70, 38000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (3, N'Airbus A380', N'NZ901234', 1, 200, 86000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (4, N'Boeing 707', N'NZ90121', 0, 55, 66000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (5, N'Boeing 787', N'NZ89188', 1, 100, 78000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (6, N'Boeing 747-8', N'NZ23817', 1, 70, 38000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (7, N'Boeing 777', N'NZ17727', 1, 85, 71000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (8, N'Airbus A380', N'NZ921321', 0, 200, 86000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (9, N'Tupolev Tu-144', N'NZ98198', 1, 120, 73000)
INSERT [dbo].[Planes] ([PlaneID], [Model], [PlaneNum], [Fit4Flight], [MaxPassengers], [MaxWeight]) VALUES (10, N'Boeing 747-8', N'NZ31612', 0, 70, 38000)
SET IDENTITY_INSERT [dbo].[Planes] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (2, N'Melissa', N'Wolf', 0, N'022 455 455', N'melissa@gmail.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (3, N'Allen', N'Strong', 0, N'022 919 919', N'astrong@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (4, N'Vincent', N'Archer', 1, N'022 878 131', N'vincarcher@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (5, N'Rebecca', N'Woods', 3, N'022 717 533', N'rebeccaw@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (6, N'Lily', N'Patterson', 3, N'022 187 721', N'lilyawesome@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (7, N'Chris', N'White', 4, N'022 878 122', N'chriswhite@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (8, N'Mathew', N'Hammering', 2, N'022 300 400', N'mathewcool@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (9, N'Robert', N'Eborn', 0, N'022 188 611', N'ebornhidden@email.com')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [Role], [Phone], [Email]) VALUES (10, N'Taylor', N'Davis', 1, N'022 171 333', N'taylordavis@email.com')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
/****** Object:  Index [IX_Flights_PlaneID]    Script Date: 24/09/2020 2:23:03 PM ******/
CREATE NONCLUSTERED INDEX [IX_Flights_PlaneID] ON [dbo].[Flights]
(
	[PlaneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Flights_StaffID]    Script Date: 24/09/2020 2:23:03 PM ******/
CREATE NONCLUSTERED INDEX [IX_Flights_StaffID] ON [dbo].[Flights]
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [FK_Flights_Planes_PlaneID] FOREIGN KEY([PlaneID])
REFERENCES [dbo].[Planes] ([PlaneID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [FK_Flights_Planes_PlaneID]
GO
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [FK_Flights_Staff_StaffID] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [FK_Flights_Staff_StaffID]
GO
USE [master]
GO
ALTER DATABASE [CAirContext-22c27d07-be1e-4669-84ba-fa90e1bcb703] SET  READ_WRITE 
GO

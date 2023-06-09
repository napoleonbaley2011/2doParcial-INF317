USE [master]
GO
/****** Object:  Database [DW_ejercicio4]    Script Date: 08/06/2022 22:48:40 ******/
CREATE DATABASE [DW_ejercicio4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DW_ejercicio4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DW_ejercicio4.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DW_ejercicio4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DW_ejercicio4_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DW_ejercicio4] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_ejercicio4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DW_ejercicio4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET ARITHABORT OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DW_ejercicio4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DW_ejercicio4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DW_ejercicio4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DW_ejercicio4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DW_ejercicio4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DW_ejercicio4] SET  MULTI_USER 
GO
ALTER DATABASE [DW_ejercicio4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DW_ejercicio4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DW_ejercicio4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DW_ejercicio4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DW_ejercicio4]
GO
/****** Object:  Table [dbo].[D_alumno]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_alumno](
	[id_alm] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fec_nac] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[ci] [varchar](50) NULL,
 CONSTRAINT [PK_D_alumno] PRIMARY KEY CLUSTERED 
(
	[id_alm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_materia]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_materia](
	[id_mate] [int] NOT NULL,
	[materia] [varchar](50) NULL,
 CONSTRAINT [PK_D_materia] PRIMARY KEY CLUSTERED 
(
	[id_mate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_matricula]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_matricula](
	[id_mat] [int] NOT NULL,
	[tipo_mat] [varchar](50) NULL,
	[fec_mat] [varchar](50) NULL,
 CONSTRAINT [PK_D_matricula] PRIMARY KEY CLUSTERED 
(
	[id_mat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_nota]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_nota](
	[id_not] [int] NOT NULL,
	[nota] [int] NULL,
 CONSTRAINT [PK_D_nota] PRIMARY KEY CLUSTERED 
(
	[id_not] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[D_periodo]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_periodo](
	[id_periodo] [int] NOT NULL,
	[periodo] [int] NULL,
 CONSTRAINT [PK_D_periodo] PRIMARY KEY CLUSTERED 
(
	[id_periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[D_profesor]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_profesor](
	[id_prof] [int] NOT NULL,
	[nombre_prof] [varchar](50) NULL,
	[apellido_prof] [varchar](50) NULL,
	[email_prof] [varchar](50) NULL,
	[telefono] [int] NULL,
	[especialidad] [varchar](50) NULL,
 CONSTRAINT [PK_D_profesor] PRIMARY KEY CLUSTERED 
(
	[id_prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_turno]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_turno](
	[id_tur] [int] NOT NULL,
	[turno] [varchar](50) NULL,
 CONSTRAINT [PK_D_turno] PRIMARY KEY CLUSTERED 
(
	[id_tur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_usuario]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_usuario](
	[id_usuario] [int] NOT NULL,
	[usuario] [varchar](50) NULL,
	[pasword] [varchar](50) NULL,
 CONSTRAINT [PK_D_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[H_estudiante]    Script Date: 08/06/2022 22:48:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[H_estudiante](
	[id_estudiante] [int] IDENTITY(1,1) NOT NULL,
	[id_alm] [int] NULL,
	[id_mate] [int] NULL,
	[id_mat] [int] NULL,
	[id_not] [int] NULL,
	[id_periodo] [int] NULL,
	[id_prof] [int] NULL,
	[id_tur] [int] NULL,
	[id_usuario] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[materia] [varchar](50) NULL,
	[nota] [int] NULL,
	[periodo] [int] NULL,
 CONSTRAINT [PK_D_estudiante] PRIMARY KEY CLUSTERED 
(
	[id_estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_alumno] FOREIGN KEY([id_alm])
REFERENCES [dbo].[D_alumno] ([id_alm])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_alumno]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_materia] FOREIGN KEY([id_mate])
REFERENCES [dbo].[D_materia] ([id_mate])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_materia]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_matricula] FOREIGN KEY([id_mat])
REFERENCES [dbo].[D_matricula] ([id_mat])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_matricula]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_nota] FOREIGN KEY([id_not])
REFERENCES [dbo].[D_nota] ([id_not])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_nota]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_periodo] FOREIGN KEY([id_periodo])
REFERENCES [dbo].[D_periodo] ([id_periodo])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_periodo]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_profesor] FOREIGN KEY([id_prof])
REFERENCES [dbo].[D_profesor] ([id_prof])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_profesor]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_turno] FOREIGN KEY([id_tur])
REFERENCES [dbo].[D_turno] ([id_tur])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_turno]
GO
ALTER TABLE [dbo].[H_estudiante]  WITH CHECK ADD  CONSTRAINT [FK_H_estudiante_D_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[D_usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[H_estudiante] CHECK CONSTRAINT [FK_H_estudiante_D_usuario]
GO
USE [master]
GO
ALTER DATABASE [DW_ejercicio4] SET  READ_WRITE 
GO
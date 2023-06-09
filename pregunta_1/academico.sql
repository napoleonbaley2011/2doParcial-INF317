USE [master]
GO
/****** Object:  Database [academico]    Script Date: 08/06/2023 17:59:46 ******/
CREATE DATABASE [academico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'academico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\academico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'academico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\academico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [academico] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [academico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [academico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [academico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [academico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [academico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [academico] SET ARITHABORT OFF 
GO
ALTER DATABASE [academico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [academico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [academico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [academico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [academico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [academico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [academico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [academico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [academico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [academico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [academico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [academico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [academico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [academico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [academico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [academico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [academico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [academico] SET RECOVERY FULL 
GO
ALTER DATABASE [academico] SET  MULTI_USER 
GO
ALTER DATABASE [academico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [academico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [academico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [academico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [academico] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [academico] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'academico', N'ON'
GO
ALTER DATABASE [academico] SET QUERY_STORE = ON
GO
ALTER DATABASE [academico] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [academico]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumno](
	[id] [varchar](2) NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
 CONSTRAINT [PK_alumno] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alumnos_correo]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnos_correo](
	[ci] [varchar](20) NULL,
	[correo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alumnos_par]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumnos_par](
	[ci] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[docente]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docente](
	[id] [varchar](2) NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
 CONSTRAINT [PK_docente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materias]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materias](
	[pensum] [varchar](2) NULL,
	[sigla] [varchar](7) NOT NULL,
	[descripcion] [varchar](30) NULL,
 CONSTRAINT [PK_materias] PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nombre]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nombre](
	[m1] [int] NULL,
	[a2] [int] NULL,
	[r3] [int] NULL,
	[t4] [int] NULL,
	[h5] [int] NULL,
	[a6] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pensum]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pensum](
	[codigo] [varchar](2) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_pensum] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id] [int] NULL,
	[nombre] [varchar](20) NULL,
	[paterno] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thechos]    Script Date: 08/06/2023 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thechos](
	[idAlumno] [varchar](2) NULL,
	[fechaReg] [date] NULL,
	[sigla] [varchar](7) NULL,
	[idDocente] [varchar](2) NULL,
	[nota1] [float] NULL,
	[nota2] [float] NULL,
	[nota3] [float] NULL,
	[final] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'1', N'a', N'b')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'10', N'j', N'u')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'2', N'm', N's')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'3', N'c', N'k')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'4', N'd', N'o')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'5', N'e', N'p')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'6', N'f', N'q')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'7', N'g', N'r')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'8', N'h', N's')
INSERT [dbo].[alumno] ([id], [nombre], [apellido]) VALUES (N'9', N'i', N't')
GO
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12572041', N'aguila.adartse5@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9153405', N'luisangelaguilarfli@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10954401', N'gerson10107@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9915060', N'alejandroaguirremamani@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12575042', N'alanezkevin10@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13796926', N'angelalanoca24@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10065864', N'alberto.10065864@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12604362', N'aangel.alejo360@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11106028', N'rafael33ledezma@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9223917', N'maycol1414es@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6847601', N'alvarezluan796@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10910454', N'brunelcaguill54@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12640227', N'apazavidal68@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8432071', N'apazapablo74@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9112303', N'apazajhamil@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10015755', N'apazacristian376@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8481578', N'miguel.maag.85@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9907788', N'marceloaranibar23@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13607685', N'irvinarispe2004@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9113089', N'vleimeikeraruqui@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'7380600', N'ascuiraziel@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13873543', N'balboa1.1car@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11140708', N'epicrtrut@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'7081069', N'anapaolablanco22@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10422227', N'yasirwaldocaba@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6771590', N'aytoncalamani400@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14557336', N'calderon.14557336@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10901813', N'martincallemamani3@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6893069', N'henrystarmy@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10028735', N'AhesielCQ@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'7061965', N'juancamachofernandez848@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13966805', N'carichubiyailyn@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10085121', N'catacoraalan@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9107185', N'branddycazas@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10954667', N'andrei.chacon.giron@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6986347', N'challapaalexis@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9904927', N'davidchambiherrera@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6907978', N'jope.chavez@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9129103', N'jemanuel599minecraft@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10922366', N'dannychoque975@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10922359', N'maximilianochoque864@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6732751', N'nicolas.ochoa1697@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9932441', N'groverchoquemisa4@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9101117', N'josedanielchuquimialimachi@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12832907', N'willybalt.2017@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9192160', N'camila2164cc@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9230639', N'churata.9230639@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8466783', N'ronaldclares32@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9161843', N'colquetania4@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14417219', N'doblelacm@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9228556', N'condorena.9228556@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9134517', N'condoriapazacarlosesteban@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10025431', N'luiscondori274@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13760302', N'bobmusculoso2@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9518446', N'yosineycori3@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13023232', N'cubazapatadamaris17@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12763828', N'awb.041295@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6815846', N'sebastian68080381@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12609142', N'marcodepp666@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9927752', N'diazsalem63@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13732682', N'illanesibeth244@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13381868', N'andreaen005@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13375965', N'revux369@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13921802', N'enelamaritza@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6973187', N'groverfernandezapaza6@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13496742', N'anaiddiana01@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13789098', N'hugohectorfernandezperez4@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8468541', N'MFFR8468541@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13085075', N'gfernandezuruchi@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14418242', N'joelghu566@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9122863', N'josias.jffs123@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8357965', N'victorsfy@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6870514', N'jazminuwu007@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13495193', N'zaida.gc.26@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13694533', N'galvezpain@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8295762', N'rosgonz222@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13761007', N'demonhunter137aa@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6137110', N'totoxxz923@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10080941', N'ivangoyzuetapaco841@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13549395', N'carlosguachalla2017@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12542026', N'joseguarachi30@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13967993', N'guillen.zanabria.angeles77@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8421566', N'gutierrezarunichristian@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12423877', N'andresguti2003@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10912785', N'andreamaitegutierrezquiroga@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9166323', N'cristhiannelsonhuancaflores@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9951402', N'huancaedgar21@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9122777', N'jorgedavidhuascovelasco@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6814087', N'yonatanhuizapaz@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12542986', N'erick.ichuta.chuquimia@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9897120', N'ilaya.9897120@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8444723', N'aalexisjacor@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6835961', N'jhoelespro123@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8434822', N'melakaune@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14226048', N'kevindavidlanzaflores@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6946300', N'greco.mavric@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9227386', N'ar4520991@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13183483', N'16carliza@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13348515', N'vladimirlizarro@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10060941', N'vladimirlopez969@gmail.com')
GO
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'16309967', N'angelamagalilopezticona@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9974557', N'lunamenesesjuandiego@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12394642', N'davidmachicado919@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'16357803', N'uchiha.uwu@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13052935', N'Arielernesto333@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12392601', N'mayramamaniaruquipa@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'7059797', N'mamani.7059797@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12798602', N'herbertmamani66@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6821927', N'nayelymgba@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9135058', N'aldairmamaniloayza254@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10062562', N'mamaniblanca87@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10907160', N'juancarlosmamanipaco2004@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6790516', N'wiliansmamanipoma1@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9980632', N'jhovanikinoto@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12357776', N'tapia9850@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6946812', N'franzshandemamanivega@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9207912', N'joolumave13@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13120840', N'jaret.q.m@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9176061', N'estrellamartinez049@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9190038', N'marcialtupay@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10072717', N'maytaquisbertgiovanniariel@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6864853', N'vimg5943@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13087415', N'christianmedinatorrez@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14020511', N'angelmelen2003@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10066330', N'mendoza.10066330@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8372518', N'erwinmendoza915@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13759486', N'manuelaguirre3002@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13854200', N'conlizzet02@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13056632', N'sandrita9925@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14021557', N'fernando.aguilar.0812.com@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9991175', N'william.nina.reynaga@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13405555', N'hugoarmandoochoaquispe163@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10066199', N'dhery.123alejandro@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14229872', N'ortizfranz476@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14706977', N'ruben.osorio.it@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6982376', N'angel.ott.acero@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13759994', N'Fredang95@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11109077', N'joseluispacosaire1@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9162017', N'joselineselenapacovega@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13247980', N'kevinpalomino045@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10901496', N'jaleelpaucara@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9981095', N'josemarcelopomacalahumani@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10911876', N'portillodelgadowalter@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9079717', N'jhonnyquisbert045@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13763811', N'rubenjhonatanquisberthorihuela@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8432642', N'Haroldquispehilari567@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13694538', N'michaelstephenquispelipa@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9994503', N'new.rodry@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12449577', N'brayan.lt.80@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9201272', N'erickquispe124@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9253761', N'edwin.xpr@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10064445', N'gbelen.qmita@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'7072902', N'angelquisberta486@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10068556', N'edwinos300z@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9916390', N'amilcar1776@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10939787', N'mrm080506@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11066495', N'adrianramirez.miranda123@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6975213', N'cristianramosaruquipa3@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10085726', N'rwilly632@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12514293', N'adrianrioscallisaya21@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9212417', N'nicol.dr777@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9904882', N'arielmichaelrosalesmichme662@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'12668105', N'andresrdcv121103@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6860576', N'joaquinruizmachicado@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9160656', N'saavedraalejandro952@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13280897', N'ditoedumati@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9899294', N'jsanchezquentasi@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11087176', N'rodrisantis07@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10062254', N'jsinanichavez5@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10928540', N'josiassirpa89@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6853524', N'suxojhoselin@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10943336', N'tancara.10943336@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9896450', N'cristhianchisthian123@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13762802', N'Carlosticomar8@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9160410', N'gildaticonaluna@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10001137', N'rodrigoticona412@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10063691', N'darleyticona98@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'11063344', N'joel762988@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9373621', N'titoparimarceloangel@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9927604', N'posher0633k@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8482964', N'andredlotus98@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9919564', N'zamgfidelangel@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14289914', N'nathyusny09@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9999407', N'valebdsm1418@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13053265', N'mayerlysalas20@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9894658', N'tavo75858@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9154376', N'kevinaries797@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13764763', N'jv5058983@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9215368', N'velarde.9215368@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8468273', N'loanavelasquez13@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6941956', N'g.vera1234567890@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13759897', N'josh.vr65@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9899534', N'crusgamex2@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8846481', N'valentinavillafranqui@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'10939852', N'marcelpro365@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'8437656', N'mariabelenvillca4@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'9209697', N'andres.villegasa19@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'14017628', N'luis3000yujra@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'13184010', N'zapata.13184010@gmail.com')
INSERT [dbo].[alumnos_correo] ([ci], [correo]) VALUES (N'6851654', N'maguimedina44@gmail.com')
GO
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9915060')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10910454')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9113089')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10901813')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'6986347')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9101117')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9134517')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9927752')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8468541')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8295762')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'12423877')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8444723')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10060941')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'12798602')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'6946812')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'6851654')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9991175')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9162017')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'13694538')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9916390')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'12668105')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'6853524')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9373621')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9154376')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10939852')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10954401')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'6847601')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8481578')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'14557336')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10954667')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9932441')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9228556')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'12609142')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'13789098')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'13694533')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8421566')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9897120')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'13348515')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'7059797')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'12357776')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'13087415')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'14021557')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'11109077')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8432642')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10068556')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9904882')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'10928540')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'11063344')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'9894658')
INSERT [dbo].[alumnos_par] ([ci]) VALUES (N'8846481')
GO
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'1', N'z', N'f')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'10', N'ew', N'k')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'2', N'm', N's')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'3', N'a', N'b')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'4', N'x', N'h')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'5', N'w', N't')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'6', N'y', N'y')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'7', N'q', N'u')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'8', N'u', N'u')
INSERT [dbo].[docente] ([id], [nombre], [apellido]) VALUES (N'9', N't', N'k')
GO
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'02', N'INF-111', N'Programacion I')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'02', N'INF-121', N'Programacion II')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'02', N'INF-161', N'base de datos')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'02', N'LAB-111', N'Lab.Programacion I')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'01', N'LAB-121', N'Lab programacion II')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'02', N'MAT-114', N'Algebra I')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'01', N'MAT-115', N'calculo I')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'01', N'MAT-120', N'Programacion I')
INSERT [dbo].[materias] ([pensum], [sigla], [descripcion]) VALUES (N'01', N'MAT-270', N'Programacion II')
GO
INSERT [dbo].[nombre] ([m1], [a2], [r3], [t4], [h5], [a6]) VALUES (1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[nombre] ([m1], [a2], [r3], [t4], [h5], [a6]) VALUES (NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[nombre] ([m1], [a2], [r3], [t4], [h5], [a6]) VALUES (NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[nombre] ([m1], [a2], [r3], [t4], [h5], [a6]) VALUES (NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[nombre] ([m1], [a2], [r3], [t4], [h5], [a6]) VALUES (NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[pensum] ([codigo], [descripcion]) VALUES (N'01', N'Antiguo')
INSERT [dbo].[pensum] ([codigo], [descripcion]) VALUES (N'02', N'Nuevo')
GO
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (2, N'm', N's')
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (1, N'a', N'b')
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (3, N'a', N'b')
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (5, N'lizet', N'gandarillas')
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (6, N'carmela', N'calliconde')
INSERT [dbo].[persona] ([id], [nombre], [paterno]) VALUES (7, N'alejandro', N'larico')
GO
INSERT [dbo].[thechos] ([idAlumno], [fechaReg], [sigla], [idDocente], [nota1], [nota2], [nota3], [final]) VALUES (N'1', CAST(N'2021-05-19' AS Date), N'MAT-120', N'2', 12, 15, 10, 37)
INSERT [dbo].[thechos] ([idAlumno], [fechaReg], [sigla], [idDocente], [nota1], [nota2], [nota3], [final]) VALUES (N'1', CAST(N'2022-05-19' AS Date), N'MAT-270', N'2', 12, 15, 12, 39)
INSERT [dbo].[thechos] ([idAlumno], [fechaReg], [sigla], [idDocente], [nota1], [nota2], [nota3], [final]) VALUES (N'2', CAST(N'2020-05-19' AS Date), N'INF-111', N'2', 25, 15, 20, 60)
INSERT [dbo].[thechos] ([idAlumno], [fechaReg], [sigla], [idDocente], [nota1], [nota2], [nota3], [final]) VALUES (N'2', CAST(N'2020-05-20' AS Date), N'LAB-111', N'2', 25, 15, 40, 90)
INSERT [dbo].[thechos] ([idAlumno], [fechaReg], [sigla], [idDocente], [nota1], [nota2], [nota3], [final]) VALUES (N'2', CAST(N'2020-05-19' AS Date), N'INF-121', N'2', 25, 15, 21, 61)
GO
ALTER TABLE [dbo].[materias]  WITH CHECK ADD  CONSTRAINT [FK_materias_pensum] FOREIGN KEY([pensum])
REFERENCES [dbo].[pensum] ([codigo])
GO
ALTER TABLE [dbo].[materias] CHECK CONSTRAINT [FK_materias_pensum]
GO
ALTER TABLE [dbo].[thechos]  WITH CHECK ADD  CONSTRAINT [FK_thechos_alumno] FOREIGN KEY([idAlumno])
REFERENCES [dbo].[alumno] ([id])
GO
ALTER TABLE [dbo].[thechos] CHECK CONSTRAINT [FK_thechos_alumno]
GO
ALTER TABLE [dbo].[thechos]  WITH CHECK ADD  CONSTRAINT [FK_thechos_docente] FOREIGN KEY([idDocente])
REFERENCES [dbo].[docente] ([id])
GO
ALTER TABLE [dbo].[thechos] CHECK CONSTRAINT [FK_thechos_docente]
GO
ALTER TABLE [dbo].[thechos]  WITH CHECK ADD  CONSTRAINT [FK_thechos_materias] FOREIGN KEY([sigla])
REFERENCES [dbo].[materias] ([sigla])
GO
ALTER TABLE [dbo].[thechos] CHECK CONSTRAINT [FK_thechos_materias]
GO
USE [master]
GO
ALTER DATABASE [academico] SET  READ_WRITE 
GO

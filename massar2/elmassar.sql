USE [master]
GO
/****** Object:  Database [El_massar_db]    Script Date: 28/02/2022 09:10:31 ******/
CREATE DATABASE [El_massar_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'El_massar_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\El_massar_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'El_massar_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\El_massar_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [El_massar_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [El_massar_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [El_massar_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [El_massar_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [El_massar_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [El_massar_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [El_massar_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [El_massar_db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [El_massar_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [El_massar_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [El_massar_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [El_massar_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [El_massar_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [El_massar_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [El_massar_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [El_massar_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [El_massar_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [El_massar_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [El_massar_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [El_massar_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [El_massar_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [El_massar_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [El_massar_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [El_massar_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [El_massar_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [El_massar_db] SET  MULTI_USER 
GO
ALTER DATABASE [El_massar_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [El_massar_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [El_massar_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [El_massar_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [El_massar_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [El_massar_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [El_massar_db] SET QUERY_STORE = OFF
GO
USE [El_massar_db]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[code_categorie] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambres]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambres](
	[num_chambre] [int] IDENTITY(1,1) NOT NULL,
	[tel_chambre] [varchar](40) NULL,
	[code_categorie] [int] NULL,
	[num_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[nbre_etoile] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nbre_etoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[code_client] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](40) NULL,
	[prenom] [varchar](40) NULL,
	[adresse] [varchar](50) NULL,
	[ville] [varchar](40) NULL,
	[pays] [varchar](40) NULL,
	[CP] [varchar](20) NULL,
	[tel] [varchar](50) NULL,
	[email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommation]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommation](
	[num_consomation] [int] IDENTITY(1,1) NOT NULL,
	[date_consommation] [date] NULL,
	[heure_consommation] [varchar](30) NULL,
	[code_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_consomation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[num_hotel] [int] IDENTITY(1,1) NOT NULL,
	[nom_hotel] [varchar](30) NULL,
	[adresse_hotel] [varchar](30) NULL,
	[CP_hotel] [varchar](40) NULL,
	[tel_hotel] [varchar](40) NULL,
	[nbre_etoile] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offre]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offre](
	[id_offre] [int] IDENTITY(1,1) NOT NULL,
	[prix_prestation] [varchar](50) NULL,
	[code_prestation] [int] NULL,
	[num_hotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_offre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[code_prestation] [int] IDENTITY(1,1) NOT NULL,
	[designation_prestation] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[code_prestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[num_reservation] [int] IDENTITY(1,1) NOT NULL,
	[date_debut] [date] NULL,
	[date_fin] [date] NULL,
	[date_paye] [date] NULL,
	[montant] [varchar](50) NULL,
	[num_chambre] [int] NULL,
	[code_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[num_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifier]    Script Date: 28/02/2022 09:10:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifier](
	[id_tarifier] [int] IDENTITY(1,1) NOT NULL,
	[tarif_unitaire] [varchar](50) NULL,
	[code_categorie] [int] NULL,
	[nbre_etoile] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambres]  WITH CHECK ADD  CONSTRAINT [code_categorieFK] FOREIGN KEY([code_categorie])
REFERENCES [dbo].[categories] ([code_categorie])
GO
ALTER TABLE [dbo].[chambres] CHECK CONSTRAINT [code_categorieFK]
GO
ALTER TABLE [dbo].[chambres]  WITH CHECK ADD  CONSTRAINT [num_hotelFK] FOREIGN KEY([num_hotel])
REFERENCES [dbo].[hotel] ([num_hotel])
GO
ALTER TABLE [dbo].[chambres] CHECK CONSTRAINT [num_hotelFK]
GO
ALTER TABLE [dbo].[consommation]  WITH CHECK ADD  CONSTRAINT [code_clientFK] FOREIGN KEY([code_client])
REFERENCES [dbo].[clients] ([code_client])
GO
ALTER TABLE [dbo].[consommation] CHECK CONSTRAINT [code_clientFK]
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD  CONSTRAINT [nbre_etoileFK] FOREIGN KEY([nbre_etoile])
REFERENCES [dbo].[classes] ([nbre_etoile])
GO
ALTER TABLE [dbo].[hotel] CHECK CONSTRAINT [nbre_etoileFK]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [code_prestationFK] FOREIGN KEY([code_prestation])
REFERENCES [dbo].[prestation] ([code_prestation])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [code_prestationFK]
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD  CONSTRAINT [num_hotel1FK] FOREIGN KEY([num_hotel])
REFERENCES [dbo].[hotel] ([num_hotel])
GO
ALTER TABLE [dbo].[offre] CHECK CONSTRAINT [num_hotel1FK]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [code_client] FOREIGN KEY([code_client])
REFERENCES [dbo].[clients] ([code_client])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [code_client]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [num_chambreFK] FOREIGN KEY([num_chambre])
REFERENCES [dbo].[chambres] ([num_chambre])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [num_chambreFK]
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD  CONSTRAINT [code_categoryFK] FOREIGN KEY([code_categorie])
REFERENCES [dbo].[categories] ([code_categorie])
GO
ALTER TABLE [dbo].[tarifier] CHECK CONSTRAINT [code_categoryFK]
GO
ALTER TABLE [dbo].[tarifier]  WITH CHECK ADD  CONSTRAINT [nbre_etoilFK] FOREIGN KEY([nbre_etoile])
REFERENCES [dbo].[classes] ([nbre_etoile])
GO
ALTER TABLE [dbo].[tarifier] CHECK CONSTRAINT [nbre_etoilFK]
GO
USE [master]
GO
ALTER DATABASE [El_massar_db] SET  READ_WRITE 
GO

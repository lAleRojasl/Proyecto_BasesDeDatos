USE [master]
GO

/****** Object:  Database [Proyecto1BD]    Script Date: 5/8/2016 2:10:25 AM ******/
CREATE DATABASE [Proyecto1BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto1BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Proyecto1BD.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Proyecto1BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Proyecto1BD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Proyecto1BD] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto1BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Proyecto1BD] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Proyecto1BD] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Proyecto1BD] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Proyecto1BD] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Proyecto1BD] SET ARITHABORT OFF 
GO

ALTER DATABASE [Proyecto1BD] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Proyecto1BD] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Proyecto1BD] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Proyecto1BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Proyecto1BD] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Proyecto1BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Proyecto1BD] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Proyecto1BD] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Proyecto1BD] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Proyecto1BD] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Proyecto1BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Proyecto1BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Proyecto1BD] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Proyecto1BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Proyecto1BD] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Proyecto1BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Proyecto1BD] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Proyecto1BD] SET RECOVERY FULL 
GO

ALTER DATABASE [Proyecto1BD] SET  MULTI_USER 
GO

ALTER DATABASE [Proyecto1BD] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Proyecto1BD] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Proyecto1BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Proyecto1BD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Proyecto1BD] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Proyecto1BD] SET  READ_WRITE 
GO



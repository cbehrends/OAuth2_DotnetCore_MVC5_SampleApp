USE [master]
GO

CREATE DATABASE [Tokens]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tokens', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tokens.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tokens_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tokens_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Tokens] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tokens].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Tokens] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Tokens] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Tokens] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Tokens] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Tokens] SET ARITHABORT OFF 
GO

ALTER DATABASE [Tokens] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Tokens] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Tokens] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Tokens] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Tokens] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Tokens] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Tokens] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Tokens] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Tokens] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Tokens] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Tokens] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Tokens] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Tokens] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Tokens] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Tokens] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Tokens] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Tokens] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Tokens] SET RECOVERY FULL 
GO

ALTER DATABASE [Tokens] SET  MULTI_USER 
GO

ALTER DATABASE [Tokens] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Tokens] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Tokens] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Tokens] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Tokens] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Tokens] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Tokens] SET  READ_WRITE 
GO


USE [Tokens]
GO

/****** Object:  Table [dbo].[Token]    Script Date: 7/2/2019 1:12:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Token](
	[RealmId] [nvarchar](50) NOT NULL,
	[AccessToken] [nvarchar](1000) NOT NULL,
	[RefreshToken] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED 
(
	[RealmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


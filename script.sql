USE [master]
GO
/****** Object:  Database [sqlinjectionDB]    Script Date: 2/11/2022 12:25:16 AM ******/
CREATE DATABASE [sqlinjectionDB]
GO
ALTER DATABASE [sqlinjectionDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sqlinjectionDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sqlinjectionDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sqlinjectionDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sqlinjectionDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sqlinjectionDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sqlinjectionDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sqlinjectionDB] SET  MULTI_USER 
GO
ALTER DATABASE [sqlinjectionDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sqlinjectionDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sqlinjectionDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sqlinjectionDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sqlinjectionDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sqlinjectionDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [sqlinjectionDB] SET QUERY_STORE = OFF
GO
USE [sqlinjectionDB]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/11/2022 12:25:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Fullname] [nchar](80) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [sqlinjectionDB] SET  READ_WRITE 
GO
USE [sqlinjectionDB]
GO

INSERT INTO [dbo].[Users]
           ([Username]
           ,[Password]
           ,[Fullname])
     VALUES
           ('nguyenthaihoc99',
           'nguyenthaihoc',
           'Nguyen Thai Hoc')
GO

INSERT INTO [dbo].[Users]
           ([Username]
           ,[Password]
           ,[Fullname])
     VALUES
           ('letrandong99',
           'letrandong',
           'Le Tran Dong')
GO
INSERT INTO [dbo].[Users]
           ([Username]
           ,[Password]
           ,[Fullname])
     VALUES
           ('truongtansang97',
           'truongtansang',
           'Truong Tan Sang')
GO


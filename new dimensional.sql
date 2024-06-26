USE [master]
GO
/****** Object:  Database [Dimensional_Tienda]    Script Date: 3/7/2023 08:52:09 ******/
CREATE DATABASE [Dimensional_Tienda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dimensional_Tienda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dimensional_Tienda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dimensional_Tienda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dimensional_Tienda_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dimensional_Tienda] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dimensional_Tienda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dimensional_Tienda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dimensional_Tienda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dimensional_Tienda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dimensional_Tienda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dimensional_Tienda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET RECOVERY FULL 
GO
ALTER DATABASE [Dimensional_Tienda] SET  MULTI_USER 
GO
ALTER DATABASE [Dimensional_Tienda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dimensional_Tienda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dimensional_Tienda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dimensional_Tienda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dimensional_Tienda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dimensional_Tienda] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dimensional_Tienda', N'ON'
GO
ALTER DATABASE [Dimensional_Tienda] SET QUERY_STORE = OFF
GO
USE [Dimensional_Tienda]
GO
/****** Object:  Table [dbo].[Dim_Articulos]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Articulos](
	[ID_articulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Id_marca] [int] NOT NULL,
	[Marca] [nvarchar](50) NULL,
	[ID_categoria] [int] NULL,
	[Categoria] [nvarchar](50) NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[ID_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Empleado]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Empleado](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Dim_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Proveedor]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Proveedor](
	[Id_proveedor] [int] NOT NULL,
	[Nombre_proveedor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Tiempo]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Tiempo](
	[Id_tiempo] [int] IDENTITY(1,1) NOT NULL,
	[Año] [nvarchar](50) NULL,
	[Mes] [nvarchar](50) NULL,
	[Num_mes] [nvarchar](50) NULL,
	[Num_semana_mes] [nvarchar](50) NULL,
	[Dia_mes] [nvarchar](50) NULL,
	[Num_dia] [nvarchar](50) NULL,
	[Semestre] [nvarchar](50) NULL,
	[Num_semestre] [nvarchar](50) NULL,
	[Num_trimestre] [nvarchar](50) NULL,
	[Num_semana_año] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dim_Tiempo] PRIMARY KEY CLUSTERED 
(
	[Id_tiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Ingresos]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Ingresos](
	[Id_Ingreso] [int] IDENTITY(1,1) NOT NULL,
	[Id_Proveedor] [int] NOT NULL,
	[Id_Articulos] [int] NOT NULL,
	[Id_Tiempo] [int] NOT NULL,
	[Cantidad_Producto] [int] NOT NULL,
	[Precio_Producto] [int] NOT NULL,
	[Total_venta] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[Id_Ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facts_Ventas]    Script Date: 3/7/2023 08:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facts_Ventas](
	[ID_Ventas] [int] IDENTITY(1,1) NOT NULL,
	[ID_articulo] [int] NOT NULL,
	[ID_Tiempo] [int] NOT NULL,
	[Cantidad_Prod_Vendido] [int] NOT NULL,
	[ID_empleado] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[ID_Ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Ingresos_Dim_Tiempo] FOREIGN KEY([Id_Tiempo])
REFERENCES [dbo].[Dim_Tiempo] ([Id_tiempo])
GO
ALTER TABLE [dbo].[Fact_Ingresos] CHECK CONSTRAINT [FK_Fact_Ingresos_Dim_Tiempo]
GO
ALTER TABLE [dbo].[Fact_Ingresos]  WITH NOCHECK ADD  CONSTRAINT [FK_Ingresos_Articulos] FOREIGN KEY([Id_Articulos])
REFERENCES [dbo].[Dim_Articulos] ([ID_articulo])
GO
ALTER TABLE [dbo].[Fact_Ingresos] CHECK CONSTRAINT [FK_Ingresos_Articulos]
GO
ALTER TABLE [dbo].[Fact_Ingresos]  WITH NOCHECK ADD  CONSTRAINT [FK_Ingresos_Dim_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [dbo].[Dim_Empleado] ([ID_Empleado])
GO
ALTER TABLE [dbo].[Fact_Ingresos] CHECK CONSTRAINT [FK_Ingresos_Dim_Empleado]
GO
ALTER TABLE [dbo].[Fact_Ingresos]  WITH NOCHECK ADD  CONSTRAINT [FK_Ingresos_Proveedor] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Dim_Proveedor] ([Id_proveedor])
GO
ALTER TABLE [dbo].[Fact_Ingresos] CHECK CONSTRAINT [FK_Ingresos_Proveedor]
GO
ALTER TABLE [dbo].[Facts_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Facts_Ventas_Dim_Tiempo] FOREIGN KEY([ID_Tiempo])
REFERENCES [dbo].[Dim_Tiempo] ([Id_tiempo])
GO
ALTER TABLE [dbo].[Facts_Ventas] CHECK CONSTRAINT [FK_Facts_Ventas_Dim_Tiempo]
GO
ALTER TABLE [dbo].[Facts_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_Ventas_Articulos] FOREIGN KEY([ID_articulo])
REFERENCES [dbo].[Dim_Articulos] ([ID_articulo])
GO
ALTER TABLE [dbo].[Facts_Ventas] CHECK CONSTRAINT [FK_Ventas_Articulos]
GO
ALTER TABLE [dbo].[Facts_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_Ventas_Dim_Empleado] FOREIGN KEY([ID_empleado])
REFERENCES [dbo].[Dim_Empleado] ([ID_Empleado])
GO
ALTER TABLE [dbo].[Facts_Ventas] CHECK CONSTRAINT [FK_Ventas_Dim_Empleado]
GO
USE [master]
GO
ALTER DATABASE [Dimensional_Tienda] SET  READ_WRITE 
GO

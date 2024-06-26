USE [master]
GO
/****** Object:  Database [Tienda_ropa]    Script Date: 3 jun. 2023 09:48:10 ******/
CREATE DATABASE [Tienda_ropa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tienda_ropa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tienda_ropa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tienda_ropa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tienda_ropa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tienda_ropa] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tienda_ropa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tienda_ropa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tienda_ropa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tienda_ropa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tienda_ropa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tienda_ropa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tienda_ropa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tienda_ropa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tienda_ropa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tienda_ropa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tienda_ropa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tienda_ropa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tienda_ropa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tienda_ropa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tienda_ropa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tienda_ropa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tienda_ropa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tienda_ropa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tienda_ropa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tienda_ropa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tienda_ropa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tienda_ropa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tienda_ropa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tienda_ropa] SET RECOVERY FULL 
GO
ALTER DATABASE [Tienda_ropa] SET  MULTI_USER 
GO
ALTER DATABASE [Tienda_ropa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tienda_ropa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tienda_ropa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tienda_ropa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tienda_ropa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tienda_ropa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tienda_ropa', N'ON'
GO
ALTER DATABASE [Tienda_ropa] SET QUERY_STORE = OFF
GO
USE [Tienda_ropa]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id_articulo] [int] IDENTITY(1,1) NOT NULL,
	[Id_categoria] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Estado] [int] NOT NULL,
	[Id_promocion] [int] NOT NULL,
 CONSTRAINT [PK_articulos] PRIMARY KEY CLUSTERED 
(
	[Id_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[Id_bodega] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_bodega] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Bodega] PRIMARY KEY CLUSTERED 
(
	[Id_bodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [nvarchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colores]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colores](
	[Id_color] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Estado] [binary](4) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Colores] PRIMARY KEY CLUSTERED 
(
	[Id_color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuracion]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuracion](
	[Nombre_negocio] [text] NOT NULL,
	[Dirreccion] [text] NOT NULL,
	[Correo_electronico] [text] NOT NULL,
	[telefono_1] [bigint] NOT NULL,
	[telefono_2] [bigint] NOT NULL,
	[Eslogan] [text] NOT NULL,
	[tipo_de_cambio] [money] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_ingresos]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_ingresos](
	[Id_detalle_ingreso] [int] IDENTITY(1,1) NOT NULL,
	[Id_ingreso] [int] NOT NULL,
	[Id_articulos] [nvarchar](50) NOT NULL,
	[Id_talla] [int] NOT NULL,
	[Id_color] [int] NOT NULL,
	[Id_marca] [int] NOT NULL,
	[Id_material] [int] NOT NULL,
	[Id_estilo] [int] NOT NULL,
	[Id_diseño] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio_proovedor] [money] NOT NULL,
	[Iva] [float] NOT NULL,
	[Descuento] [float] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_detalle_ingresos] PRIMARY KEY CLUSTERED 
(
	[Id_detalle_ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles_venta]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_venta](
	[Id_detalles_venta] [int] IDENTITY(1,1) NOT NULL,
	[Id_ventas] [int] NOT NULL,
	[Id_articulo] [int] NOT NULL,
	[Id_marca] [int] NOT NULL,
	[Id_color] [int] NOT NULL,
	[Id_estilo] [int] NOT NULL,
	[Id_material] [int] NOT NULL,
	[Id_talla] [int] NOT NULL,
	[Id_diseño] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[Subtotal] [int] NOT NULL,
	[Iva] [int] NOT NULL,
	[Descuento] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_detalles_venta] PRIMARY KEY CLUSTERED 
(
	[Id_detalles_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diseño]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diseño](
	[Id_diseño] [int] IDENTITY(1,1) NOT NULL,
	[Diseño] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Diseño] PRIMARY KEY CLUSTERED 
(
	[Id_diseño] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estilos]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estilos](
	[Id_estilos] [int] IDENTITY(1,1) NOT NULL,
	[Estilo] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Estilos] PRIMARY KEY CLUSTERED 
(
	[Id_estilos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingresos]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[Id_ingresos] [int] IDENTITY(1,1) NOT NULL,
	[Id_usuario] [int] NOT NULL,
	[Id_proveedor] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Iva] [float] NOT NULL,
	[Descuento] [float] NOT NULL,
	[Subtotal] [float] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[Id_ingresos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[Id_marca] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [nvarchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[Id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales](
	[Id_material] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Materiales] PRIMARY KEY CLUSTERED 
(
	[Id_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercancia Dañada]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercancia Dañada](
	[id_Mercancia_dañada] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[id_articulo] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[Daños] [text] NOT NULL,
	[Estado] [binary](1) NOT NULL,
	[Descripcion] [text] NOT NULL,
 CONSTRAINT [PK_Mercancia Dñada] PRIMARY KEY CLUSTERED 
(
	[id_Mercancia_dañada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promociones](
	[Id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[Promocion] [nvarchar](50) NOT NULL,
	[Fecha_inicio] [nvarchar](50) NOT NULL,
	[Fecha_final] [nvarchar](50) NOT NULL,
	[Descuento] [int] NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_promocion] PRIMARY KEY CLUSTERED 
(
	[Id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[Dirreccion] [nvarchar](150) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [nvarchar](150) NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id_stock] [int] IDENTITY(1,1) NOT NULL,
	[Id_articulo] [int] NOT NULL,
	[Id_usuario] [int] NOT NULL,
	[Id_color] [int] NOT NULL,
	[Id_marca] [int] NOT NULL,
	[Id_talla] [int] NOT NULL,
	[Id_estilo] [int] NOT NULL,
	[Id_material] [int] NOT NULL,
	[Id_diseño] [int] NOT NULL,
	[Descuento] [int] NOT NULL,
	[Descuento_maximo] [float] NOT NULL,
	[Id_bodega] [int] NOT NULL,
	[Costo] [money] NOT NULL,
	[Precio_venta] [money] NOT NULL,
	[Estado] [binary](1) NOT NULL,
	[Daños] [binary](1) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Id_ingreso] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id_stock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tallas]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tallas](
	[Id_talla] [int] IDENTITY(1,1) NOT NULL,
	[Talla] [nvarchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Tallas] PRIMARY KEY CLUSTERED 
(
	[Id_talla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[Correo] [nvarchar](150) NOT NULL,
	[Contraseña] [text] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id_ventas] [int] IDENTITY(1,1) NOT NULL,
	[Cliente] [nvarchar](50) NOT NULL,
	[Fecha] [nvarchar](150) NOT NULL,
	[Descuento] [int] NOT NULL,
	[Iva] [int] NOT NULL,
	[Subtotal] [int] NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[Id_ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_articulos_Categorias] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[Categorias] ([Id_categoria])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_articulos_Categorias]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_articulos_Promociones] FOREIGN KEY([Id_promocion])
REFERENCES [dbo].[Promociones] ([Id_promocion])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_articulos_Promociones]
GO
ALTER TABLE [dbo].[Detalle_ingresos]  WITH CHECK ADD  CONSTRAINT [FK_detalle_ingresos_Ingresos] FOREIGN KEY([Id_ingreso])
REFERENCES [dbo].[Ingresos] ([Id_ingresos])
GO
ALTER TABLE [dbo].[Detalle_ingresos] CHECK CONSTRAINT [FK_detalle_ingresos_Ingresos]
GO
ALTER TABLE [dbo].[Detalles_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalles_venta_ventas] FOREIGN KEY([Id_ventas])
REFERENCES [dbo].[Ventas] ([Id_ventas])
GO
ALTER TABLE [dbo].[Detalles_venta] CHECK CONSTRAINT [FK_detalles_venta_ventas]
GO
ALTER TABLE [dbo].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Proveedor] FOREIGN KEY([Id_proveedor])
REFERENCES [dbo].[Proveedores] ([Id_proveedor])
GO
ALTER TABLE [dbo].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Proveedor]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_articulos] FOREIGN KEY([Id_articulo])
REFERENCES [dbo].[Articulos] ([Id_articulo])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_articulos]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Bodega] FOREIGN KEY([Id_bodega])
REFERENCES [dbo].[Bodega] ([Id_bodega])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Bodega]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Colores] FOREIGN KEY([Id_color])
REFERENCES [dbo].[Colores] ([Id_color])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Colores]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_detalle_ingresos] FOREIGN KEY([Id_articulo])
REFERENCES [dbo].[Detalle_ingresos] ([Id_detalle_ingreso])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_detalle_ingresos]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_detalles_venta] FOREIGN KEY([Id_articulo])
REFERENCES [dbo].[Detalles_venta] ([Id_detalles_venta])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_detalles_venta]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Diseño] FOREIGN KEY([Id_diseño])
REFERENCES [dbo].[Diseño] ([Id_diseño])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Diseño]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Estilos] FOREIGN KEY([Id_estilo])
REFERENCES [dbo].[Estilos] ([Id_estilos])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Estilos]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Marcas] FOREIGN KEY([Id_marca])
REFERENCES [dbo].[Marcas] ([Id_marca])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Marcas]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Materiales] FOREIGN KEY([Id_material])
REFERENCES [dbo].[Materiales] ([Id_material])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Materiales]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Tallas] FOREIGN KEY([Id_talla])
REFERENCES [dbo].[Tallas] ([Id_talla])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Tallas]
GO
/****** Object:  StoredProcedure [dbo].[Categoria_Insertar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Categoria_Insertar]
(
@Nombre varchar(50),
@Descripcion varchar(150),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Categorias WHERE categoria = @Nombre)

		insert into Categorias(categoria,descripcion) values (
		@Nombre,@Descripcion
		)
	ELSE
		SET @Resultado = 0
	
end


GO
/****** Object:  StoredProcedure [dbo].[Categorias_eliminar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Categorias_eliminar]
@cod int,
@Resultado bit output

as

SET @Resultado = 1
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (select id_categoria from Categorias where id_categoria=@cod)

		delete from Categorias where  id_categoria = @cod

	ELSE
		SET @Resultado = 0



GO
/****** Object:  StoredProcedure [dbo].[Categorias_modificar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Categorias_modificar]
(

@IdCategoria int,
@NombreCat varchar(50),
@Descripcion varchar(150),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Categorias WHERE categoria =@NombreCat and id_categoria != @IdCategoria)
		
		update Categorias set 
		categoria = @NombreCat,
		descripcion = @Descripcion,
		estado = @Activo
		where id_categoria = @IdCategoria

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Categorias_mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Categorias_mostrar]

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_categoria, categoria, Descripcion, Estado from Categorias
END
GO
/****** Object:  StoredProcedure [dbo].[Colores_Actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Colores_Actualizar]

(

@IdColor int,
@NombreCat varchar(50),
@Descripcion varchar(150),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Colores WHERE Color=@NombreCat and id_color != @IdColor)
		
		update Colores set 
		Color = @NombreCat,
		descripcion = @Descripcion,
		estado = @Activo
		where id_color = @IdColor

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Colores_eliminar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Colores_eliminar]
@cod int,
@Resultado bit output

as

SET @Resultado = 1
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS (select id_color from Colores where id_color=@cod)

		delete from Colores where  id_color = @cod

	ELSE
		SET @Resultado = 0
GO
/****** Object:  StoredProcedure [dbo].[Colores_Insertar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Colores_Insertar]


(
@Nombre varchar(50),
@Descripcion varchar(150),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Colores WHERE Color = @Nombre)

		insert into Colores(Color,descripcion) values (
		@Nombre,@Descripcion
		)
	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Colores_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Colores_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_categoria, categoria, Descripcion, Estado from Categorias
END
GO
/****** Object:  StoredProcedure [dbo].[Diseños_actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Diseños_actualizar]


(

@IdDiseño int,
@Nombre varchar(50),
@Descripcion varchar(150),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Diseño WHERE Diseño =@Nombre and id_diseño != @IdDiseño)
		
		update Diseño set 
		Diseño = @Nombre,
		descripcion = @Descripcion,
		estado = @Activo
		where id_diseño = @IdDiseño

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Diseños_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Diseños_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_diseño,Diseño , Descripcion, Estado from Diseño
END
GO
/****** Object:  StoredProcedure [dbo].[Marcas_actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Marcas_actualizar]


(

@IdMarca int,
@Nombre varchar(50),
@Descripcion varchar(150),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Marcas WHERE marca =@Nombre and id_marca != @IdMarca)
		
		update Marcas set 
		marca = @Nombre,
		descripcion = @Descripcion,
		estado = @Activo
		where id_marca= @IdMarca

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Marcas_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Marcas_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_marca,marca , Descripcion, Estado from Marcas
END
GO
/****** Object:  StoredProcedure [dbo].[Materiales_actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Materiales_actualizar]


(

@IdMateriales int,
@Nombre varchar(50),
@Descripcion varchar(150),
@Activo bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Materiales WHERE Material =@Nombre and id_material != @IdMateriales)
		
		update Materiales set 
		Material = @Nombre,
		descripcion = @Descripcion,
		estado = @Activo
		where id_material= @IdMateriales

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Materiales_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Materiales_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_material,Material, Descripcion, Estado from Materiales
END
GO
/****** Object:  StoredProcedure [dbo].[Promociones_actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Promociones_actualizar]


(

@IdPromocion int,
@Nombre varchar(50),
@Descripcion varchar(150),
@Activo bit,
@fechai datetime,
@fechaf datetime,
@descuento float,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Promociones WHERE promocion =@Nombre and id_promocion != @IdPromocion)
		
		update Promociones set 
		promocion = @Nombre,
		descripcion = @Descripcion,
		estado = @Activo,
		fecha_inicio=@fechai,
		fecha_final=@fechaf,
		@descuento=@descuento
		
		where id_promocion= @IdPromocion

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Promociones_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Promociones_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_promocion,promocion,fecha_inicio,fecha_final ,descuento, Descripcion, Estado from Promociones
END
GO
/****** Object:  StoredProcedure [dbo].[Proveedor_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Proveedor_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_proveedor,Nombre,Telefono, correo,dirreccion, Estado from Proveedor
END
GO
/****** Object:  StoredProcedure [dbo].[Proveedores_actualizar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proveedores_actualizar]


(

@IdProveedor int,
@Nombre varchar(50),
@Descripcion varchar(150),
@Activo bit,
@tel bigint,
@correo nvarchar(50),
@dir nvarchar(50),
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM Proveedor WHERE Nombre =@Nombre and id_proveedor != @IdProveedor)
		
		update Proveedor set 
		Nombre = @Nombre,
		descripcion = @Descripcion,
		Telefono = @tel,
		correo=@correo,
		dirreccion=@dir,
		estado = @Activo
		
		
		
		where id_proveedor= @IdProveedor

	ELSE
		SET @Resultado = 0

end
GO
/****** Object:  StoredProcedure [dbo].[Tallas_Mostrar]    Script Date: 3 jun. 2023 09:48:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Tallas_Mostrar] 
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT id_talla,Talla,Descripcion, Estado from Tallas
END
GO
USE [master]
GO
ALTER DATABASE [Tienda_ropa] SET  READ_WRITE 
GO

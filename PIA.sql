/*tablas*/
USE [Lab. Base Datos]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 26/10/2018 16:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camion](
	[id_Num_Comercial] [int] NOT NULL,
	[Placas] [varchar](15) NOT NULL,
	[id_Tipo_Camion] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Camion] PRIMARY KEY CLUSTERED 
(
	[id_Num_Comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 26/10/2018 16:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[id_Empleado] [int] NOT NULL,
	[Categ_Licencia] [varchar](2) NOT NULL,
	[Num_Licencia] [varchar](20) NOT NULL,
	[id_Ruta] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 26/10/2018 16:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_Direccion] [int] NOT NULL,
	[Calle] [varchar](40) NOT NULL,
	[Num_Int] [int] NOT NULL,
	[Colonia] [varchar](40) NOT NULL,
	[Municipio] [varchar](40) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 26/10/2018 16:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[PA] [varchar](20) NOT NULL,
	[SA] [varchar](20) NOT NULL,
	[id_Direccion] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[RFC] [varchar](15) NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 26/10/2018 16:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[id_Ruta] [int] NOT NULL,
	[Cd_Origen] [varchar](50) NOT NULL,
	[Cd_Destino] [varchar](50) NOT NULL,
	[id_Num_Com_Camion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[id_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/*relaciones*/
USE [Lab. Base Datos]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 26/10/2018 23:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camion](
	[id_Num_Comercial] [int] NOT NULL,
	[Placas] [varchar](15) NOT NULL,
	[id_Tipo_Camion] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Camion] PRIMARY KEY CLUSTERED 
(
	[id_Num_Comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 26/10/2018 23:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[id_Empleado] [int] NOT NULL,
	[Categ_Licencia] [varchar](2) NOT NULL,
	[Num_Licencia] [varchar](20) NOT NULL,
	[id_Ruta] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colonia]    Script Date: 26/10/2018 23:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colonia](
	[id_Colonia] [int] NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[id_Municipio] [int] NOT NULL,
 CONSTRAINT [PK_Colonia] PRIMARY KEY CLUSTERED 
(
	[id_Colonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 26/10/2018 23:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[id_Direccion] [int] NOT NULL,
	[Calle] [varchar](40) NOT NULL,
	[Num_Interno] [int] NOT NULL,
	[id_Colonia] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 26/10/2018 23:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_Empleado] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[PA] [varchar](20) NOT NULL,
	[SA] [varchar](20) NOT NULL,
	[id_Direccion] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[RFC] [varchar](15) NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 26/10/2018 23:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[id_Estado] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[id_Pais] [int] NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 26/10/2018 23:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[id_Municipio] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[id_Estado] [int] NOT NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[id_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 26/10/2018 23:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id_Pais] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 26/10/2018 23:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[id_Ruta] [int] NOT NULL,
	[Cd_Origeen] [int] NOT NULL,
	[Cd_Destino] [int] NOT NULL,
	[id_Num_Comercial] [int] NOT NULL,
 CONSTRAINT [PK_ruta] PRIMARY KEY CLUSTERED 
(
	[id_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Empleado] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleado] ([id_Empleado])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Empleado]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_Chofer_Ruta] FOREIGN KEY([id_Ruta])
REFERENCES [dbo].[Ruta] ([id_Ruta])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_Chofer_Ruta]
GO
ALTER TABLE [dbo].[Colonia]  WITH CHECK ADD  CONSTRAINT [FK_Colonia_Municipio] FOREIGN KEY([id_Municipio])
REFERENCES [dbo].[Municipio] ([id_Municipio])
GO
ALTER TABLE [dbo].[Colonia] CHECK CONSTRAINT [FK_Colonia_Municipio]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Colonia] FOREIGN KEY([id_Colonia])
REFERENCES [dbo].[Colonia] ([id_Colonia])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Colonia]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Direccion] FOREIGN KEY([id_Direccion])
REFERENCES [dbo].[Direccion] ([id_Direccion])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Direccion]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [FK_Estado_Pais] FOREIGN KEY([id_Pais])
REFERENCES [dbo].[Pais] ([id_Pais])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [FK_Estado_Pais]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Estado] FOREIGN KEY([id_Estado])
REFERENCES [dbo].[Estado] ([id_Estado])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Estado]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Camion] FOREIGN KEY([id_Num_Comercial])
REFERENCES [dbo].[Camion] ([id_Num_Comercial])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Camion]
GO
/*INSERT, UPDATE, DELETE*/
GO
//*INSERT*//
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (1, N'931-FT-5', N'2da Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (2, N'481-ER-3', N'2da Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (3, N'348-AS-1', N'VIP')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (4, N'205-WH-0', N'2da Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (5, N'564-RT-2', N'VIP')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (6, N'332-TY-9', N'2da Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (7, N'740-JK-5', N'1era Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (8, N'216-ND-5', N'1era Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (9, N'893-BC-6', N'VIP')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (10, N'016-SW-1', N'3era Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (11, N'253-HI-2', N'VIP')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (12, N'548-WA-7', N'3era Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (13, N'689-GH-0', N'2da Clase')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (14, N'114-DS-2', N'VIP')
INSERT [dbo].[Camion] ([id_Num_Comercial], [Placas], [id_Tipo_Camion]) VALUES (15, N'443-LK-7', N'1era Clase')

INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0001, N'B1', N'98723475' , 03)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0002, N'B1', N'55342674' , 01)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0003, N'B1', N'43266538' , 09)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0004, N'B1', N'38954332' , 02)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0005, N'B1', N'12287658' , 05)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0006, N'B1', N'97423445' , 03)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0007, N'B1', N'59600493' , 01)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0008, N'B1', N'77849204' , 06)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0009, N'B1', N'24950384' , 04)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0010, N'B1', N'66543334' , 07)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0011, N'B1', N'22348789' , 03)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0012, N'B1', N'44532245' , 02)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0013, N'B1', N'67842223' , 07)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0014, N'B1', N'12985578' , 05)
INSERT [dbo].[Chofer] ([id_Empleado], [Categ_Licencia], [Num_Licencia], [id_Ruta]) VALUES (0015, N'B1', N'05946322' , 02)

INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (3, N'Ejido', 420 , N'Agua Nueva', N'Guadalupe', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (4, N'Inclan', 5645 , N'Alamos de Corregidora', N'Monterrey', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (5, N'Cadiz', 243 , N'Calderon', N'Juarez', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (6, N'Eden', 145 , N'Hacienda las Campanas', N'San Pedro Garza', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (7, N'Ladera', 368 , N'Unidad del Pueblo', N'Monterrey', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (8, N'Talio', 2427 , N'Naranjos', N'General Escobedo', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (9, N'Real', 3337 , N'Hacienda del Roble', N'San Nicolas de los Garza', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (10, N'Jade', 2983 , N'Balcones de San Miguel', N'Guadalupe', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (11, N'Decima Avenida', 3157 , N'San Bernabe', N'Monterrey', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (12, N'Uruapan', 1229 , N'La Cima', N'San Pedro Garza', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (13, N'Yocasta', 775 , N'Talleres', N'Monterrey', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (14, N'Mali', 278 , N'Mexico Nuevo', N'Guadalupe', N'Nuevo Leòn' )
INSERT [dbo].[Direccion] ([id_Direccion], [Calle], [Num_Int], [Colonia], [Municipio], [Estado]) VALUES (15, N'Fauno', 174 , N'Jardines de Apodaca', N'Apodaca', N'Nuevo Leòn' )

INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0001, N'Jose', N'Alonso', N'Becerra', 1, 42,  N'AOBJ770710NYA' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0002, N'Rafael', N'Lopez', N'Garcia', 2, 35,  N'LOGR830317V39' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0003, N'Francisco Javier', N'Gonzalez', N'Manzano', 3, 51,  N'GOMF670924UN3' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0004, N'Luis', N'Ortega', N'Cabillas', 4, 32,  N'OECL861120UY3' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0005, N'Mario Jesus', N'Navas', N'Belmonte', 5, 57,  N'NABM610513K30' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0006, N'David', N'Iglesias', N'Tellez', 6, 39,  N'IETD7908065EA' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0007, N'Cristian Humberto', N'Peña', N'Lara', 7, 37,  N'PELC810601FJ7' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0008, N'Gustavo Daniel', N'Medina', N'Torres', 8, 39,  N'METG281102JD3' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0009, N'Martin', N'Ramos', N'Hernandez', 9, 52,  N'RAHM6604307M3' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0010, N'Antonio Javier', N'Suarez', N'Rivera', 10, 31,  N'SURA870925AP1' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0011, N'Jaime Ivan', N'Torres', N'Perez', 11, 44,  N'TOPJ741218CG1' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0012, N'Eduardo Elias', N'Blaum', N'Jung', 12, 32,  N'BAJE860622TQ5' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0013, N'Joaquin', N'Garcia', N'Gonzalez', 13, 46,  N'GAGJ720423B30' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0014, N'Juan Carlos', N'Martinez', N'Almira', 14, 42,  N'MAAJ760831F57' )
INSERT [dbo].[Empleado] ([id_Empleado], [Nombre], [PA], [SA], [id_Direccion], [Edad], [RFC]) VALUES (0015, N'Richard Nicolas', N'Ruso', N'Tormes', 15, 44,  N'RUTR740111PJ1' )

INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (01, N'Monterrey,Nuevo Leon', N'Reynosa,Tamaulipas', N'1')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (02, N'Ruíz,Nayarit', N'Río Lagartos,Yucatán', N'2')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (03, N'Puebla,Puebla', N'Otzoloapan,México', N'3')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (04, N'Las Margaritas,Chiapas', N'La Colorada,Sonora', N'4')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (05, N'Mochitlán,Guerrero', N'Mocochá,Yucatán', N'5')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (06, N'Otáez,Durango', N'Nahuatzen,Michoacán de Ocampo', N'6')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (07, N'El Marquéss,Querétaro', N'Guadalajara,Jalisco', N'7')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (08, N'Ixmiquilpan,Hidalgo', N'Hueyotlipan,Tlaxcala', N'8')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (09, N'La Huerta,Jalisco', N'Juárez,Chihuahua', N'9')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (10, N'Donato Guerra,México', N'Cuilápam de Guerrero,Oaxaca', N'10')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (11, N'Tecoh,Yucatán', N'Unión Hidalgo,Oaxaca', N'11')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (12, N'Coyuca de Catalán,Guerrero', N'Chignautla,Puebla', N'12')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (13, N'Santo Domingo Zanatepec,Oaxaca', N'Tecámac,Mexico', N'13')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (14, N'Chihuahua,Chihuahua', N'Monterrey,Nuevo Leon', N'14')
INSERT [dbo].[Ruta] ([id_Ruta], [Cd_Origen], [Cd_Destino], [id_Num_Comercial]) VALUES (15, N'Venustiano Carranza,Puebla', N'Yahualica,Hidalgo', N'15')

//*UPDATE*//
UPDATE Camion
SET id_Tipo_Camion = 'VIP'
WHERE Placas = '740-JK-5'

UPDATE Chofer
SET id_Ruta = '10'
WHERE id_Empleado = '9'

UPDATE Direccion
SET Calle = 'Bugambilias'
WHERE Num_Int = '420'

UPDATE Empleado
SET Edad = '40'
WHERE Nombre = 'Juan Carlos'

UPDATE Ruta
SET id_Num_Comercial = '20'
WHERE id_Ruta = '10'


//*DELETE*//
DELETE from Camion
where Placas = '481-ER-3'

DELETE from Chofer
where id_Ruta = '9'

DELETE from Direccion
where Calle = 'Bugambilias'

DELETE from Empleado
where Edad = '40'

DELETE from Ruta
where id_Ruta = '13'

/*Clausulas del Select*/
GO
/*Select basico con funciones*/
SELECT COUNT(Primer_Apellido) as 'Primer_Apellido'
FROM Empleado

SELECT MAX(id_Num_Comercial) as 'Numero_de_Camion'
FROM Camion

SELECT MIN(Num_Licencia) as 'Identificacion'
FROM Chofer 

SELECT MAX(Colonia) as 'Nombre_de_Colonia'
FROM Direccion

SELECT MIN(Cd_Destino) as 'Nombre_de_Destino'
FROM Ruta

/*select Join*/
SELECT T1.Nombre, T2.Calle
	FROM Empleado T1 LEFT JOIN Direccion T2 ON T1.Nombre = T2.Calle

SELECT T1.id_Tipo_Camion, T2.Cd_Destino
	FROM Camion T1 CROSS JOIN Ruta T2 

SELECT T1.Num_Licencia, T2.Nombre, T2.Edad
	FROM Chofer T1 INNER JOIN Empleado T2 ON T1.Num_Licencia = T2.Nombre

SELECT T1.Municipio, T2.Categ_Licencia, T2.Num_Licencia
	FROM Direccion T1  RIGHT JOIN Chofer T2 ON T1.Municipio = T2.Categ_Licencia

/*Select where*/
SELECT Nombre, Primer_Apellido
	FROM Empleado
	WHERE Edad > 42

SELECT Placas, id_Num_Comercial
	FROM Camion
	WHERE id_Num_Comercial = 10

SELECT id_Empleado, Categ_Licencia, Num_Licencia
	FROM Chofer
	WHERE id_Ruta = 5

SELECT Calle, Num_Int, Colonia
	FROM Direccion
	WHERE Municipio = N'Monterrey'

SELECT Cd_Origen, Cd_Destino, id_Ruta
	FROM Ruta
	WHERE id_Num_Comercial >= 8
	ORDER BY id_Num_Comercial DESC

/*Select funciones de agregacion*/
SELECT COUNT(*) as 'Total_Filas', MIN(id_Tipo_Camion) as 'Tipo_Camion', 
MAX(Placas) as 'Numero_Placas'
FROM Camion

SELECT MAX(id_Empleado) as 'Identificacion_Empleado', MAX(Num_Licencia) as 'Numero_Licencia',  
MAX(id_Ruta) as 'Identificacion_Ruta'
FROM Chofer

SELECT MIN(id_Direccion) as 'Identificacion_Direccion', MAX(Num_Int) as 'Numero_Interior_Residensia'
FROM Direccion
Group BY id_Direccion

SELECT  MAX(Cd_Origen) as 'Ciudad_Origen', MAX(Cd_Destino) as 'Ciudad_Destino'
FROM Ruta
Group BY id_Ruta

SELECT  MIN(Edad) as 'Edad_Empleado', MAX(Segundo_Apellido) as 'Segundo_Apellido'
FROM Empleado
Group BY id_Empleado
HAVING max(id_Empleado) >= 9 
/*VISTAS*/
create view [dbo].[Empleado1]as
select Empleado.Nombre, Empleado.Primer_Apellido, Chofer.Num_Licencia
from Empleado left join Chofer on Empleado.Nombre = Chofer.Num_Licencia
where Empleado.Nombre = N'Luis'
GO

create view [dbo].[Direccion_Empleado1]as
select Empleado.Nombre, Empleado.Primer_Apellido, Direccion.Calle
from Direccion left join Empleado on  Direccion.Calle = Empleado.Nombre
where Direccion.Colonia = N'Ebanos'
GO

create view [dbo].[Ruta_Camion]as
select Ruta.id_Ruta, Ruta.Cd_Origen, Camion.id_Num_Comercial
from Ruta inner join Camion on Ruta.id_Ruta = Camion.id_Num_Comercial
where Ruta.id_Ruta = 15
GO

create view [dbo].[Num_Licencia_Empleado]as
select Chofer.Num_Licencia, Empleado.Nombre, Empleado.Primer_Apellido
from Chofer right join Empleado on Empleado.Nombre = Chofer.Num_Licencia
where Empleado.Nombre = N'Cristian Humberto'
GO

create view [dbo].[Ruta_Chofer] as
select Chofer.Num_Licencia, Ruta.Cd_Origen, Ruta.Cd_Destino
from Chofer left join Ruta on Chofer.Num_Licencia = Ruta.Cd_Destino
where Chofer.id_Ruta = 5
GO

/*PROCEDIMIENTO*/
create procedure [dbo].[Rutas_Existentes] (@Rutas varchar(50))
AS BEGIN
	Select * From Ruta
	where id_Ruta = @Rutas
END

exec [Rutas_Existentes] '7'


					    

USE [Proyecto1BD]
GO
/****** Object:  Table [dbo].[Campeonatos]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campeonatos](
	[fechaInicio] [date] NOT NULL,
	[fechaFin] [date] NOT NULL,
	[instalacion] [varchar](50) NULL,
	[idCpnato] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Campeonatos] PRIMARY KEY CLUSTERED 
(
	[idCpnato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certificados]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Certificados](
	[Certificacion] [varchar](20) NOT NULL,
	[idCert] [int] NOT NULL,
 CONSTRAINT [PK_Certificados] PRIMARY KEY CLUSTERED 
(
	[idCert] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CertificadosXEntrenador]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadosXEntrenador](
	[idCertificado] [int] NOT NULL,
	[idEnt] [int] NOT NULL,
 CONSTRAINT [PK_CertificadosXEntrenador] PRIMARY KEY CLUSTERED 
(
	[idCertificado] ASC,
	[idEnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clubes]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clubes](
	[nombre] [varchar](50) NOT NULL,
	[fundacion] [int] NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NULL,
	[nombreAdmin] [varchar](50) NOT NULL,
	[apellido1Admin] [varchar](50) NULL,
	[apellido2Admin] [varchar](50) NULL,
 CONSTRAINT [PK_Clubes] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[fechaComp] [date] NOT NULL,
	[estiloComp] [int] NOT NULL,
	[distanciaComp] [int] NOT NULL,
	[idComp] [int] IDENTITY(1,1) NOT NULL,
	[Campeonato] [int] NOT NULL,
 CONSTRAINT [PK_Competencias] PRIMARY KEY CLUSTERED 
(
	[idComp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DireccionesPostales]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DireccionesPostales](
	[idMiembroDir] [int] NOT NULL,
	[tipoDireccion] [int] NOT NULL,
	[direccionExacta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DireccionesPostales_1] PRIMARY KEY CLUSTERED 
(
	[idMiembroDir] ASC,
	[tipoDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distancias]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distancias](
	[Distancia] [int] NOT NULL,
	[idDist] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Distancias] PRIMARY KEY CLUSTERED 
(
	[Distancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entrenadores]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entrenadores](
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NOT NULL,
	[sexo] [varchar](50) NULL,
	[fechaNac] [date] NULL,
	[ClubPerteneciente] [varchar](50) NOT NULL,
	[idEntrenador] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Entrenadores] PRIMARY KEY CLUSTERED 
(
	[idEntrenador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstilosNatacion]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstilosNatacion](
	[idEstilo] [int] NOT NULL,
	[estilo] [varchar](10) NOT NULL,
	[descripcion] [varchar](10) NULL,
 CONSTRAINT [PK_EstilosNatacion] PRIMARY KEY CLUSTERED 
(
	[idEstilo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Familias]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Familias](
	[idFamilia] [int] IDENTITY(1,1) NOT NULL,
	[nombreFam] [varchar](10) NOT NULL,
	[jefeDeFamilia] [int] NOT NULL,
 CONSTRAINT [PK_Familia] PRIMARY KEY CLUSTERED 
(
	[idFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Membresias]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Membresias](
	[idMembresia] [int] NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
	[mensualidad] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Membresias] PRIMARY KEY CLUSTERED 
(
	[idMembresia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodosPago]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodosPago](
	[idMetodo] [int] IDENTITY(1,1) NOT NULL,
	[metodo] [varchar](20) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
 CONSTRAINT [PK_MetodosPago] PRIMARY KEY CLUSTERED 
(
	[idMetodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Miembros]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Miembros](
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](20) NOT NULL,
	[apellido2] [varchar](20) NOT NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[pagosAldia] [int] NOT NULL CONSTRAINT [DF_Miembros_pagosAldia]  DEFAULT ((1)),
	[idMiembro] [int] IDENTITY(1,1) NOT NULL,
	[clubRegistrado] [varchar](50) NULL,
	[membresia] [int] NOT NULL,
	[diaPago] [int] NULL,
 CONSTRAINT [PK_Miembros] PRIMARY KEY CLUSTERED 
(
	[idMiembro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MiembrosXSesion]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MiembrosXSesion](
	[idParticipante] [int] NOT NULL,
	[idSesion] [int] NOT NULL,
	[Asistio] [varchar](3) NULL,
 CONSTRAINT [PK_MiembrosXSesion] PRIMARY KEY CLUSTERED 
(
	[idParticipante] ASC,
	[idSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MiembroXFamilia]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MiembroXFamilia](
	[idMiemb] [int] NOT NULL,
	[idFam] [int] NOT NULL,
 CONSTRAINT [PK_MiembroXFamilia] PRIMARY KEY CLUSTERED 
(
	[idMiemb] ASC,
	[idFam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[miembroPago] [int] NOT NULL,
	[fechaPago] [date] NULL,
	[metodoPago] [int] NOT NULL,
	[idPago] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RankingCompetencias]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RankingCompetencias](
	[idParticipante] [int] NOT NULL,
	[idCompetencia] [int] NOT NULL,
	[tiempo] [time](0) NULL,
	[posicion] [int] NULL,
 CONSTRAINT [PK_RankingCompetencias] PRIMARY KEY CLUSTERED 
(
	[idParticipante] ASC,
	[idCompetencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sesiones]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesiones](
	[horaInicio] [time](0) NOT NULL,
	[EstiloSesion] [int] NULL,
	[idSesion] [int] IDENTITY(1,1) NOT NULL,
	[Ayudante] [int] NOT NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_Sesiones] PRIMARY KEY CLUSTERED 
(
	[idSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiemposRegistrados]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiemposRegistrados](
	[idMiembroReg] [int] NOT NULL,
	[estiloReg] [int] NOT NULL,
	[distanciaReg] [int] NOT NULL,
	[tiempo] [time](0) NULL,
 CONSTRAINT [PK_TiemposRegistrados] PRIMARY KEY CLUSTERED 
(
	[idMiembroReg] ASC,
	[estiloReg] ASC,
	[distanciaReg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TiposDirecciones]    Script Date: 10/05/2016 15:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposDirecciones](
	[descripcion] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[idDirec] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DireccionesPostales] PRIMARY KEY CLUSTERED 
(
	[idDirec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CertificadosXEntrenador]  WITH CHECK ADD  CONSTRAINT [FK_CertificadosXEntrenador_Certificados] FOREIGN KEY([idCertificado])
REFERENCES [dbo].[Certificados] ([idCert])
GO
ALTER TABLE [dbo].[CertificadosXEntrenador] CHECK CONSTRAINT [FK_CertificadosXEntrenador_Certificados]
GO
ALTER TABLE [dbo].[CertificadosXEntrenador]  WITH CHECK ADD  CONSTRAINT [FK_CertificadosXEntrenador_Entrenadores] FOREIGN KEY([idEnt])
REFERENCES [dbo].[Entrenadores] ([idEntrenador])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CertificadosXEntrenador] CHECK CONSTRAINT [FK_CertificadosXEntrenador_Entrenadores]
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD  CONSTRAINT [FK_Competencias_Campeonato] FOREIGN KEY([Campeonato])
REFERENCES [dbo].[Campeonatos] ([idCpnato])
GO
ALTER TABLE [dbo].[Competencias] CHECK CONSTRAINT [FK_Competencias_Campeonato]
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD  CONSTRAINT [FK_Competencias_Distancia] FOREIGN KEY([distanciaComp])
REFERENCES [dbo].[Distancias] ([Distancia])
GO
ALTER TABLE [dbo].[Competencias] CHECK CONSTRAINT [FK_Competencias_Distancia]
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD  CONSTRAINT [FK_Competencias_EstilosNatacion] FOREIGN KEY([estiloComp])
REFERENCES [dbo].[EstilosNatacion] ([idEstilo])
GO
ALTER TABLE [dbo].[Competencias] CHECK CONSTRAINT [FK_Competencias_EstilosNatacion]
GO
ALTER TABLE [dbo].[DireccionesPostales]  WITH CHECK ADD  CONSTRAINT [FK_DireccionesPostales_Miembros] FOREIGN KEY([idMiembroDir])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[DireccionesPostales] CHECK CONSTRAINT [FK_DireccionesPostales_Miembros]
GO
ALTER TABLE [dbo].[DireccionesPostales]  WITH CHECK ADD  CONSTRAINT [FK_DireccionesPostales_TiposDirecciones] FOREIGN KEY([tipoDireccion])
REFERENCES [dbo].[TiposDirecciones] ([idDirec])
GO
ALTER TABLE [dbo].[DireccionesPostales] CHECK CONSTRAINT [FK_DireccionesPostales_TiposDirecciones]
GO
ALTER TABLE [dbo].[Entrenadores]  WITH CHECK ADD  CONSTRAINT [FK_Entrenador_Club] FOREIGN KEY([ClubPerteneciente])
REFERENCES [dbo].[Clubes] ([nombre])
GO
ALTER TABLE [dbo].[Entrenadores] CHECK CONSTRAINT [FK_Entrenador_Club]
GO
ALTER TABLE [dbo].[Familias]  WITH CHECK ADD  CONSTRAINT [FK_Familia_Miembros] FOREIGN KEY([jefeDeFamilia])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[Familias] CHECK CONSTRAINT [FK_Familia_Miembros]
GO
ALTER TABLE [dbo].[Miembros]  WITH CHECK ADD  CONSTRAINT [FK_Miembros_Clubes] FOREIGN KEY([clubRegistrado])
REFERENCES [dbo].[Clubes] ([nombre])
GO
ALTER TABLE [dbo].[Miembros] CHECK CONSTRAINT [FK_Miembros_Clubes]
GO
ALTER TABLE [dbo].[Miembros]  WITH CHECK ADD  CONSTRAINT [FK_Miembros_Membresias] FOREIGN KEY([membresia])
REFERENCES [dbo].[Membresias] ([idMembresia])
GO
ALTER TABLE [dbo].[Miembros] CHECK CONSTRAINT [FK_Miembros_Membresias]
GO
ALTER TABLE [dbo].[MiembrosXSesion]  WITH CHECK ADD  CONSTRAINT [FK_MiembrosXSesion_Miembros] FOREIGN KEY([idParticipante])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[MiembrosXSesion] CHECK CONSTRAINT [FK_MiembrosXSesion_Miembros]
GO
ALTER TABLE [dbo].[MiembrosXSesion]  WITH CHECK ADD  CONSTRAINT [FK_MiembrosXSesion_Sesiones] FOREIGN KEY([idSesion])
REFERENCES [dbo].[Sesiones] ([idSesion])
GO
ALTER TABLE [dbo].[MiembrosXSesion] CHECK CONSTRAINT [FK_MiembrosXSesion_Sesiones]
GO
ALTER TABLE [dbo].[MiembroXFamilia]  WITH CHECK ADD  CONSTRAINT [FK_MiembroXFamilia_Familias] FOREIGN KEY([idFam])
REFERENCES [dbo].[Familias] ([idFamilia])
GO
ALTER TABLE [dbo].[MiembroXFamilia] CHECK CONSTRAINT [FK_MiembroXFamilia_Familias]
GO
ALTER TABLE [dbo].[MiembroXFamilia]  WITH CHECK ADD  CONSTRAINT [FK_MiembroXFamilia_Miembros] FOREIGN KEY([idMiemb])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[MiembroXFamilia] CHECK CONSTRAINT [FK_MiembroXFamilia_Miembros]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_MetodosPago] FOREIGN KEY([metodoPago])
REFERENCES [dbo].[MetodosPago] ([idMetodo])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_MetodosPago]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Miembros] FOREIGN KEY([miembroPago])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Miembros]
GO
ALTER TABLE [dbo].[RankingCompetencias]  WITH CHECK ADD  CONSTRAINT [FK_RankingCompetencias_Competencias] FOREIGN KEY([idCompetencia])
REFERENCES [dbo].[Competencias] ([idComp])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RankingCompetencias] CHECK CONSTRAINT [FK_RankingCompetencias_Competencias]
GO
ALTER TABLE [dbo].[RankingCompetencias]  WITH CHECK ADD  CONSTRAINT [FK_RankingCompetencias_Miembros] FOREIGN KEY([idParticipante])
REFERENCES [dbo].[Miembros] ([idMiembro])
GO
ALTER TABLE [dbo].[RankingCompetencias] CHECK CONSTRAINT [FK_RankingCompetencias_Miembros]
GO
ALTER TABLE [dbo].[Sesiones]  WITH CHECK ADD  CONSTRAINT [FK_Sesiones_Entrenador] FOREIGN KEY([Ayudante])
REFERENCES [dbo].[Entrenadores] ([idEntrenador])
GO
ALTER TABLE [dbo].[Sesiones] CHECK CONSTRAINT [FK_Sesiones_Entrenador]
GO
ALTER TABLE [dbo].[Sesiones]  WITH CHECK ADD  CONSTRAINT [FK_Sesiones_EstilosNatacion] FOREIGN KEY([EstiloSesion])
REFERENCES [dbo].[EstilosNatacion] ([idEstilo])
GO
ALTER TABLE [dbo].[Sesiones] CHECK CONSTRAINT [FK_Sesiones_EstilosNatacion]
GO
ALTER TABLE [dbo].[TiemposRegistrados]  WITH CHECK ADD  CONSTRAINT [FK_TiemposReg_Distancia] FOREIGN KEY([distanciaReg])
REFERENCES [dbo].[Distancias] ([Distancia])
GO
ALTER TABLE [dbo].[TiemposRegistrados] CHECK CONSTRAINT [FK_TiemposReg_Distancia]
GO
ALTER TABLE [dbo].[TiemposRegistrados]  WITH CHECK ADD  CONSTRAINT [FK_TiemposRegistrados_EstilosNatacion] FOREIGN KEY([estiloReg])
REFERENCES [dbo].[EstilosNatacion] ([idEstilo])
GO
ALTER TABLE [dbo].[TiemposRegistrados] CHECK CONSTRAINT [FK_TiemposRegistrados_EstilosNatacion]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'relacion entrenador al club que pertenecen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entrenadores', @level2type=N'CONSTRAINT',@level2name=N'FK_Entrenador_Club'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relacion de cada miembro al club que pertenece' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Miembros', @level2type=N'CONSTRAINT',@level2name=N'FK_Miembros_Clubes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entrenador ayudante de la sesion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sesiones', @level2type=N'CONSTRAINT',@level2name=N'FK_Sesiones_Entrenador'
GO

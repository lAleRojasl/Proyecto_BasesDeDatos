USE [Proyecto1BD]
GO
SET IDENTITY_INSERT [dbo].[Campeonatos] ON 

INSERT [dbo].[Campeonatos] ([fechaInicio], [fechaFin], [instalacion], [idCpnato]) VALUES (CAST(N'2016-05-01' AS Date), CAST(N'2016-05-07' AS Date), N'Cubo De Hielo', 1)
SET IDENTITY_INSERT [dbo].[Campeonatos] OFF
SET IDENTITY_INSERT [dbo].[Distancias] ON 

INSERT [dbo].[Distancias] ([Distancia], [idDist]) VALUES (50, 1)
INSERT [dbo].[Distancias] ([Distancia], [idDist]) VALUES (100, 2)
INSERT [dbo].[Distancias] ([Distancia], [idDist]) VALUES (200, 3)
INSERT [dbo].[Distancias] ([Distancia], [idDist]) VALUES (400, 4)
INSERT [dbo].[Distancias] ([Distancia], [idDist]) VALUES (1500, 5)
SET IDENTITY_INSERT [dbo].[Distancias] OFF
INSERT [dbo].[EstilosNatacion] ([idEstilo], [estilo], [descripcion]) VALUES (1, N'CR', N'Crol')
INSERT [dbo].[EstilosNatacion] ([idEstilo], [estilo], [descripcion]) VALUES (2, N'PE', N'Pecho')
INSERT [dbo].[EstilosNatacion] ([idEstilo], [estilo], [descripcion]) VALUES (3, N'MA', N'Mariposa')
INSERT [dbo].[EstilosNatacion] ([idEstilo], [estilo], [descripcion]) VALUES (4, N'DO', N'Dorso')
SET IDENTITY_INSERT [dbo].[Competencias] ON 

INSERT [dbo].[Competencias] ([fechaComp], [estiloComp], [distanciaComp], [idComp], [Campeonato]) VALUES (CAST(N'2016-05-06' AS Date), 2, 100, 1, 1)
SET IDENTITY_INSERT [dbo].[Competencias] OFF
INSERT [dbo].[Certificados] ([Certificacion], [idCert]) VALUES (N'Nivel I', 1)
INSERT [dbo].[Certificados] ([Certificacion], [idCert]) VALUES (N'Nivel II', 2)
INSERT [dbo].[Certificados] ([Certificacion], [idCert]) VALUES (N'Nivel III', 3)
INSERT [dbo].[Certificados] ([Certificacion], [idCert]) VALUES (N'Nivel IV', 4)
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Escualos', 2008, N'Alajuela, Bulevar Abollo No. 903', N'27775555', N'Lucía', N'Pastor ', N'Castañeda')
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Fuerza Marina', 2000, N'Heredia, Condominio Braco No. 962', N'26665555', N'Xavier', N'Serra ', N'Zapatero')
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Hydro Power', 2005, N'Limon, Calle Domaica No. 131', N'25555555', N'Sonia', N'González ', N'Díaz')
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Neptuno', 2006, N'Cartago, 100m este Tribunales', N'35555555', N'Julio', N'Jiménez ', N'Jurado')
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Poseidon', 2014, N'Liberia, Calle Santo del Indalecio No. 30', N'36665555', N'Celia', N'Calderón ', N'Revuelta')
INSERT [dbo].[Clubes] ([nombre], [fundacion], [direccion], [telefono], [nombreAdmin], [apellido1Admin], [apellido2Admin]) VALUES (N'Quelonios', 1991, N'San Ramón, Calle Tamez No. 483', N'65555555', N'Ruben', N'Ríos ', N'Sandoval')
SET IDENTITY_INSERT [dbo].[Entrenadores] ON 

INSERT [dbo].[Entrenadores] ([nombre], [apellido1], [apellido2], [sexo], [fechaNac], [ClubPerteneciente], [idEntrenador]) VALUES (N'Oscar', N'Vicol', N'Solorio', N'm', CAST(N'1958-03-23' AS Date), N'Neptuno', 1)
INSERT [dbo].[Entrenadores] ([nombre], [apellido1], [apellido2], [sexo], [fechaNac], [ClubPerteneciente], [idEntrenador]) VALUES (N'Rita', N'Sierra', N'Ruse', N'f', CAST(N'1991-04-04' AS Date), N'Neptuno', 2)
INSERT [dbo].[Entrenadores] ([nombre], [apellido1], [apellido2], [sexo], [fechaNac], [ClubPerteneciente], [idEntrenador]) VALUES (N'Silvia', N'Catota', N'Catota', N'f', CAST(N'1971-02-14' AS Date), N'Escualos', 3)
SET IDENTITY_INSERT [dbo].[Entrenadores] OFF
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (1, 1)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (1, 2)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (1, 3)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (2, 1)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (2, 2)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (2, 3)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (3, 1)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (3, 2)
INSERT [dbo].[CertificadosXEntrenador] ([idCertificado], [idEnt]) VALUES (3, 3)
INSERT [dbo].[Membresias] ([idMembresia], [descripcion], [mensualidad]) VALUES (100, N'Membresía personal estándar - 2 veces por semana', CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[Membresias] ([idMembresia], [descripcion], [mensualidad]) VALUES (200, N'Membresía ORO - sin límite', CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[Membresias] ([idMembresia], [descripcion], [mensualidad]) VALUES (300, N'Membresía familiar estándar - 2 veces por semana, hasta 4 personas', CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[Membresias] ([idMembresia], [descripcion], [mensualidad]) VALUES (400, N'Membresía familiar ORO - sin límite', CAST(100000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Miembros] ON 

INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Ismael', N'Santamaria', N'Aguera', N'isa@mismuebles.com', N'65513880', 1, 1, N'Neptuno', 300, 13)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Isabel', N'Oliveras', N'Carrascosa', N'ioc@mundotelas.com', N'43355795', 1, 2, N'Neptuno', 300, 13)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Andres', N'Clemente', N'Martorell', N'acm@transweb.com', N'89227001', 1, 3, N'Neptuno', 100, 19)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Nuria', N'Escribano', N'Peralta', N'nep@movilseg.com', N'82991438', 1, 4, N'Neptuno', 100, 7)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Joaquin', N'Zambrano', N'Deniz', N'artehq.com', N'81150116', 1, 5, N'Escualos', 400, 22)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Alba', N'Paez', N'Larrea', N'apl@terapia.com', N'86663298', 1, 6, N'Escualos', 400, 22)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Dolores', N'Zambrano', N'Paez', N'dzp@colegiocentral.com', N'74492808', 1, 7, N'Escualos', 400, 22)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Julia', N'Alemany', N'Salvatierra', N'jas@gmail.com', N'95513164', 1, 8, N'Escualos', 100, 7)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Elena', N'Zambrano', N'Deniz', N'EZD@gmail.com', N'88888888', 1, 9, N'Escualos', 100, 20)
INSERT [dbo].[Miembros] ([nombre], [apellido1], [apellido2], [email], [telefono], [pagosAldia], [idMiembro], [clubRegistrado], [membresia], [diaPago]) VALUES (N'Cristobal', N'Zambrano', N'Paez', N'CZP@correo.com', N'77777777', 1, 10, N'Escualos', 100, 15)
SET IDENTITY_INSERT [dbo].[Miembros] OFF
INSERT [dbo].[RankingCompetencias] ([idParticipante], [idCompetencia], [tiempo], [posicion]) VALUES (4, 1, CAST(N'00:02:17' AS Time), 2)
INSERT [dbo].[RankingCompetencias] ([idParticipante], [idCompetencia], [tiempo], [posicion]) VALUES (8, 1, CAST(N'00:02:16' AS Time), 1)
INSERT [dbo].[TiemposRegistrados] ([idMiembroReg], [estiloReg], [distanciaReg], [tiempo]) VALUES (4, 1, 200, CAST(N'00:19:45' AS Time))
INSERT [dbo].[TiemposRegistrados] ([idMiembroReg], [estiloReg], [distanciaReg], [tiempo]) VALUES (8, 1, 50, CAST(N'00:00:40' AS Time))
INSERT [dbo].[TiemposRegistrados] ([idMiembroReg], [estiloReg], [distanciaReg], [tiempo]) VALUES (8, 4, 100, CAST(N'00:03:05' AS Time))
INSERT [dbo].[TiemposRegistrados] ([idMiembroReg], [estiloReg], [distanciaReg], [tiempo]) VALUES (10, 2, 50, CAST(N'00:01:25' AS Time))
SET IDENTITY_INSERT [dbo].[Sesiones] ON 

INSERT [dbo].[Sesiones] ([horaInicio], [EstiloSesion], [idSesion], [Ayudante], [fecha]) VALUES (CAST(N'10:00:00' AS Time), 1, 1, 1, CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Sesiones] ([horaInicio], [EstiloSesion], [idSesion], [Ayudante], [fecha]) VALUES (CAST(N'06:00:00' AS Time), 2, 2, 3, CAST(N'2016-05-15' AS Date))
INSERT [dbo].[Sesiones] ([horaInicio], [EstiloSesion], [idSesion], [Ayudante], [fecha]) VALUES (CAST(N'07:00:00' AS Time), NULL, 3, 2, CAST(N'2016-04-06' AS Date))
SET IDENTITY_INSERT [dbo].[Sesiones] OFF
SET IDENTITY_INSERT [dbo].[Familias] ON 

INSERT [dbo].[Familias] ([idFamilia], [nombreFam], [jefeDeFamilia]) VALUES (1, N'FSO', 2)
INSERT [dbo].[Familias] ([idFamilia], [nombreFam], [jefeDeFamilia]) VALUES (2, N'FZP', 5)
SET IDENTITY_INSERT [dbo].[Familias] OFF
INSERT [dbo].[MiembroXFamilia] ([idMiemb], [idFam]) VALUES (1, 1)
INSERT [dbo].[MiembroXFamilia] ([idMiemb], [idFam]) VALUES (2, 1)
INSERT [dbo].[MiembroXFamilia] ([idMiemb], [idFam]) VALUES (5, 2)
INSERT [dbo].[MiembroXFamilia] ([idMiemb], [idFam]) VALUES (6, 2)
INSERT [dbo].[MiembroXFamilia] ([idMiemb], [idFam]) VALUES (7, 2)
SET IDENTITY_INSERT [dbo].[MetodosPago] ON 

INSERT [dbo].[MetodosPago] ([idMetodo], [metodo], [Codigo]) VALUES (2, N'efectivo', N'EF')
INSERT [dbo].[MetodosPago] ([idMetodo], [metodo], [Codigo]) VALUES (3, N'tarjeta de crédito', N'TC')
INSERT [dbo].[MetodosPago] ([idMetodo], [metodo], [Codigo]) VALUES (4, N'tarjeta de débito', N'TD')
INSERT [dbo].[MetodosPago] ([idMetodo], [metodo], [Codigo]) VALUES (5, N'transferencia', N'TR')
SET IDENTITY_INSERT [dbo].[MetodosPago] OFF
SET IDENTITY_INSERT [dbo].[Pagos] ON 

INSERT [dbo].[Pagos] ([miembroPago], [fechaPago], [metodoPago], [idPago]) VALUES (4, CAST(N'2016-04-12' AS Date), 2, 1)
INSERT [dbo].[Pagos] ([miembroPago], [fechaPago], [metodoPago], [idPago]) VALUES (5, CAST(N'2016-04-19' AS Date), 3, 2)
INSERT [dbo].[Pagos] ([miembroPago], [fechaPago], [metodoPago], [idPago]) VALUES (7, CAST(N'2016-04-20' AS Date), 4, 3)
INSERT [dbo].[Pagos] ([miembroPago], [fechaPago], [metodoPago], [idPago]) VALUES (10, CAST(N'2016-03-06' AS Date), 5, 4)
SET IDENTITY_INSERT [dbo].[Pagos] OFF
SET IDENTITY_INSERT [dbo].[TiposDirecciones] ON 

INSERT [dbo].[TiposDirecciones] ([descripcion], [tipo], [idDirec]) VALUES (N'Dirección de la casa del miembro', N'CASA', 1)
INSERT [dbo].[TiposDirecciones] ([descripcion], [tipo], [idDirec]) VALUES (N'Dirección del trabajo del miembro', N'TRAB', 2)
INSERT [dbo].[TiposDirecciones] ([descripcion], [tipo], [idDirec]) VALUES (N'Cualquier otra dirección del miembro', N'OTRA', 3)
SET IDENTITY_INSERT [dbo].[TiposDirecciones] OFF
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (1, 1, N'Bulevar Azuay')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (1, 2, N'Avenida Juesas')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (2, 1, N'Bulevar Azuay')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (2, 2, N'Avenida Yarnoz')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (3, 1, N'Calle Bouzian')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (3, 2, N'Boulevard Hogan')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (4, 1, N'Privada Pulla')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (5, 1, N'Avenida Vidican')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (6, 1, N'Avenida Vidican')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (6, 2, N'Avenida Sarwar')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (7, 1, N'Avenida Vidican')
INSERT [dbo].[DireccionesPostales] ([idMiembroDir], [tipoDireccion], [direccionExacta]) VALUES (8, 1, N'Calle Mellouk')
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (3, 1, N'SI')
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (3, 3, N'SI')
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (4, 1, N'SI')
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (4, 3, N'SI')
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (6, 2, NULL)
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (7, 2, NULL)
INSERT [dbo].[MiembrosXSesion] ([idParticipante], [idSesion], [Asistio]) VALUES (9, 2, NULL)

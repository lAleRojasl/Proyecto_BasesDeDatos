USE [Proyecto1BD]
GO
/****** Object:  StoredProcedure [dbo].[direccionMiembro]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[direccionMiembro]
@idMiembro int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT dirp.direccionExacta,dirp.tipoDireccion
	FROM DireccionesPostales AS DirP
	WHERE DirP.idMiembroDir =  @idMiembro
END


GO
/****** Object:  StoredProcedure [dbo].[getAllResComp]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Alejandro Rojas   Prueba 12B Y Consulta 15-A
-- Create date: 5/7/2016
-- Description:	<Recuperar resultados de Competencia @comp>
-- =========================================================
CREATE PROCEDURE [dbo].[getAllResComp]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT posicion,tiempo,clubRegistrado,concat(nombre,' ',apellido1,' ',apellido2) AS Competidor,estiloComp,distanciaComp,idMiembro,idComp
	FROM Miembros
	INNER JOIN
	(
		SELECT * 
		FROM RankingCompetencias
		INNER JOIN Competencias
		ON idComp = idCompetencia
	) AS T1 
	ON idMiembro = idParticipante
	ORDER BY posicion

END

GO
/****** Object:  StoredProcedure [dbo].[getCampeonatos]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Alejandro Rojas    Prueba 11B y 13B
-- Create date: 7/5/2016
-- Description:	<Recuperar informacion de 
--  Campeonatos y Competencias >
-- =================================================
CREATE PROCEDURE [dbo].[getCampeonatos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT *
	FROM Campeonatos
	ORDER BY idCpnato
END

GO
/****** Object:  StoredProcedure [dbo].[getCompetencias]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Alejandro Rojas    Prueba 11B y 13B
-- Create date: 7/5/2016
-- Description:	<Recuperar informacion de 
--  Campeonatos y Competencias >
-- =================================================
CREATE PROCEDURE [dbo].[getCompetencias]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT idComp, fechaComp,estilo,distanciaComp,Campeonato,idEstilo
	FROM Competencias
	INNER JOIN EstilosNatacion
	ON estiloComp = idEstilo
END

GO
/****** Object:  StoredProcedure [dbo].[getCompetidores]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Alejandro Rojas   Prueba 12B.1
-- Create date: 5/7/2016
-- Description:	<Recuperar todos los competidores actuales>
-- =========================================================
CREATE PROCEDURE [dbo].[getCompetidores]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT idComp, CONCAT(nombre,' ',apellido1,' ',apellido2) AS Competidor, tiempo,posicion
	FROM Miembros
	INNER JOIN
	(
		SELECT * 
		FROM RankingCompetencias
		INNER JOIN Competencias
		ON idComp = idCompetencia
	) AS T1 
	ON idMiembro = idParticipante
	ORDER BY idComp

END

GO
/****** Object:  StoredProcedure [dbo].[getEntrenadores]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Alejandro Rojas    Prueba 3B  Y  4B
-- Create date: 06/05/2016
-- Description:	<Stored Procedure para recuperar 
--				 y acomodar datos de Entrenadores>
-- =================================================
CREATE PROCEDURE [dbo].[getEntrenadores]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT ClubPerteneciente,nombre,apellido1,apellido2,fechaNac,sexo,
       [1] AS Cert1, [2] AS Cert2,[3] AS Cert3,idEnt
FROM
(
	SELECT nombre,apellido1,apellido2,sexo,fechaNac,ClubPerteneciente,Certificacion,idCert,idEnt
	FROM 
	(
		SELECT Certificacion,idEnt AS idEntrenador,idCert
		FROM Certificados
		INNER JOIN CertificadosXEntrenador
		ON idCertificado = idCert
	) AS T1 INNER JOIN (
		SELECT nombre,apellido1,apellido2,sexo,fechaNac,ClubPerteneciente, idEnt
		FROM Entrenadores
		INNER JOIN CertificadosXEntrenador
		ON idEntrenador = idEnt
	) AS T2 ON T1.idEntrenador = idEnt
) d  
PIVOT
(
    max(Certificacion)
    FOR idCert IN ([1], [2], [3])
) p 
ORDER BY idEnt

END

GO
/****** Object:  StoredProcedure [dbo].[getFamiliares]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================
-- Author:		Alejandro Rojas    Consulta 15-B
-- Create date: 07/05/2016
-- Description:	<Stored Procedure para recuperar 
-- Familiares de la persona @nombre,@apellido1,@apellido2>
-- ========================================================
CREATE PROCEDURE [dbo].[getFamiliares]
@nombre varchar(20),
@apellido1 varchar(20),
@apellido2 varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT nombre,apellido1,apellido2
	FROM Miembros 
	INNER JOIN (
		SELECT idMiemb
		FROM MiembroXFamilia
		WHERE idFam = (
			SELECT idFam
			FROM MiembroXFamilia
			INNER JOIN Miembros
			ON idMiemb = idMiembro
			WHERE nombre = @nombre AND apellido1 = @apellido1 AND apellido2 = @apellido2
		)
	) AS T1 ON T1.idMiemb = idMiembro
END

GO
/****** Object:  StoredProcedure [dbo].[getJefes]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================
-- Author:		Alejandro Rojas   
-- Create date: 07/05/2016
-- Description:	<Stored Procedure para recuperar 
-- lista de Jefes por Familia>
-- ========================================================
CREATE PROCEDURE [dbo].[getJefes]
AS
BEGIN

SELECT nombreFam AS FAMILIA,concat(nombre,apellido1,apellido2) AS JEF@ FROM Familias
INNER JOIN Miembros
ON JefeDeFamilia = idMiembro
END

GO
/****** Object:  StoredProcedure [dbo].[getMejoresTiempos]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================================
-- Author:		Alejandro Rojas    Prueba 9B Y 10B
-- Create date: 7/5/2016
-- Description:	<Recupera mejores tiempos de 
-- la persona @nombre , @apellido1, @apellido2>
-- =================================================
CREATE PROCEDURE [dbo].[getMejoresTiempos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT clubRegistrado, Miembro,tiempo,estilo,distanciaReg,idMiembroReg,idEstilo
	FROM (
		SELECT clubRegistrado, CONCAT(nombre,' ',apellido1,' ',apellido2) AS Miembro, tiempo, estiloReg,distanciaReg,idMiembroReg
		FROM TiemposRegistrados
		INNER JOIN Miembros
		ON idMiembro = idMiembroReg 
	) AS T1 INNER JOIN EstilosNatacion
	ON T1.estiloReg = idEstilo	
END

GO
/****** Object:  StoredProcedure [dbo].[getMiembros]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ========================================================
-- Author:		Alejandro Rojas      Prueba 1B  Y  2B
-- Create date: 06/05/2016
-- Description:	<Stored Procedure para recuperar 
-- informacion de Miembros, con sus respectivas direcciones>
-- ========================================================
CREATE PROCEDURE [dbo].[getMiembros]
AS
BEGIN
SELECT clubRegistrado,nombre,apellido1,apellido2,telefono,email,diaPago,membresia,CASA,TRAB,OTRA,idMiembro
FROM
(
	SELECT *
	FROM Miembros
	LEFT JOIN
	(
		SELECT direccionExacta,tipo,idMiembroDir
		FROM DireccionesPostales
		INNER JOIN TiposDirecciones
		ON idDirec = tipoDireccion
	) AS Direcs
	ON idMiembro = idMiembroDir
) d  
PIVOT
(
    max(direccionExacta)
    FOR tipo IN ([CASA], [TRAB], [OTRA])
) p 
ORDER BY idMiembro

END


GO
/****** Object:  StoredProcedure [dbo].[getPagos]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ==============================================
-- Author:		Alejandro Rojas      Prueba 13B
-- Create date: 5/7/2016
-- Description:	<Recuperar informacion de Pagos>
-- ==============================================
CREATE PROCEDURE [dbo].[getPagos]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT fechaPago, Miembro, Codigo AS MetodoDePago
	FROM MetodosPago
	INNER JOIN (
		SELECT fechaPago, CONCAT(nombre, ' ', apellido1,' ', apellido2) AS Miembro, metodoPago
		FROM Pagos
		INNER JOIN Miembros
		ON idMiembro = miembroPago
	) AS T1 
	ON metodoPago = idMetodo

END

GO
/****** Object:  StoredProcedure [dbo].[getParticipantesXSesion]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================
-- Author:		Alejandro Rojas      Prueba 6B  Y  7B
-- Create date: 06/05/2016
-- Description:	<Stored Procedure para recuperar 
-- participantes por sesion. >
-- ========================================================
CREATE PROCEDURE [dbo].[getParticipantesXSesion]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT idSesion,nombre,apellido1,apellido2,Asistio,idParticipante
	FROM MiembrosXSesion
	INNER JOIN Miembros
	ON idMiembro = idParticipante
	ORDER BY idSesion,nombre
END

GO
/****** Object:  StoredProcedure [dbo].[getResComp]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =========================================================
-- Author:		Alejandro Rojas   Prueba 12B Y Consulta 15-A
-- Create date: 5/7/2016
-- Description:	<Recuperar resultados de Competencia @comp>
-- =========================================================
CREATE PROCEDURE [dbo].[getResComp]
@comp int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT posicion,tiempo,clubRegistrado,nombre,apellido1,apellido2,estiloComp,distanciaComp
	FROM Miembros
	INNER JOIN
	(
		SELECT * 
		FROM RankingCompetencias
		INNER JOIN Competencias
		ON idComp = idCompetencia
		WHERE idComp = @comp
	) AS T1 
	ON idMiembro = idParticipante
	ORDER BY posicion

END

GO
/****** Object:  StoredProcedure [dbo].[getSesiones]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================
-- Author:		Alejandro Rojas      Prueba 5B  Y  8B
-- Create date: 07/05/2016
-- Description:	<Stored Procedure para recuperar Sesiones >
-- ========================================================
CREATE PROCEDURE [dbo].[getSesiones]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT idSesion,concat(nombre,' ',apellido1,' ',apellido2) AS Instructor,ClubPerteneciente,fecha,horaInicio,estilo,Ayudante
	FROM Entrenadores
	INNER JOIN (
		SELECT idSesion,Ayudante,fecha,horaInicio,estilo
		FROM Sesiones
		LEFT JOIN
		EstilosNatacion
		ON idEstilo = EstiloSesion
	) AS T1 ON idEntrenador = Ayudante
END

GO
/****** Object:  StoredProcedure [dbo].[getTiemposMiembro]    Script Date: 10/05/2016 15:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Alejandro Rojas  Consulta 15-C
-- Create date: 7/5/2016
-- Description:	<Recupera mejores tiempos de 
-- la persona @nombre , @apellido1, @apellido2>
-- =============================================
CREATE PROCEDURE [dbo].[getTiemposMiembro]
@nombre varchar(50),
@apellido1 varchar(20),
@apellido2 varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT estilo AS Estilo,descripcion,distanciaReg AS Distancia,tiempo
	FROM EstilosNatacion 
	INNER JOIN
	(	SELECT estiloReg,distanciaReg,tiempo
		FROM TiemposRegistrados
		INNER JOIN Miembros
		ON idMiembro = idMiembroReg
		WHERE nombre = @nombre AND apellido1 = @apellido1 AND apellido2 = @apellido2
	) AS T1
	ON estiloReg = idEstilo
END

GO

USE [Proyecto1BD]
--==========================================
--Generación del archivo o grids de Pruebas 
--==========================================

--Prueba 1B - Listar Miembros insertados en 1A
EXEC getMiembros;
GO

-- Actualizar Miembros | Prueba 2A
UPDATE DireccionesPostales SET direccionExacta = 'Avenida Juesas'
WHERE idMiembroDir = (
	SELECT idMiembro
	FROM Miembros
	WHERE nombre = 'Ismael' AND apellido1 = 'Santamaria' AND apellido2 = 'Aguera' 
) AND tipoDireccion = 2

UPDATE Miembros SET telefono = '82991438', membresia = 100
WHERE nombre = 'Nuria' AND apellido1 = 'Escribano' AND apellido2 = 'Peralta'

DELETE FROM DireccionesPostales
WHERE idMiembroDir = (
	SELECT idMiembro
	FROM Miembros
	WHERE nombre = 'Julia' AND apellido1 = 'Alemany' AND apellido2 = 'Salvatierra' 
) AND tipoDireccion = 3


--Prueba 2B - Mostrar Miembros Actualizados
EXEC getMiembros;
GO

--==========================================--

--Prueba 3B - Listar Instructores insertados en 3A
EXEC getEntrenadores;
GO

--Actualizar Instructores | Prueba 4A
INSERT INTO CertificadosXEntrenador 
VALUES(3, 
		 (SELECT idEntrenador
		  FROM Entrenadores
		  WHERE nombre = 'Rita' AND apellido1 = 'Sierra' AND apellido2 = 'Ruse')
	   )

DELETE FROM Entrenadores
WHERE nombre = 'Oscar' AND apellido1 = 'Domper' AND apellido2 = 'Burduja'

--Prueba 4B - Mostrar Instructores Actualizados
EXEC getEntrenadores;
GO

--==========================================--

--Prueba 5B - Listar Sesiones insertados en 5A
EXEC getSesiones;
GO

--Prueba 6B - Listar Participantes de Sesiones insertados en 6A
EXEC getParticipantesXSesion;
GO

--Actualizar Participantes | Prueba 7A
UPDATE MiembrosXSesion SET Asistio = 'SI'
WHERE idParticipante = 
(
	SELECT idMiembro
	FROM Miembros
	WHERE nombre = 'Andres' AND apellido1 = 'Clemente' AND apellido2 = 'Martorell'
)
AND idSesion = 3


--Prueba 7B - Mostra Participantes Actualizados
EXEC getParticipantesXSesion;
GO

--Borrar una Sesion | Prueba 8A
DELETE FROM Sesiones
WHERE idSesion = 4

--Prueba 8B - Mostrar Sesion Borrada
EXEC getSesiones;
GO

--==========================================--

--Prueba 9B - Listar Mejores Tiempos insertados en 9A
EXEC getMejoresTiempos;
GO

--Actualizar Mejores Tiempos | Prueba 10A
UPDATE TiemposRegistrados SET tiempo = '00:19:45'
WHERE idMiembroReg = (	
	SELECT idMiembro
	FROM Miembros
	WHERE nombre = 'Nuria' AND apellido1 = 'Escribano' AND apellido2 = 'Peralta'
)


--Prueba 10B - Mostrar Mejores Tiempos Actualizados
EXEC getMejoresTiempos;
GO

--==========================================--

--Prueba 11B - Listar Campeonatos y Competencias insertados en 11A
EXEC getCampsYComps;
GO

--Prueba 12B - Listar Competidores   
EXEC getCompetidores;
GO

--Borrar una Competencia | Prueba 13A
DELETE FROM Competencias 
WHERE idComp = 2

--Prueba 13B -  Mostrar Competencia borrada
EXEC getCampsYComps;
GO

--Prueba 14B - Listar Pagos insertados en 14A
EXEC getPagos;
GO

--==========================================--
--==========================================--

--Consulta 15A - Listar Resultados de una Competencia (c001)
EXEC getResComp @comp = 1;
GO

--==========================================--

--Consulta 15B - Listar Familiares
--de un Miembro (Joaquin Zambrano Deniz)
EXEC getFamiliares @nombre = 'Joaquin', @apellido1 = 'Zambrano', @apellido2 = 'Deniz'
GO

--==========================================--

--Consulta 15A - Listar los Mejores Tiempos 
--de un Miembro (Julia Alemany Salvatierra)
EXEC getTiemposMiembro @nombre = 'Julia', @apellido1 = 'Alemany', @apellido2 = 'Salvatierra'
GO

--==========================================--






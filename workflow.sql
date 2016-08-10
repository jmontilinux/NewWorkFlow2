create table wfmso						-- SOLICITUDES REGISTRADAS PARA WF DATOS GENERALES
(
	wfmsonsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud PK
	wfmsoprod	SMALLINT NOT NULL,		-- Producto (netbank,sai) --> gbcon
	wfmsonmod	SMALLINT NOT NULL,		-- Modulo
	wfmsonope	INTEGER NOT NULL,		-- Nro. Operacion
	wfmsofreg	DATE NOT NULL,          -- Fecha de Registro 
	wfmsonpro	SMALLINT NOT NULL,		-- Proceso o Flujo
	wfmsocage	INTEGER NOT NULL,		-- Nro. Solicitud
	wfmsomsol	DEC(14,2) NOT NULL,		-- Importe Solicitado
	wfmsomapr	DEC(14,2) NOT NULL,		-- Importe Aprobado
	wfmsocmon   SMALLINT NOT NULL,		-- Moneda
	wfmsostat   SMALLINT NOT NULL,		-- Estado 1=Proceso 2=Concluido 3=Rechazado
	wfmsoresp	INTEGER,		        -- Responsable
	wfmsoglos   CHAR(500),		        -- Observacion    
	wfmsomrcb   SMALLINT NOT NULL,		-- Marca 0=Alta 9=Baja
	wfmsouser	CHAR(3) NOT NULL,		-- Usuario
	wfmsohora	CHAR(8) NOT NULL,		-- Hora
	wfmsofpro   DATE NOT NULL,			-- Fecha
)

create table wfsop						-- SOLICITUDES MATERIALIZADAS EN OPERACION
(	
	wfsopnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud PK
	wfsopnope	DECIMAL(20,0) NOT NULL	-- Nro. Operacion Creada	
)

create table wfrch						-- SOLICITUDES RECHAZADAS
(
	wfrchnsol	DECIMAL(20,0) NOT NULL, -- Nro. Solicitud PK	
	wfrchnpro	INTEGER NOT NULL, 		-- Proceso o Flujo
	wfrchntar	INTEGER NOT NULL, 		-- Tarea
	wfrchcrch	SMALLINT NOT NULL,		-- Codigo de Rechazo
	wfrchdesc	CHAR(1000),				-- Glosa o Descripcion del Rechazo
	wfrchfreg   DATE NOT NULL,			-- Fecha de Registro
	wfrchuser   CHAR(3) NOT NULL,		-- Usuario
	wfrchhora	CHAR(8) NOT NULL,		-- Hora
	wfrchfpro   DATE NOT NULL,			-- Fecha
	
)


CREATE TABLE NATURALES 
(
	ID_NATURAL VARCHAR(1000) NOT NULL DEFAULT 
	CEDULA VARCHAR(10),
	CONSTRAINT NATURAL_PKEY PRIMARY KEY (ID_NATURAL)
);//RELACION VERIFICAR
 
 CREATE TABLE JURIDICAS
(
	ID_JURIDICA VARCHAR(1000) NOT NULL DEFAULT 
	RUC VARCHAR(11),
	CONSTRAINT JURIDICA_PKEY PRIMARY KEY (ID_JURIDICA)
);//RELACION ENTENDER BIEN
-----RELACION NATURAL A PERSONAS-------
ALTER TABLE PERSONAS ADD CONSTRAINT FK_ID_NATURAL FOREIGN KEY (ID_NATURAL) REFERENCES NATURALES(ID_NATURAL)
	ON DELETE CASCADE;
------RELACION JURIDICA A PERSONAS------
ALTER TABLE PERSONAS ADD CONSTRAINT FK_ID_JURIDICA FOREIGN KEY (ID_JURIDICA) REFERENCES JURIDICAS(ID_JURIDICA)
	ON DELETE CASCADE;

CREATE TABLE PERSONAS 
(
	ID_PERSONA VARCHAR(1000) NOT NULL DEFAULT,  
	ID_NATURAL VARCHAR(10),
	ID_JURIDICA VARCHAR(11),
	NOMBRE VARCHAR(30) NOT NULL,
	APELLIDO VARCHAR(30) NOT NULL,
	TELEFONO VARCHAR(10) NOT NULL,
	FECHA_DE_NACIMIENTO DATE,
	CONSTRAINT PERSONA_PKEY PRIMARY KEY (ID_PERSONA)
);
 CREATE TABLE PROVEEDORES 
(
	ID_PROVEEDOR VARCHAR(1000) NOT NULL DEFAULT, 
	ID_PERSONA VARCHAR(1000) NOT NULL,
	NOMBRE_EMPRESA VARCHAR(40) NOT NULL,
	CORREO VARCHAR(60) NOT NULL,
	TELEFONO_EMPRESA VARCHAR(10) NOT NULL,
	DIRECCION_SECTOR VARCHAR(40) NOT NULL,
	CALLE_1 VARCHAR(30) NOT NULL,
	CALLE_2 VARCHAR(30) NOT NULL,
	CONSTRAINT PROVEEDOR_PKEY PRIMARY KEY (ID_PROVEEDOR)
);
----RELACION DE LA TABLA PERSONAS A PROVEEDORRES------
ALTER TABLE PROVEEDORES ADD CONSTRAINT FK_ID_PERSONA FOREIGN KEY (ID_PERSONA) REFERENCES PERSONAS(ID_PERSONA)
	ON DELETE CASCADE;

CREATE TABLE CLIENTES 
(
	ID_CLIENTE VARCHAR(1000) NOT NULL DEFAULT, 
	ID_PERSONA VARCHAR(1000) NOT NULL,
	CORREO VARCHAR(60) NOT NULL,
	TELEFONO VARCHAR(10) NOT NULL,
	DIRECCION_SECTOR VARCHAR(60) NOT NULL,
	CALLE_1 VARCHAR(50) NOT NULL,
	CALLE_2 VARCHAR(50) NOT NULL,
	CONSTRAINT CLIENTE_PKEY PRIMARY KEY (ID_CLIENTE)
);
-----RELACION TABLA PERSONAS A CLIENTES-------
ALTER TABLE CLIENTES ADD CONSTRAINT FK_ID_PERSONA FOREIGN KEY (ID_PERSONA) REFERENCES PERSONAS(ID_PERSONA)
	ON DELETE CASCADE;

CREATE TABLE PRODUCTOS 
(
	ID_PRODUCTO VARCHAR(1000) NOT NULL DEFAULT,
	ID_PROVEEDOR VARCHAR(1000) NOT NULL,
	NOMBRE_DEL_PRODUCTO TEXT NOT NULL,
	CRACTERISTICA TEXT NOT NULL,
	VALOR_UNITARIO NUMERIC NOT NULL,
	VALOR_AL_MAYOR NUMERIC NOT NULL,
	NUMERO_DE_UNIDADES INTEGER NOT NULL,
	NUMERO_DE_CAJAS INTEGER NOT NULL,
	FACTURA_DE_COMPRA VARCHAR(1000) NOT NULL,
	CONSTRAINT PRODUCTO_PKEY PRIMARY KEY (ID_PRODUCTO)
);
---------RELACIOM ENTRE PROVEDOR A PRODUCTOS-------
ALTER TABLE PRODUCTOS ADD CONSTRAINT FK_ID_PROVEEDOR FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDORES(ID_PROVEEDOR)
	ON DELETE CASCADE;

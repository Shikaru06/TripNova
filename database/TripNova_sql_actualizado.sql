-- Oracle. Ejecutar con el usuario de la práctica.
CREATE SEQUENCE seq_tipo_destino_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_destino_id START WITH 1 INCREMENT BY 1;

CREATE TABLE tipo_destino (
    id NUMBER,
    nombre VARCHAR2(120) NOT NULL,
    CONSTRAINT pk_tipo_destino PRIMARY KEY (id),
    CONSTRAINT uk_tipo_destino_nombre UNIQUE (nombre)
);

CREATE OR REPLACE TRIGGER seq_tipo_destino_id
BEFORE INSERT ON tipo_destino
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT seq_tipo_destino_id.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/

CREATE TABLE destino (
    id NUMBER,
    nombre VARCHAR2(150) NOT NULL,
    pais VARCHAR2(100) NOT NULL,
    descripcion VARCHAR2(1000),
    precio_desde NUMBER(9,2) NOT NULL,
    dias NUMBER(3) NOT NULL,
    imagen VARCHAR2(300) NOT NULL,
    destacado NUMBER(1) DEFAULT 0 NOT NULL,
    tipo_id NUMBER NOT NULL,
    CONSTRAINT pk_destino PRIMARY KEY (id),
    CONSTRAINT ck_destino_precio_desde CHECK (precio_desde >= 0),
    CONSTRAINT ck_destino_dias CHECK (dias >= 0),
    CONSTRAINT ck_destino_destacado CHECK (destacado IN (0,1)),
    CONSTRAINT fk_destino_tipo FOREIGN KEY (tipo_id) REFERENCES tipo_destino(id)
);

CREATE OR REPLACE TRIGGER seq_destino_id
BEFORE INSERT ON destino
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT seq_destino_id.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/

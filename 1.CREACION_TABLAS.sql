



CREATE TABLE BNMSDSF01_SOFTWARE (
    F01_ID NUMBER PRIMARY KEY,
    F01_NEMONICO VARCHAR2(255),
	F01_DOMINIO VARCHAR2(255),
    F01_DESCRIPCION VARCHAR2(255),
    F01_NOMBRE VARCHAR2(255),
    F01_VERSION VARCHAR2(50),
    F01_URLGIT VARCHAR2(255),
    F01_SISTEMA_INTEGRACION VARCHAR2(100)
);


CREATE TABLE BNMSDSF03_PERSONAL (
    F03_ID NUMBER PRIMARY KEY,
    F03_DNI VARCHAR2(20),
    F03_TIPO NUMBER,
    F03_NOMBRE VARCHAR2(100),
    F03_APELLIDO VARCHAR2(100),
    F03_CORREO_LABORAL VARCHAR2(255),
    F03_CORREO VARCHAR2(255),
    F03_ANEXO VARCHAR2(20),
    F03_CELULAR VARCHAR2(20)
);


CREATE TABLE BNMSDSF02_BASE_DATOS (
    F02_ID NUMBER PRIMARY KEY,
    F02_NOMBRE NUMBER,
    F02_VERSION VARCHAR2(50)
);

CREATE SEQUENCE BNMSDSF02_BASE_DATOS_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF02_BASE_DATOS_TRIGGER
BEFORE INSERT ON BNMSDSF02_BASE_DATOS
FOR EACH ROW
BEGIN
    IF :NEW.F02_ID IS NULL THEN
        SELECT BNMSDSF02_BASE_DATOS_SEQ.NEXTVAL INTO :NEW.F02_ID FROM dual;
    END IF;
END;
/






CREATE TABLE BNMSDSF04_LENGUAJES (
    F04_ID NUMBER PRIMARY KEY,
    F04_NOMBRE VARCHAR2(100),
    F04_VERSION VARCHAR2(50),
    F04_DESCRIPCION VARCHAR2(255)
);

CREATE SEQUENCE BNMSDSF04_LENGUAJES_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF04_LENGUAJES_TRIGGER
BEFORE INSERT ON BNMSDSF04_LENGUAJES
FOR EACH ROW
BEGIN
    IF :NEW.F04_ID IS NULL THEN
        SELECT BNMSDSF04_LENGUAJES_SEQ.NEXTVAL INTO :NEW.F04_ID FROM dual;
    END IF;
END;
/
CREATE TABLE BNMSDSF05_VERSIONES_AMBIENTE (
    F05_ID NUMBER PRIMARY KEY,
    F05_TIPO_AMBIENTE NUMBER,
    F05_VERSION VARCHAR2(50),
    F05_DESCRIPCION VARCHAR2(255)
);

CREATE SEQUENCE BNMSDSF05_VERSIONES_AMBIENTE_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF05_VERSIONES_AMBIENTE_TRIGGER
BEFORE INSERT ON BNMSDSF05_VERSIONES_AMBIENTE
FOR EACH ROW
BEGIN
    IF :NEW.F05_ID IS NULL THEN
        SELECT BNMSDSF05_VERSIONES_AMBIENTE_SEQ.NEXTVAL INTO :NEW.F05_ID FROM dual;
    END IF;
END;
/
CREATE TABLE BNMSDSF06_ENLACES_AMBIENTE (
    F06_ID NUMBER PRIMARY KEY,
    F06_TIPO_AMBIENTE NUMBER,
    F06_SERVIDOR VARCHAR2(255),
    F06_IP VARCHAR2(15),
    F06_PUERTO VARCHAR2(10),
    F06_DOMINIO VARCHAR2(255),
    F06_URL VARCHAR2(255)
);

CREATE SEQUENCE BNMSDSF06_ENLACES_AMBIENTE_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF06_ENLACES_AMBIENTE_TRIGGER
BEFORE INSERT ON BNMSDSF06_ENLACES_AMBIENTE
FOR EACH ROW
BEGIN
    IF :NEW.F06_ID IS NULL THEN
        SELECT BNMSDSF06_ENLACES_AMBIENTE_SEQ.NEXTVAL INTO :NEW.F06_ID FROM dual;
    END IF;
END;
/
CREATE TABLE BNMSDSF07_AREA (
    F07_ID NUMBER PRIMARY KEY,
    F07_TIPO NUMBER,
    F07_NOMBRE VARCHAR2(100),
    F07_DESCRIPCION VARCHAR2(255)
);

CREATE SEQUENCE BNMSDSF07_AREA_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF07_AREA_TRIGGER
BEFORE INSERT ON BNMSDSF07_AREA
FOR EACH ROW
BEGIN
    IF :NEW.F07_ID IS NULL THEN
        SELECT BNMSDSF07_AREA_SEQ.NEXTVAL INTO :NEW.F07_ID FROM dual;
    END IF;
END;
/



   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   CREATE TABLE BNMSDSF03_PERSONAL (
    F03_ID NUMBER PRIMARY KEY,
    F03_DNI VARCHAR2(20),
    F03_TIPO NUMBER,
    F03_NOMBRE VARCHAR2(100),
    F03_APELLIDO VARCHAR2(100),
    F03_CORREO_LABORAL VARCHAR2(255),
    F03_CORREO VARCHAR2(255),
    F03_ANEXO VARCHAR2(20),
    F03_CELULAR VARCHAR2(20)
);

 CREATE SEQUENCE BNMSDSF03_PERSONAL_SEQ START WITH 1 INCREMENT BY 1;
  
   
   CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF03_PERSONAL_TRIGGER
BEFORE INSERT ON BNMSDSF03_PERSONAL
FOR EACH ROW
BEGIN
    IF :NEW.F03_ID IS NULL THEN
        SELECT BNMSDSF03_PERSONAL_SEQ.NEXTVAL INTO :NEW.F03_ID FROM dual;
    END IF;
END;
/
   
 CREATE TABLE BNMSDSF02_BASE_DATOS (
    F02_ID NUMBER PRIMARY KEY,
    F02_NOMBRE NUMBER,
    F02_VERSION VARCHAR2(50)
);

CREATE SEQUENCE BNMSDSF02_BASE_DATOS_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF02_BASE_DATOS_TRIGGER
BEFORE INSERT ON BNMSDSF02_BASE_DATOS
FOR EACH ROW
BEGIN
    IF :NEW.F02_ID IS NULL THEN
        SELECT BNMSDSF02_BASE_DATOS_SEQ.NEXTVAL INTO :NEW.F02_ID FROM dual;
    END IF;
END;
/  
   
CREATE TABLE BNMSDSF04_LENGUAJES (
    F04_ID NUMBER PRIMARY KEY,
    F04_NOMBRE VARCHAR2(100),
    F04_VERSION VARCHAR2(50),
    F04_DESCRIPCION VARCHAR2(255)
);




CREATE TABLE BNMSDSF10_SOFTWARE_LENGUAJES (
    F01_ID NUMBER,
    F04_ID NUMBER,
    PRIMARY KEY (F01_ID, F04_ID),
    CONSTRAINT FK_BNMSDSF10_SOFTWARE_LENGUAJES_F10_F01 
        FOREIGN KEY (F01_ID) 
        REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF10_SOFTWARE_LENGUAJES_F10_F04 
        FOREIGN KEY (F04_ID) 
        REFERENCES BNMSDSF04_LENGUAJES (F04_ID)
);















CREATE SEQUENCE BNMSDSF04_LENGUAJES_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF04_LENGUAJES_TRIGGER
BEFORE INSERT ON BNMSDSF04_LENGUAJES
FOR EACH ROW
BEGIN
    IF :NEW.F04_ID IS NULL THEN
        SELECT BNMSDSF04_LENGUAJES_SEQ.NEXTVAL INTO :NEW.F04_ID FROM dual;
    END IF;
END;
/
 CREATE TABLE BNMSDSF05_VERSIONES_AMBIENTE (
    F05_ID NUMBER PRIMARY KEY,
    F05_TIPO_AMBIENTE NUMBER,
    F05_VERSION VARCHAR2(50),
    F05_DESCRIPCION VARCHAR2(255)
);

CREATE TABLE BNMSDSF11_SOFTWARE_VERSIONES_AMBIENTE (
    F01_ID NUMBER,
    F05_ID NUMBER,
    PRIMARY KEY (F01_ID, F05_ID),
    CONSTRAINT FK_BNMSDSF11_SOFTWARE_VERSIONES_AMBIENTE_F11_F01 
        FOREIGN KEY (F01_ID) 
        REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF11_SOFTWARE_VERSIONES_AMBIENTE_F11_F05 
        FOREIGN KEY (F05_ID) 
        REFERENCES BNMSDSF05_VERSIONES_AMBIENTE (F05_ID)
);


CREATE SEQUENCE BNMSDSF05_VERSIONES_AMBIENTE_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF05_VERSIONES_AMBIENTE_TRIGGER
BEFORE INSERT ON BNMSDSF05_VERSIONES_AMBIENTE
FOR EACH ROW
BEGIN
    IF :NEW.F05_ID IS NULL THEN
        SELECT BNMSDSF05_VERSIONES_AMBIENTE_SEQ.NEXTVAL INTO :NEW.F05_ID FROM dual;
    END IF;
END;
/
 CREATE TABLE BNMSDSF06_ENLACES_AMBIENTE (
    F06_ID NUMBER PRIMARY KEY,
    F06_TIPO_AMBIENTE NUMBER,
    F06_SERVIDOR VARCHAR2(255),
    F06_IP VARCHAR2(15),
    F06_PUERTO VARCHAR2(10),
    F06_DOMINIO VARCHAR2(255),
    F06_URL VARCHAR2(255)
);

CREATE TABLE BNMSDSF12_SOFTWARE_ENLACES_AMBIENTE (
    F01_ID NUMBER,
    F06_ID NUMBER,
    PRIMARY KEY (F01_ID, F06_ID),
    CONSTRAINT FK_BNMSDSF12_SOFTWARE_ENLACES_AMBIENTE_F12_F01 
        FOREIGN KEY (F01_ID) 
        REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF12_SOFTWARE_ENLACES_AMBIENTE_F12_F06 
        FOREIGN KEY (F06_ID) 
        REFERENCES BNMSDSF06_ENLACES_AMBIENTE (F06_ID)
);





CREATE SEQUENCE BNMSDSF06_ENLACES_AMBIENTE_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF06_ENLACES_AMBIENTE_TRIGGER
BEFORE INSERT ON BNMSDSF06_ENLACES_AMBIENTE
FOR EACH ROW
BEGIN
    IF :NEW.F06_ID IS NULL THEN
        SELECT BNMSDSF06_ENLACES_AMBIENTE_SEQ.NEXTVAL INTO :NEW.F06_ID FROM dual;
    END IF;
END;
/
 commit;
 
CREATE TABLE BNMSDSF07_AREA (
    F07_ID NUMBER PRIMARY KEY,
    F07_TIPO NUMBER,
    F07_NOMBRE VARCHAR2(100),
    F07_DESCRIPCION VARCHAR2(255)
);
CREATE TABLE BNMSDSF13_SOFTWARE_AREA (
    F01_ID NUMBER,
    F07_ID NUMBER,
    PRIMARY KEY (F01_ID, F07_ID),
    CONSTRAINT FK_BNMSDSF13_SOFTWARE_AREA_F13_F01 
        FOREIGN KEY (F01_ID) 
        REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF13_SOFTWARE_AREA_F13_F07 
        FOREIGN KEY (F07_ID) 
        REFERENCES BNMSDSF07_AREA (F07_ID)
);

CREATE SEQUENCE BNMSDSF07_AREA_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE EDITIONABLE TRIGGER BNMSDSF07_AREA_TRIGGER
BEFORE INSERT ON BNMSDSF07_AREA
FOR EACH ROW
BEGIN
    IF :NEW.F07_ID IS NULL THEN
        SELECT BNMSDSF07_AREA_SEQ.NEXTVAL INTO :NEW.F07_ID FROM dual;
    END IF;
END;
/
  
-- join tablas


CREATE TABLE BNMSDSF08_SOFTWARE_BASE_DATOS (
    F01_ID NUMBER,
    F02_ID NUMBER,
    PRIMARY KEY (F01_ID, F02_ID),
    CONSTRAINT FK_BNMSDSF08_SOFTWARE_BASE_DATOS_F08_F01 FOREIGN KEY (F01_ID) REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF08_SOFTWARE_BASE_DATOS_F08_F02 FOREIGN KEY (F02_ID) REFERENCES BNMSDSF02_BASE_DATOS (F02_ID)
);


CREATE TABLE BNMSDSF09_SOFTWARE_PERSONAL (
    F01_ID NUMBER,
    F03_ID NUMBER,
     PRIMARY KEY (F01_ID, F03_ID),
    CONSTRAINT FK_BNMSDSF09_SOFTWARE_PERSONAL_F09_F01 FOREIGN KEY (F01_ID)  REFERENCES BNMSDSF01_SOFTWARE (F01_ID),
    CONSTRAINT FK_BNMSDSF01_SOFTWARE_PERSONAL_F09_F03 FOREIGN KEY (F03_ID)  REFERENCES BNMSDSF03_PERSONAL (F03_ID)
);
























  

-- Procedimineto almacenado crear tablas 

CREATE OR REPLACE PROCEDURE CREAR_TABLA_RELACION (
    p_software_table VARCHAR2,
    p_base_datos_table VARCHAR2,
    p_number VARCHAR2,
    p_number_tabltwo VARCHAR2
)
IS
    p_table_name VARCHAR2(100);
BEGIN
    -- Formar el nombre de la tabla concatenando los nombres de las dos tablas
    p_table_name :='BNMSDSF'||p_number||'_'||p_software_table || '_' || p_base_datos_table ;

    EXECUTE IMMEDIATE '
        CREATE TABLE ' || p_table_name || ' (
            F01_ID NUMBER,
            F'||p_number_tabltwo||'_ID NUMBER,
            PRIMARY KEY (F01_ID, F'||p_number_tabltwo||'_ID),
            CONSTRAINT FK_' || p_table_name || '_F01 FOREIGN KEY (F01_ID) REFERENCES BNMSDSF01_' || p_software_table || ' (F01_ID),
            CONSTRAINT FK_' || p_table_name || '_F'||p_number_tabltwo||' FOREIGN KEY (F'||p_number_tabltwo||'_ID) REFERENCES BNMSDSF'||p_number_tabltwo||'_' || p_base_datos_table || ' (F'||p_number_tabltwo||'_ID)
        )';

    DBMS_OUTPUT.PUT_LINE('Tabla ' || p_table_name || ' creada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al crear la tabla: ' || SQLERRM);
        RAISE;

END;
/

BEGIN
    CREAR_TABLA_RELACION('SOFTWARE', 'PERSONAL', '09','03');

END;
/

GRANT CREATE TABLE TO bn_sate_tablas;
GRANT EXECUTE ON CREAR_TABLA_RELACION TO bn_sate_tablas;
GRANT REFERENCES ON BNMSDSF01_SOFTWARE TO bn_sate_tablas;
GRANT REFERENCES ON BNMSDSF03_PERSONAL TO bn_sate_tablas;
-- Repite para otras tablas utilizadas en las restricciones de clave foránea


select 
    "F01_ID",
    "F03_ID"
from "BNMSDSF09_SOFTWARE_PERSONAL";
   
   
   
   
   
   

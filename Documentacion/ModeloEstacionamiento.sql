create user testEstacionamiento identified by root;
grant connect, resource, dba to testEstacionamiento;

CREATE TABLE USUARIO 
(
  ID_USUARIO NUMBER NOT NULL 
, NOMBRE VARCHAR2(50 BYTE) 
, RUT VARCHAR2(50 BYTE) 
, DIRECCION VARCHAR2(50 BYTE) 
, TELEFONO VARCHAR2(50 BYTE) 
, USUARIO_LOGIN VARCHAR2(50 BYTE) 
, PASS_LOGIN VARCHAR2(20 BYTE) 
, TIPO VARCHAR2(20 BYTE) 
, CONSTRAINT USUARIO_PK PRIMARY KEY 
  (
    ID_USUARIO 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX USUARIO_PK ON USUARIO (ID_USUARIO ASC) 
      LOGGING 
      TABLESPACE SYSTEM 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE SYSTEM 
PCTFREE 10 
PCTUSED 40 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  FREELISTS 1 
  FREELIST GROUPS 1 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;


-- PROCEDURE PARA LISTAR TODOS LOS USUARIOS

create or replace procedure listarUsuarios (registros out sys_refcursor)
as 
begin
    open registros for select * from usuario;
end;




--PROCEDURE PARA INSERTAR UN USUARIO

create or replace procedure insertarUsuario (
nom in VARCHAR2, 
rt in VARCHAR2, 
dire in VARCHAR2, 
tel in VARCHAR2, 
usu in VARCHAR2,
passwrd in VARCHAR2)
AS
begin
    insert into usuario (
    nombre,
    rut,
    direccion,
    telefono,
    usuario_login,
    pass_login,
    tipo) values(nom,rt,dire,tel,usu,passwrd,'USER');  
end;





--SECUENCIA PARA USUARIOS

create sequence usuario_secuencia start with 3;



-- TRIGGER PARA SECUENCIA

create or replace trigger usuario_trigg
    before insert on usuario
        for each row
    begin
        select usuario_secuencia.NEXTVAL
        into :new.ID_USUARIO
        from dual;
    end;



--PROCEDURE PARA ACTUALIZAR UN USUARIO

create or replace procedure actualizarUsuario (
iduser in NUMBER,
nom in VARCHAR2, 
rt in VARCHAR2, 
dire in VARCHAR2, 
tel in VARCHAR2, 
usu in VARCHAR2,
passwrd in VARCHAR2)
AS
v_id NUMBER := iduser;
v_nombre VARCHAR2(50) := nom;
v_rut VARCHAR2(50) := rt;
v_direccion VARCHAR2(50) := dire;
v_telefono VARCHAR2(50) := tel;
v_usuario VARCHAR2(50) := usu;
v_password VARCHAR2(20) := passwrd;

begin
    update usuario set 
    nombre = v_nombre,
    rut = v_rut,
    direccion = v_direccion,
    telefono = v_telefono,
    USUARIO_LOGIN = v_usuario,
    PASS_LOGIN = v_password where ID_USUARIO = iduser; 
end actualizarUsuario;




select * from usuario;
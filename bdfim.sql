--------------------------------------------------------
--  File created - Sexta-feira-Junho-14-2019   
--------------------------------------------------------
  DROP TABLE "AULAS"."AGENTES" cascade constraints;
  DROP TABLE "AULAS"."ANALISES" cascade constraints;
  DROP TABLE "AULAS"."COLHEITAS" cascade constraints;
  DROP TABLE "AULAS"."ESTADO_RESULTADOS" cascade constraints;
  DROP TABLE "AULAS"."EXPLORACOES" cascade constraints;
  DROP TABLE "AULAS"."FREGUESIAS" cascade constraints;
  DROP TABLE "AULAS"."MEDICO_VETERENARIO" cascade constraints;
  DROP TABLE "AULAS"."METODOS" cascade constraints;
  DROP TABLE "AULAS"."MOTIVO_COLHEITA" cascade constraints;
  DROP TABLE "AULAS"."PRODUTOS" cascade constraints;
  DROP TABLE "AULAS"."RESULTADOS" cascade constraints;
  DROP SEQUENCE "AULAS"."SEQ_AGENTES";
  DROP SEQUENCE "AULAS"."SEQ_ANALISES";
  DROP SEQUENCE "AULAS"."SEQ_AURICULARES";
  DROP SEQUENCE "AULAS"."SEQ_COLHEITAS";
  DROP SEQUENCE "AULAS"."SEQ_ESTADO_RESULTADOS";
  DROP SEQUENCE "AULAS"."SEQ_MEDICO_VETERENARIO";
  DROP SEQUENCE "AULAS"."SEQ_METODOS";
  DROP SEQUENCE "AULAS"."SEQ_MOTIVO_COLHEITA";
  DROP SEQUENCE "AULAS"."SEQ_PRODUTOS";
  DROP SEQUENCE "AULAS"."SEQ_REQUESICAO";
  DROP SEQUENCE "AULAS"."SEQ_RESULTADOS";
  DROP VIEW "AULAS"."DEPT_EMP";
  DROP VIEW "AULAS"."EX1";
  DROP VIEW "AULAS"."VIEW_COLHEITAS";
  DROP VIEW "AULAS"."VIEW_RESULTADOS";
  DROP FUNCTION "AULAS"."EXPONENC";
  DROP PROCEDURE "AULAS"."EXPONENCIACAO";
--------------------------------------------------------
--  DDL for Sequence SEQ_AGENTES
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_AGENTES"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ANALISES
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_ANALISES"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_AURICULARES
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_AURICULARES"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 10 START WITH 210 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COLHEITAS
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_COLHEITAS"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ESTADO_RESULTADOS
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_ESTADO_RESULTADOS"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MEDICO_VETERENARIO
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_MEDICO_VETERENARIO"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_METODOS
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_METODOS"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MOTIVO_COLHEITA
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_MOTIVO_COLHEITA"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRODUTOS
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_PRODUTOS"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REQUESICAO
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_REQUESICAO"  MINVALUE 10 MAXVALUE 100000 INCREMENT BY 10 START WITH 210 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RESULTADOS
--------------------------------------------------------

   CREATE SEQUENCE  "AULAS"."SEQ_RESULTADOS"  MINVALUE 0 MAXVALUE 100000 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AGENTES
--------------------------------------------------------

  CREATE TABLE "AULAS"."AGENTES" 
   (	"ID_AGENTES" NUMBER(3,0), 
	"NOME_AGENTES" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ANALISES
--------------------------------------------------------

  CREATE TABLE "AULAS"."ANALISES" 
   (	"ID_ANALISES" NUMBER(3,0), 
	"ID_COLHEITAS" NUMBER(3,0), 
	"ID_AGENTES" NUMBER(3,0), 
	"ID_METODO" NUMBER(3,0), 
	"TOTAL" NUMBER(3,0), 
	"NEGATIVOS" NUMBER(3,0), 
	"POSITIVOS" NUMBER(3,0), 
	"DUVIDOSOS" NUMBER(2,0), 
	"PREJUDICADOS" NUMBER(2,0), 
	"DATA_INICIO_ENSAIO" DATE, 
	"DATA_FIM_ENSAIO" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COLHEITAS
--------------------------------------------------------

  CREATE TABLE "AULAS"."COLHEITAS" 
   (	"ID_COLHEITA" NUMBER(3,0), 
	"ID_EXPLORACAO" VARCHAR2(6 BYTE), 
	"REQUESICAO" CHAR(15 BYTE), 
	"ID_PRODUTO" NUMBER(2,0), 
	"DATA_ENTRADA" DATE, 
	"ID_MOTIVO" NUMBER(3,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ESTADO_RESULTADOS
--------------------------------------------------------

  CREATE TABLE "AULAS"."ESTADO_RESULTADOS" 
   (	"ID_ER" NUMBER(3,0), 
	"ESTADO_RESULTADO" VARCHAR2(12 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXPLORACOES
--------------------------------------------------------

  CREATE TABLE "AULAS"."EXPLORACOES" 
   (	"ID_EXPLORACAO" VARCHAR2(6 BYTE), 
	"LOCAL_EXPLORACAO" VARCHAR2(25 BYTE), 
	"DICOFRE" NUMBER(6,0), 
	"PRODUTOR" VARCHAR2(30 BYTE), 
	"ID_MEDICO_VETERENARIO" NUMBER(3,0), 
	"LATITUDE" VARCHAR2(20 BYTE), 
	"LONGITUDE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FREGUESIAS
--------------------------------------------------------

  CREATE TABLE "AULAS"."FREGUESIAS" 
   (	"DICOFRE" NUMBER(6,0), 
	"NOME_DICOFRE" VARCHAR2(40 BYTE), 
	"NOME_CONCELHO" VARCHAR2(30 BYTE), 
	"NOME_DISTRITO" VARCHAR2(30 BYTE), 
	"AREAHA" NUMBER(6,0), 
	"COD_POSTAL" NUMBER(4,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEDICO_VETERENARIO
--------------------------------------------------------

  CREATE TABLE "AULAS"."MEDICO_VETERENARIO" 
   (	"ID_MEDICO_VETERENARIO" NUMBER(3,0), 
	"NOME_MEDICO_VETERENARIO" VARCHAR2(40 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table METODOS
--------------------------------------------------------

  CREATE TABLE "AULAS"."METODOS" 
   (	"ID_METODOS" NUMBER(3,0), 
	"ID_AGENTES" NUMBER(3,0), 
	"NOME_METODO" VARCHAR2(150 BYTE), 
	"NOME_METODO_SIMPL" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOTIVO_COLHEITA
--------------------------------------------------------

  CREATE TABLE "AULAS"."MOTIVO_COLHEITA" 
   (	"ID_MOTIVO" NUMBER(3,0), 
	"NOME_MOTIVO" VARCHAR2(40 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUTOS
--------------------------------------------------------

  CREATE TABLE "AULAS"."PRODUTOS" 
   (	"ID_PRODUTO" NUMBER(2,0), 
	"NOME_PRODUTO" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESULTADOS
--------------------------------------------------------

  CREATE TABLE "AULAS"."RESULTADOS" 
   (	"ID_RESULTADOS" NUMBER(6,0), 
	"ID_EXPLORACAO" VARCHAR2(6 BYTE), 
	"NOME_DETENTOR" VARCHAR2(40 BYTE), 
	"DATA_INTERVENCAO" DATE, 
	"ID_AGENTES" VARCHAR2(15 BYTE), 
	"ID_METODOS" NUMBER(3,0), 
	"ESPECIE" VARCHAR2(10 BYTE), 
	"DICOFRE" NUMBER(6,0), 
	"AURICULAR" VARCHAR2(15 BYTE), 
	"ID_ER" NUMBER(3,0), 
	"APTIDAO" VARCHAR2(25 BYTE), 
	"ID_ANALISE" NUMBER(3,0), 
	"SEXO" VARCHAR2(1 BYTE), 
	"DATA_NASCIMENTO" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;

---------------------------------------------------
--   DATA FOR TABLE AGENTES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.AGENTES
Insert into AULAS.AGENTES (ID_AGENTES,NOME_AGENTES) values (0,'IBR Rinotraqueíte Infecciosa Bovina');
Insert into AULAS.AGENTES (ID_AGENTES,NOME_AGENTES) values (1,'BVD Diarreia Viral Bovina');
Insert into AULAS.AGENTES (ID_AGENTES,NOME_AGENTES) values (2,'BB Burcelose Bovina');

---------------------------------------------------
--   END DATA FOR TABLE AGENTES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ANALISES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.ANALISES
Insert into AULAS.ANALISES (ID_ANALISES,ID_COLHEITAS,ID_AGENTES,ID_METODO,TOTAL,NEGATIVOS,POSITIVOS,DUVIDOSOS,PREJUDICADOS,DATA_INICIO_ENSAIO,DATA_FIM_ENSAIO) values (0,0,0,3,5,2,2,1,0,to_timestamp('19.02.26 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),to_timestamp('19.02.27 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.ANALISES (ID_ANALISES,ID_COLHEITAS,ID_AGENTES,ID_METODO,TOTAL,NEGATIVOS,POSITIVOS,DUVIDOSOS,PREJUDICADOS,DATA_INICIO_ENSAIO,DATA_FIM_ENSAIO) values (1,1,1,2,7,3,3,0,1,to_timestamp('19.01.24 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),to_timestamp('19.01.24 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.ANALISES (ID_ANALISES,ID_COLHEITAS,ID_AGENTES,ID_METODO,TOTAL,NEGATIVOS,POSITIVOS,DUVIDOSOS,PREJUDICADOS,DATA_INICIO_ENSAIO,DATA_FIM_ENSAIO) values (2,2,0,4,2,2,0,0,0,to_timestamp('18.11.13 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),to_timestamp('18.11.14 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.ANALISES (ID_ANALISES,ID_COLHEITAS,ID_AGENTES,ID_METODO,TOTAL,NEGATIVOS,POSITIVOS,DUVIDOSOS,PREJUDICADOS,DATA_INICIO_ENSAIO,DATA_FIM_ENSAIO) values (3,3,0,5,10,6,2,1,1,to_timestamp('18.12.20 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),to_timestamp('18.12.20 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE ANALISES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE COLHEITAS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.COLHEITAS
Insert into AULAS.COLHEITAS (ID_COLHEITA,ID_EXPLORACAO,REQUESICAO,ID_PRODUTO,DATA_ENTRADA,ID_MOTIVO) values (0,'VX16B','10/19          ',0,to_timestamp('19.05.03 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),0);
Insert into AULAS.COLHEITAS (ID_COLHEITA,ID_EXPLORACAO,REQUESICAO,ID_PRODUTO,DATA_ENTRADA,ID_MOTIVO) values (1,'VW04G','20/19          ',0,to_timestamp('19.02.13 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),1);
Insert into AULAS.COLHEITAS (ID_COLHEITA,ID_EXPLORACAO,REQUESICAO,ID_PRODUTO,DATA_ENTRADA,ID_MOTIVO) values (2,'VN28F','30/19          ',0,to_timestamp('19.06.07 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),2);
Insert into AULAS.COLHEITAS (ID_COLHEITA,ID_EXPLORACAO,REQUESICAO,ID_PRODUTO,DATA_ENTRADA,ID_MOTIVO) values (3,'WH82D','40/19          ',0,to_timestamp('18.11.26 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),3);

---------------------------------------------------
--   END DATA FOR TABLE COLHEITAS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ESTADO_RESULTADOS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.ESTADO_RESULTADOS
Insert into AULAS.ESTADO_RESULTADOS (ID_ER,ESTADO_RESULTADO) values (0,'NEGATIVO');
Insert into AULAS.ESTADO_RESULTADOS (ID_ER,ESTADO_RESULTADO) values (1,'INFETADO');
Insert into AULAS.ESTADO_RESULTADOS (ID_ER,ESTADO_RESULTADO) values (2,'NÃO SABE');

---------------------------------------------------
--   END DATA FOR TABLE ESTADO_RESULTADOS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EXPLORACOES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.EXPLORACOES
Insert into AULAS.EXPLORACOES (ID_EXPLORACAO,LOCAL_EXPLORACAO,DICOFRE,PRODUTOR,ID_MEDICO_VETERENARIO,LATITUDE,LONGITUDE) values ('VW04G','HERDADE A',10103,'CHEIRO A CAMPO LDA',1,'40° 31? 0? N','8° 26? 0? W');
Insert into AULAS.EXPLORACOES (ID_EXPLORACAO,LOCAL_EXPLORACAO,DICOFRE,PRODUTOR,ID_MEDICO_VETERENARIO,LATITUDE,LONGITUDE) values ('VN28F','HERDADE B',140303,'SONAE',1,'39° 10? 34.5? N','8° 35? 10? W');
Insert into AULAS.EXPLORACOES (ID_EXPLORACAO,LOCAL_EXPLORACAO,DICOFRE,PRODUTOR,ID_MEDICO_VETERENARIO,LATITUDE,LONGITUDE) values ('VX16B','HERDADE C',140605,'UCAL',0,'39° 4? 51? N','8° 45? 40? W');
Insert into AULAS.EXPLORACOES (ID_EXPLORACAO,LOCAL_EXPLORACAO,DICOFRE,PRODUTOR,ID_MEDICO_VETERENARIO,LATITUDE,LONGITUDE) values ('WH82D','QUINTA A',100116,'NACO NA PEDRA LDA',0,'39° 10? 40? N','9° 19? 4? W');

---------------------------------------------------
--   END DATA FOR TABLE EXPLORACOES
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE FREGUESIAS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.FREGUESIAS
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (10103,'AGUADA DE CIMA','ÁGUEDA','AVEIRO',2839,3750);
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (40708,'BOUÇA','MIRANDELA','BRANGANÇA',1299,5385);
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (100116,'VIMEIRO','ALCOBAÇA','LEIRIA',2017,2530);
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (110664,'SANTA CLARA','LISBOA','LISBOA',336,1100);
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (140303,'FAZENDAS DE ALMEIRIM','ALMEIRIM','SANTARÉM',5830,2080);
Insert into AULAS.FREGUESIAS (DICOFRE,NOME_DICOFRE,NOME_CONCELHO,NOME_DISTRITO,AREAHA,COD_POSTAL) values (140605,'VALADA','CARTAXO','SANTARÉM',4217,2070);

---------------------------------------------------
--   END DATA FOR TABLE FREGUESIAS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MEDICO_VETERENARIO
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.MEDICO_VETERENARIO
Insert into AULAS.MEDICO_VETERENARIO (ID_MEDICO_VETERENARIO,NOME_MEDICO_VETERENARIO) values (0,'MANUEL NUNES');
Insert into AULAS.MEDICO_VETERENARIO (ID_MEDICO_VETERENARIO,NOME_MEDICO_VETERENARIO) values (1,'ALBERTO FONSECA');
Insert into AULAS.MEDICO_VETERENARIO (ID_MEDICO_VETERENARIO,NOME_MEDICO_VETERENARIO) values (2,'LUIS GOUCHA');

---------------------------------------------------
--   END DATA FOR TABLE MEDICO_VETERENARIO
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE METODOS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.METODOS
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (0,1,'Elisa bloqueio, para detecção de anticorpos contra a proteina p80 do vírus BVD/MD','BVD p80 Ac');
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (1,0,'Pesquisa de Anticorpos anti herpesvírus-1 da rinotraqueíte Infecciosa Bovina','IBR HV-1');
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (2,0,'ELISA competição, para deteção de anticorpos gE anti-BHV-1','IBR gE');
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (3,1,'Pesquisa de Antigénio Erns do vírus BVD - ELISA Indireto','BVD Ag');
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (4,1,'PCR','PCR');
Insert into AULAS.METODOS (ID_METODOS,ID_AGENTES,NOME_METODO,NOME_METODO_SIMPL) values (5,1,'Pesquisa de Antigénio - Biopsia de Orelha','BVD Ag - Biopsia');

---------------------------------------------------
--   END DATA FOR TABLE METODOS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE MOTIVO_COLHEITA
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.MOTIVO_COLHEITA
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (0,'AVALIAÇÃO 1ª FASE');
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (1,'REPOSIÇÃO INTERNA');
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (2,'VENDA');
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (3,'SUSPEITA CLINICA');
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (4,'AVALIAÇÃO 2ª FASE');
Insert into AULAS.MOTIVO_COLHEITA (ID_MOTIVO,NOME_MOTIVO) values (5,'MONITORIZAÇÃO');

---------------------------------------------------
--   END DATA FOR TABLE MOTIVO_COLHEITA
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PRODUTOS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.PRODUTOS
Insert into AULAS.PRODUTOS (ID_PRODUTO,NOME_PRODUTO) values (0,'SORO');
Insert into AULAS.PRODUTOS (ID_PRODUTO,NOME_PRODUTO) values (1,'IBUPROFENO');

---------------------------------------------------
--   END DATA FOR TABLE PRODUTOS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE RESULTADOS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into AULAS.RESULTADOS
Insert into AULAS.RESULTADOS (ID_RESULTADOS,ID_EXPLORACAO,NOME_DETENTOR,DATA_INTERVENCAO,ID_AGENTES,ID_METODOS,ESPECIE,DICOFRE,AURICULAR,ID_ER,APTIDAO,ID_ANALISE,SEXO,DATA_NASCIMENTO) values (0,'VW04G','Alberto Ricardo',to_timestamp('18.09.09 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),'1',2,'BOVINO',10103,'PT10',0,'BOVINOS NÃO LEITE',1,'M',to_timestamp('15.02.18 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.RESULTADOS (ID_RESULTADOS,ID_EXPLORACAO,NOME_DETENTOR,DATA_INTERVENCAO,ID_AGENTES,ID_METODOS,ESPECIE,DICOFRE,AURICULAR,ID_ER,APTIDAO,ID_ANALISE,SEXO,DATA_NASCIMENTO) values (1,'VN28F','Adriano João',to_timestamp('19.04.03 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),'0',4,'BOVINO',140303,'PT20',0,'BOVINOS NÃO LEITE',2,'M',to_timestamp('12.04.26 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.RESULTADOS (ID_RESULTADOS,ID_EXPLORACAO,NOME_DETENTOR,DATA_INTERVENCAO,ID_AGENTES,ID_METODOS,ESPECIE,DICOFRE,AURICULAR,ID_ER,APTIDAO,ID_ANALISE,SEXO,DATA_NASCIMENTO) values (2,'VX16B','Sílvia Cabral',to_timestamp('19.06.03 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),'0',3,'BOVINO',140605,'PT30',0,'BOVINOS NÃO LEITE',0,'F',to_timestamp('14.09.11 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));
Insert into AULAS.RESULTADOS (ID_RESULTADOS,ID_EXPLORACAO,NOME_DETENTOR,DATA_INTERVENCAO,ID_AGENTES,ID_METODOS,ESPECIE,DICOFRE,AURICULAR,ID_ER,APTIDAO,ID_ANALISE,SEXO,DATA_NASCIMENTO) values (3,'WH82D','Gilberto Carvalho',to_timestamp('19.05.27 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'),'0',5,'BOVINO',100116,'PT40',1,'BOVINOS NÃO LEITE',3,'F',to_timestamp('18.03.26 00:00:00,000000000','RR.MM.DD HH24:MI:SS,FF'));

---------------------------------------------------
--   END DATA FOR TABLE RESULTADOS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table AGENTES
--------------------------------------------------------

  ALTER TABLE "AULAS"."AGENTES" ADD PRIMARY KEY ("ID_AGENTES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table METODOS
--------------------------------------------------------

  ALTER TABLE "AULAS"."METODOS" ADD PRIMARY KEY ("ID_METODOS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COLHEITAS
--------------------------------------------------------

  ALTER TABLE "AULAS"."COLHEITAS" ADD PRIMARY KEY ("ID_COLHEITA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDICO_VETERENARIO
--------------------------------------------------------

  ALTER TABLE "AULAS"."MEDICO_VETERENARIO" ADD PRIMARY KEY ("ID_MEDICO_VETERENARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  Constraints for Table ANALISES
--------------------------------------------------------

  ALTER TABLE "AULAS"."ANALISES" ADD PRIMARY KEY ("ID_ANALISES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MOTIVO_COLHEITA
--------------------------------------------------------

  ALTER TABLE "AULAS"."MOTIVO_COLHEITA" ADD PRIMARY KEY ("ID_MOTIVO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO_RESULTADOS
--------------------------------------------------------

  ALTER TABLE "AULAS"."ESTADO_RESULTADOS" ADD PRIMARY KEY ("ID_ER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXPLORACOES
--------------------------------------------------------

  ALTER TABLE "AULAS"."EXPLORACOES" ADD PRIMARY KEY ("ID_EXPLORACAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUTOS
--------------------------------------------------------

  ALTER TABLE "AULAS"."PRODUTOS" ADD PRIMARY KEY ("ID_PRODUTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FREGUESIAS
--------------------------------------------------------

  ALTER TABLE "AULAS"."FREGUESIAS" ADD PRIMARY KEY ("DICOFRE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table ANALISES
--------------------------------------------------------

  ALTER TABLE "AULAS"."ANALISES" ADD FOREIGN KEY ("ID_METODO")
	  REFERENCES "AULAS"."METODOS" ("ID_METODOS") ENABLE;
 
  ALTER TABLE "AULAS"."ANALISES" ADD FOREIGN KEY ("ID_AGENTES")
	  REFERENCES "AULAS"."AGENTES" ("ID_AGENTES") ENABLE;
 
  ALTER TABLE "AULAS"."ANALISES" ADD FOREIGN KEY ("ID_COLHEITAS")
	  REFERENCES "AULAS"."COLHEITAS" ("ID_COLHEITA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COLHEITAS
--------------------------------------------------------

  ALTER TABLE "AULAS"."COLHEITAS" ADD FOREIGN KEY ("ID_MOTIVO")
	  REFERENCES "AULAS"."MOTIVO_COLHEITA" ("ID_MOTIVO") ENABLE;
 
  ALTER TABLE "AULAS"."COLHEITAS" ADD FOREIGN KEY ("ID_PRODUTO")
	  REFERENCES "AULAS"."PRODUTOS" ("ID_PRODUTO") ENABLE;
 
  ALTER TABLE "AULAS"."COLHEITAS" ADD FOREIGN KEY ("ID_EXPLORACAO")
	  REFERENCES "AULAS"."EXPLORACOES" ("ID_EXPLORACAO") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table EXPLORACOES
--------------------------------------------------------

  ALTER TABLE "AULAS"."EXPLORACOES" ADD FOREIGN KEY ("ID_MEDICO_VETERENARIO")
	  REFERENCES "AULAS"."MEDICO_VETERENARIO" ("ID_MEDICO_VETERENARIO") ENABLE;
 
  ALTER TABLE "AULAS"."EXPLORACOES" ADD FOREIGN KEY ("DICOFRE")
	  REFERENCES "AULAS"."FREGUESIAS" ("DICOFRE") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table METODOS
--------------------------------------------------------

  ALTER TABLE "AULAS"."METODOS" ADD FOREIGN KEY ("ID_AGENTES")
	  REFERENCES "AULAS"."AGENTES" ("ID_AGENTES") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table RESULTADOS
--------------------------------------------------------

  ALTER TABLE "AULAS"."RESULTADOS" ADD FOREIGN KEY ("ID_METODOS")
	  REFERENCES "AULAS"."METODOS" ("ID_METODOS") ENABLE;
 
  ALTER TABLE "AULAS"."RESULTADOS" ADD FOREIGN KEY ("ID_ER")
	  REFERENCES "AULAS"."ESTADO_RESULTADOS" ("ID_ER") ENABLE;
 
  ALTER TABLE "AULAS"."RESULTADOS" ADD FOREIGN KEY ("DICOFRE")
	  REFERENCES "AULAS"."FREGUESIAS" ("DICOFRE") ENABLE;
 
  ALTER TABLE "AULAS"."RESULTADOS" ADD FOREIGN KEY ("ID_ANALISE")
	  REFERENCES "AULAS"."ANALISES" ("ID_ANALISES") ENABLE;
 
  ALTER TABLE "AULAS"."RESULTADOS" ADD FOREIGN KEY ("ID_EXPLORACAO")
	  REFERENCES "AULAS"."EXPLORACOES" ("ID_EXPLORACAO") ENABLE;
--------------------------------------------------------
--  DDL for View DEPT_EMP
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AULAS"."DEPT_EMP" ("ENOME", "DEPTNO", "DNOME") AS 
  SELECT EMPR.ENOME,
EMPR.DEPTNO, DEPART.DNOME FROM EMPR, DEPART WHERE
EMPR.DEPTNO=DEPART.DEPTNO;
--------------------------------------------------------
--  DDL for View EX1
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AULAS"."EX1" ("DEPTNO", "AVERAGE", "MAXIMO", "MINIMO", "SOMATORIO", "COUNTE") AS 
  SELECT EMPR.DEPTNO,
AVG(EMPR.SAL),MAX(EMPR.SAL),MIN(EMPR.SAL),
SUM(EMPR.SAL),COUNT(EMPR.SAL) FROM EMPR 
GROUP BY EMPR.DEPTNO;
--------------------------------------------------------
--  DDL for View VIEW_COLHEITAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AULAS"."VIEW_COLHEITAS" ("ID_COLHEITA", "ID_EXPLORACAO", "REQUESICAO", "ID_PRODUTO", "DATA_ENTRADA", "ID_MOTIVO") AS 
  SELECT COL.ID_COLHEITA, COL.ID_EXPLORACAO, COL.REQUESICAO, COL.ID_PRODUTO,  COL.DATA_ENTRADA, COL.ID_MOTIVO FROM COLHEITAS COL;
--------------------------------------------------------
--  DDL for View VIEW_RESULTADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "AULAS"."VIEW_RESULTADOS" ("ID_RESULTADOS", "DATA_INTERVENCAO", "ID_EXPLORACAO", "NOME_DETENTOR", "ESPECIE", "AURICULAR", "APTIDAO", "SEXO") AS 
  SELECT RES.ID_RESULTADOS, RES.DATA_INTERVENCAO, RES.ID_EXPLORACAO, RES.NOME_DETENTOR, RES.ESPECIE, RES.AURICULAR, RES.APTIDAO, RES.SEXO FROM RESULTADOS RES;
--------------------------------------------------------
--  DDL for Function EXPONENC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "AULAS"."EXPONENC" 
(x in number, y in number)
return number
IS
  r number;
BEGIN
   r:=x**y;
   return (r);
end exponenc;

/

--------------------------------------------------------
--  DDL for Procedure EXPONENCIACAO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AULAS"."EXPONENCIACAO" 
(x in number, y in number, resultado out number)
IS
BEGIN
   resultado:=x**y;
end;

/


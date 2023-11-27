----------------------------- USUARIO -------------------------------
--Criando tabela T_FIN_USUARIO
CREATE TABLE TB_FIN_USUARIO(
    CD_USUARIO      NUMBER(6)        NOT NULL,
    NM_USUARIO      VARCHAR2(255)    NOT NULL,
    EMAIL_USUARIO   VARCHAR2(100)    NOT NULL,
    NRO_CELULAR     VARCHAR2(20)     NOT NULL,
    SENHA_USUARIO   VARCHAR2(100)    NOT NULL,
    DT_REGISTRO     DATE             NOT NULL,
    DESC_USUARIO    VARCHAR2(255)
);

--ALTER a chave primaria da tabela T_FIN_USUARIO (ID_USUARIO)
ALTER TABLE TB_FIN_USUARIO
    ADD CONSTRAINT PK_FIN_USUARIO PRIMARY KEY (CD_USUARIO);

---------------------------- META ---------------------------
CREATE TABLE TB_FIN_META (
    CD_USUARIO      NUMBER(6)       NOT NULL,
    CD_META         NUMBER(6)       NOT NULL,
    NM_META         VARCHAR2(100)   NOT NULL,
    DT_INICIO       DATE            NOT NULL,
    DT_FINAL        DATE            NOT NULL,
    VL_META         NUMBER(8,2)     NOT NULL,
    STATUS_META     VARCHAR2(100)   NOT NULL,
    PROGRESSO_ATUAL NUMBER(8,2)
);

--ALTER na tabela T_FIN_META adicionando a chave primaria (ID_META) e chave estrangeira da tabela T_FIN_USUARIO (ID_USUARIO)
ALTER TABLE TB_FIN_META
    ADD CONSTRAINT PK_FIN_META PRIMARY KEY (CD_META)
    ADD CONSTRAINT FK_FIN_META FOREIGN KEY (CD_USUARIO)
        REFERENCES TB_FIN_USUARIO (CD_USUARIO);

---------------------------- DESPESA ---------------------------
CREATE TABLE TB_FIN_DESPESA (
    CD_USUARIO          NUMBER(6)       NOT NULL,
    CD_DESPESA          NUMBER(6)       NOT NULL,
    NM_DESPESA          VARCHAR2(100)   NOT NULL,
    VL_DESPESA          NUMBER(8,2)     NOT NULL,
    DT_DESPESA          DATE            NOT NULL,
    FREQUENCIA_DESPESA  VARCHAR2(100)   NOT NULL
);

ALTER TABLE TB_FIN_DESPESA
    ADD CONSTRAINT  PK_ID_DEPESA    PRIMARY KEY (CD_DESPESA)
    ADD CONSTRAINT  FK_ID_USUARIO   FOREIGN KEY (CD_USUARIO)
        REFERENCES  TB_FIN_USUARIO (CD_USUARIO);

---------------------------- RECEITA ---------------------------
CREATE TABLE TB_FIN_RECEITA (
    CD_USUARIO          NUMBER(6)       NOT NULL,
    CD_RECEITA          NUMBER(6)       NOT NULL,
    NM_RECEITA          VARCHAR2(100)   NOT NULL,
    VL_RECEITA          NUMBER(8,2)     NOT NULL,
    DT_RECEITA          DATE            NOT NULL,
    FREQUENCIA_RECEITA  VARCHAR2(100)   NOT NULL
);

ALTER TABLE TB_FIN_RECEITA
    ADD CONSTRAINT PK_FIN_RECEITA PRIMARY KEY (CD_RECEITA)
    ADD CONSTRAINT FK_FIN_RECEITA FOREIGN KEY (CD_USUARIO)
        REFERENCES TB_FIN_USUARIO (CD_USUARIO);

---------------------------- INVESTIMENTO ---------------------------
CREATE TABLE TB_FIN_INVESTIMENTO(
    CD_USUARIO          NUMBER(6)       NOT NULL,
    CD_INVESTIMENTO     NUMBER(6)       NOT NULL,
    NM_INVESTIMENTO     VARCHAR2(100)   NOT NULL,
    VL_INVESTIMENTO     NUMBER(8,2)     NOT NULL,
    DT_INVESTIMENTO     DATE            NOT NULL,
    TP_INVESTIMENTO     VARCHAR2(100)   NOT NULL
);

ALTER TABLE TB_FIN_INVESTIMENTO
    ADD CONSTRAINT  PK_FIN_INVESTIMENTO PRIMARY KEY (CD_INVESTIMENTO)
    ADD CONSTRAINT  FK_FIN_INVESTIMNETO FOREIGN KEY (CD_USUARIO)
        REFERENCES  TB_FIN_USUARIO (CD_USUARIO);

-----------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------Sequencies-------------------------------------
CREATE SEQUENCE SQ_USUARIO MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SQ_META MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SQ_DESPESA MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SQ_RECEITA MINVALUE 1 START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE SQ_INVESTIMENTO MINVALUE 1 START WITH 1 INCREMENT BY 1;

----------------------------------INSERTS----------------------------------------

----------------------------------Usuario------------------------
--INSERT de dados na tabela T_FIN_USUARIO
INSERT INTO TB_FIN_USUARIO(CD_USUARIO, NM_USUARIO, EMAIL_USUARIO, SENHA_USUARIO, NRO_CELULAR, DT_REGISTRO, DESC_USUARIO)
    VALUES(SQ_USUARIO.NEXTVAL, 'Lucas', 'lucas@icloud.com', '6565edde94b6564b19965ca7cde7536d', '(11) 91668-3132', '20/10/2023', 'Banco Itaú');

INSERT INTO TB_FIN_USUARIO(CD_USUARIO, NM_USUARIO, EMAIL_USUARIO, SENHA_USUARIO, NRO_CELULAR, DT_REGISTRO, DESC_USUARIO)
    VALUES(SQ_USUARIO.NEXTVAL, 'Thais', 'thais@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '(11) 91457-3156', '20/10/2023', 'Banco Nubank');

INSERT INTO TB_FIN_USUARIO(CD_USUARIO, NM_USUARIO, EMAIL_USUARIO, SENHA_USUARIO, NRO_CELULAR, DT_REGISTRO, DESC_USUARIO)
    VALUES(SQ_USUARIO.NEXTVAL, 'Diogo', 'diogo@outlook.com', '6c44e5cd17f0019c64b042e4a745412a', '(11) 95727-3546', '20/10/2023', 'Banco Bradesco');

-----------------------------Meta---------------------------------
--INSERT de dados na tabela T_FIN_META
INSERT INTO TB_FIN_META (CD_USUARIO, CD_META, NM_META, DT_INICIO, DT_FINAL, VL_META, STATUS_META, PROGRESSO_ATUAL)
VALUES(1, SQ_META.NEXTVAL, 'Viagem começo do ano', '01/01/2023', '04/12/2023', 300.40, 'Em andamento', 50.0);

-----------------------------Despesa------------------------
INSERT INTO TB_FIN_DESPESA(CD_USUARIO, CD_DESPESA, NM_DESPESA, VL_DESPESA, DT_DESPESA, FREQUENCIA_DESPESA)
VALUES(1, SQ_DESPESA.NEXTVAL, 'Imposto de renda', 153.000, '05/05/2023', 'ANUAL');

-----------------------------Receita------------------------
INSERT INTO TB_FIN_RECEITA (CD_USUARIO, CD_RECEITA, NM_RECEITA, VL_RECEITA, DT_RECEITA, FREQUENCIA_RECEITA)
VALUES (1, SQ_RECEITA.NEXTVAL, 'Freelas da FIAP',240.50, '24/10/2023', 'Semanal');


--------------------------Investimento------------------------
INSERT INTO TB_FIN_INVESTIMENTO (CD_USUARIO, CD_INVESTIMENTO, NM_INVESTIMENTO, VL, DT_INVESTIMENTO, TP_INVESTIMENTO)
VALUES (1, SQ_INVESTIMENTO.NEXTVAL, 'PETR4 (BVMF)', 11.600, '26/10/2023', 'Fundos de Ações');
-----------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------Querys----------------------------------------

--#SELECT-----------------------------------
--SELECT * FROM tabela| * = todas as colunas, FROM = tabela     
SELECT * FROM TB_FIN_USUARIO;  

----------------------------------Deletes----------------------------------------
--DELETE da primeira linha da tabela T_FIN_USUARIO
DELETE FROM TB_FIN_USUARIO WHERE ID_USUARIO = 1;
-------------------------------------------------------------------------------------
--DELETE das tabela em cascata com seus relacionamentos da tabela T_FIN_DADOS_USUARIO
DROP TABLE TB_FIN_USUARIO CASCADE CONSTRAINTS;
DROP TABLE TB_FIN_META CASCADE CONSTRAINTS;
DROP TABLE TB_FIN_DESPESA CASCADE CONSTRAINTS;
DROP TABLE TB_FIN_RECEITA CASCADE CONSTRAINTS;
DROP TABLE TB_FIN_INVESTIMENTO CASCADE CONSTRAINTS;

--DROP SEQUENCE
DROP SEQUENCE SQ_USUARIO;
DROP SEQUENCE SQ_META;
DROP SEQUENCE SQ_DESPESA;
DROP SEQUENCE SQ_RECEITA;
DROP SEQUENCE SQ_INVESTIMENTO;
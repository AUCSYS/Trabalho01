-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE operador (
id_operador INTEGER PRIMARY KEY,
numero_operador NUMERIC(4),
rua_operador VARCHAR(50),
cpf_operador NUMERIC(11),
cep_operador VARCHAR(9),
nome_operador VARCHAR(50),
datanasc_operador DATETIME,
username_operador VARCHAR(50),
password_operador VARCHAR(40)
)

CREATE TABLE tipo_operador (
id_tipo_operador INTEGER PRIMARY KEY,
descricao_tipo_operador VARCHAR(25),
id_operador INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
)

CREATE TABLE contato (
id_contato INTEGER PRIMARY KEY,
valor_contato VARCHAR(50),
id_operador INTEGER,
id_tipo_contato INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
)

CREATE TABLE tipo_contato (
id_tipo_contato INTEGER PRIMARY KEY,
descricao_tipo_contato VARCHAR(15)
)

CREATE TABLE Bairro (
id_bairro INTEGER PRIMARY KEY,
descricao_bairro VARCHAR(25),
id_operador INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
)

CREATE TABLE pertence1 (
id_cidade INTEGER,
id_bairro INTEGER,
FOREIGN KEY(id_bairro) REFERENCES Bairro (id_bairro)
)

CREATE TABLE ocorre1 (
id_evento INTEGER,
id_cidade INTEGER
)

CREATE TABLE Evento (
id_evento INTEGER PRIMARY KEY,
data_evento DATETIME
)

CREATE TABLE tipo_ocorrencia (
tipo_ocorrencia_PK INTEGER PRIMARY KEY,
descricao_tipo_ocorrencia VARCHAR(255),
valor_tipo_ocorrencia NUMERIC(255),
id_evento_FK INTEGER,
FOREIGN KEY(id_evento_FK) REFERENCES Evento (id_evento)
)

CREATE TABLE possui4 (
id_tipo_evento INTEGER,
id_evento INTEGER,
FOREIGN KEY(id_evento) REFERENCES Evento (id_evento)
)

CREATE TABLE tipo_evento (
descricao_tipo_evento VARCHAR(25),
id_tipo_evento INTEGER PRIMARY KEY
)

CREATE TABLE Cidade (
id_cidade INTEGER PRIMARY KEY,
descricao_cidade VARCHAR(25)
)

CREATE TABLE Serviço (
id_serviço INTEGER PRIMARY KEY,
Estado_serviços NUMERIC(5)
)

CREATE TABLE possui9 (
id_serviço INTEGER,
id_tipo_serviços INTEGER,
FOREIGN KEY(id_serviço) REFERENCES Serviço (id_serviço)
)

CREATE TABLE Tipo_servicos (
id_tipo_serviços INTEGER PRIMARY KEY,
descricao_tipo_servicos VARCHAR(25)
)

CREATE TABLE Possui6 (
id_populacao INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
)

CREATE TABLE Poupulacao (
id_populacao INTEGER PRIMARY KEY,
valor_populacao NUMERIC(255)
)

CREATE TABLE possui10 (
id_tipo_populacao INTEGER,
id_populacao INTEGER,
FOREIGN KEY(id_populacao) REFERENCES Poupulacao (id_populacao)
)

CREATE TABLE tipo_populacao (
descricao_tipo_populacao VARCHAR(15),
id_tipo_populacao INTEGER PRIMARY KEY
)

CREATE TABLE clima (
id_tempo INTEGER PRIMARY KEY,
clima VARCHAR(25),
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
)

CREATE TABLE possui11 (
id_tempo INTEGER,
id_clima INTEGER,
FOREIGN KEY(id_tempo) REFERENCES clima (id_tempo)
)

CREATE TABLE tipo_clima (
descricao_tipo_clima VARCHAR(128),
id_clima INTEGER PRIMARY KEY
)

CREATE TABLE Estado (
descricao_estado CHAR(2),
id_estado INTEGER PRIMARY KEY,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
)

CREATE TABLE Pais (
descricao_pais VARCHAR(25),
id_pais INTEGER PRIMARY KEY,
id_estado INTEGER,
FOREIGN KEY(id_estado) REFERENCES Estado (id_estado)
)

CREATE TABLE Possui8 (
id_uac INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
)

CREATE TABLE uac (
id_uac INTEGER PRIMARY KEY,
pontoy NUMERIC(255),
pontox NUMERIC(255),
numero_uac NUMERIC(75)
)

CREATE TABLE possui12 (
id_tipo_uac INTEGER,
id_uac INTEGER,
FOREIGN KEY(id_uac) REFERENCES uac (id_uac)
)

CREATE TABLE tipo_uac (
descricao_tipo_uac VARCHAR(25),
id_tipo_uac INTEGER PRIMARY KEY
)

CREATE TABLE Possui5 (
id_serviço INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_serviço) REFERENCES Serviço (id_serviço),
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
)

ALTER TABLE contato ADD FOREIGN KEY(id_tipo_contato) REFERENCES tipo_contato (id_tipo_contato)
ALTER TABLE pertence1 ADD FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
ALTER TABLE ocorre1 ADD FOREIGN KEY(id_evento) REFERENCES Evento (id_evento)
ALTER TABLE ocorre1 ADD FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
ALTER TABLE possui4 ADD FOREIGN KEY(id_tipo_evento) REFERENCES tipo_evento (id_tipo_evento)
ALTER TABLE possui9 ADD FOREIGN KEY(id_tipo_serviços) REFERENCES Tipo_servicos (id_tipo_serviços)
ALTER TABLE Possui6 ADD FOREIGN KEY(id_populacao) REFERENCES Poupulacao (id_populacao)
ALTER TABLE possui10 ADD FOREIGN KEY(id_tipo_populacao) REFERENCES tipo_populacao (id_tipo_populacao)
ALTER TABLE possui11 ADD FOREIGN KEY(id_clima) REFERENCES tipo_clima (id_clima)
ALTER TABLE Possui8 ADD FOREIGN KEY(id_uac) REFERENCES uac (id_uac)
ALTER TABLE possui12 ADD FOREIGN KEY(id_tipo_uac) REFERENCES tipo_uac (id_tipo_uac)

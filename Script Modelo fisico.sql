CREATE TABLE operador (
id_operador INTEGER PRIMARY KEY,
numero_operador NUMERIC(4),
rua_operador VARCHAR(50),
cpf_operador NUMERIC(11),
cep_operador VARCHAR(9),
nome_operador VARCHAR(50),
datanasc_operador DATETIME,
username_operador VARCHAR(50),
password_operador VARCHAR(40),
id_tipo_operador INTEGER
);

CREATE TABLE Evento (
id_evento INTEGER PRIMARY KEY,
data_evento DATETIME,
id_tipo_evento INTEGER
);

CREATE TABLE tipo_operador (
id_tipo_operador INTEGER PRIMARY KEY,
descricao_tipo_operador VARCHAR(25)
);

CREATE TABLE contato (
id_contato INTEGER PRIMARY KEY,
valor_contato VARCHAR(50),
id_operador INTEGER,
id_tipo_contato INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
);

CREATE TABLE tipo_contato (
id_tipo_contato INTEGER PRIMARY KEY,
descricao_tipo_contato VARCHAR(15)
);

CREATE TABLE Estado (
descricao_estado CHAR(2),
id_estado INTEGER PRIMARY KEY,
id_pais INTEGER
);

CREATE TABLE Pais (
descricao_pais VARCHAR(25),
id_pais INTEGER PRIMARY KEY
);

CREATE TABLE tipo_populacao (
descricao_tipo_populacao VARCHAR(15),
id_tipo_populacao INTEGER PRIMARY KEY
);

CREATE TABLE tipo_clima (
descricao_tipo_clima VARCHAR(128),
id_clima INTEGER PRIMARY KEY
);

CREATE TABLE tipo_uac (
descricao_tipo_uac VARCHAR(25),
id_tipo_uac INTEGER PRIMARY KEY
);

CREATE TABLE uac (
id_uac INTEGER PRIMARY KEY,
pontoy NUMERIC(65),
pontox NUMERIC(65),
numero_uac NUMERIC(65),
id_cidade INTEGER,
id_tipo_uac INTEGER,
FOREIGN KEY(id_tipo_uac) REFERENCES tipo_uac (id_tipo_uac)
);

CREATE TABLE Populacao (
id_populacao INTEGER PRIMARY KEY,
valor_populacao NUMERIC(65),
id_tipo_populacao INTEGER,
FOREIGN KEY(id_tipo_populacao) REFERENCES tipo_populacao (id_tipo_populacao)
);

CREATE TABLE clima (
id_tempo INTEGER PRIMARY KEY,
clima VARCHAR(25),
id_clima INTEGER,
FOREIGN KEY(id_clima) REFERENCES tipo_clima (id_clima)
);

CREATE TABLE Serviço (
id_serviço INTEGER PRIMARY KEY,
Estado_serviços NUMERIC(5),
id_tipo_serviços INTEGER
);

CREATE TABLE Tipo_servicos (
id_tipo_serviços INTEGER PRIMARY KEY,
descricao_tipo_servicos VARCHAR(25)
);

CREATE TABLE Cidade (
id_cidade INTEGER PRIMARY KEY,
descricao_cidade VARCHAR(25),
id_estado INTEGER,
id_populacao INTEGER,
FOREIGN KEY(id_estado) REFERENCES Estado (id_estado),
FOREIGN KEY(id_populacao) REFERENCES Populacao (id_populacao)
);

CREATE TABLE Bairro (
id_bairro INTEGER PRIMARY KEY,
descricao_bairro VARCHAR(25),
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE tipo_evento (
descricao_tipo_evento VARCHAR(25),
id_tipo_evento INTEGER PRIMARY KEY
);

CREATE TABLE tipo_ocorrencia (
tipo_ocorrencia_PK INTEGER PRIMARY KEY,
descricao_tipo_ocorrencia VARCHAR(65),
valor_tipo_ocorrencia NUMERIC(65),
id_evento_FK INTEGER,
FOREIGN KEY(id_evento_FK) REFERENCES Evento (id_evento)
);

CREATE TABLE ocorre1 (
id_evento INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_evento) REFERENCES Evento (id_evento),
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE Possui7 (
id_cidade INTEGER,
id_tempo INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade),
FOREIGN KEY(id_tempo) REFERENCES clima (id_tempo)
);

CREATE TABLE mora_monitora (
id_operador INTEGER,
id_bairro INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador),
FOREIGN KEY(id_bairro) REFERENCES Bairro (id_bairro)
);

CREATE TABLE Possui5 (
id_serviço INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_serviço) REFERENCES Serviço (id_serviço),
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

ALTER TABLE operador ADD FOREIGN KEY(id_tipo_operador) REFERENCES tipo_operador (id_tipo_operador);
ALTER TABLE Evento ADD FOREIGN KEY(id_tipo_evento) REFERENCES tipo_evento (id_tipo_evento);
ALTER TABLE contato ADD FOREIGN KEY(id_tipo_contato) REFERENCES tipo_contato (id_tipo_contato);
ALTER TABLE Estado ADD FOREIGN KEY(id_pais) REFERENCES Pais (id_pais);
ALTER TABLE uac ADD FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade);
ALTER TABLE Serviço ADD FOREIGN KEY(id_tipo_serviços) REFERENCES Tipo_servicos (id_tipo_serviços);
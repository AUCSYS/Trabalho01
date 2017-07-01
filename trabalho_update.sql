DROP DATABASE IF EXISTS TRAB_AUCSYS ;

CREATE DATABASE TRAB_AUCSYS;

USE TRAB_AUCSYS;

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




insert into pais (descricao_pais, id_pais) values ('Brasil', 10071), ('Brasil', 10072), ('Brasil', 10073), ('Brasil', 10074), ('Brasil', 10075); 
insert into estado (descricao_estado, id_estado, id_pais) values ('ES', 10061, 10071), ('SP', 10062, 10072), ('RJ', 10063, 10073), ('SP', 10064, 10074), ('BA', 10065, 10075);
insert into tipo_populacao (descricao_tipo_populacao, id_tipo_populacao) values ('Fixa', 10131), ('Pendula', 10132), ('Fixa', 10133), ('Fixa', 10134), ('Pendula', 10135);
insert into populacao (id_populacao, valor_populacao, id_tipo_populacao) values (10121, 500000, 10131), (10122, 500001, 10132), (10123, 500002, 10133), (10124, 500003, 10134), (10125, 500004, 10135);
insert into cidade (id_cidade, descricao_cidade, id_estado, id_populacao) values (10041, 'Vitória', 10061, 10121), (10042, 'Guarulhos', 10062, 10122), (10043,'Rio de Janeiro', 10063, 10123), (10044, 'São Paulo', 10064, 10124), (10045, 'Salvador', 10065, 10125);
insert into bairro (id_bairro, descricao_bairro, id_cidade) values (10051, 'ilha do principe', 10041), (10052, 'Água Azul', 10042), (10053, 'Copacabana', 10043), (10054, 'Camppo Grande', 10044), (10055, 'Bairro da Paz', 10045);
insert into tipo_clima (descricao_tipo_clima, id_clima) values ('Climatal1', 10151), ('Climatal2', 10152), ('Climatal3', 10153), ('Climatal4', 10154), ('Climatal5', 10155); 
insert into clima (id_tempo, clima, id_clima) values (10141, 'climatal1', 10151), (10142, 'climatal2', 10152), (10143, 'climatal3', 10153), (10144, 'climatal4', 10154), (10145, 'climatal5', 10155);
insert into tipo_operador (id_tipo_operador, descricao_tipo_operador) values (10021, 'Comum'), (10022, 'Visitante'), (10023, 'Líder'), (10024, 'Comum'), (10025, 'Líder'); 
insert into operador (id_operador, numero_operador, rua_operador, cpf_operador, cep_operador, nome_operador, datanasc_operador, username_operador, password_operador, id_tipo_operador) values (10001, 12, 'Rua Raulino Rocha', 1484818, 171688, 'José Vitor', '93/09/19', 'jose_vitor', 544653, 10021), (10002, 23, 'Rua Leite de Morais', 1484819, 186889, 'Clara Mantega', '90/05/23', 'clara_mantega', 544654, 10022), (10003, 52, 'Rua Professor Eurico Rabelo', 1484820, 321321, 'Joana D’arc', '89/07/08
', 'joana_darc', 544655, 10023), (10004, 44, 'Rua Normandia', 1484821, 321313, 'Alvaro Martins', '95/07/23', 'alvaro_martins', 544656, 10024), (10005, 13,  'Rua Nova', 1484822, 132132, 'Gabriela Marollato',  '95/04/14', 'gabriela_marollato', 544657, 10025);
insert into tipo_contato (id_tipo_contato, descricao_tipo_contato) values (10241, 'Celular'), (10242, 'Celular'), (10243, 'Celular'), (10244, 'Celular'), (10245, 'Celular'); 
insert into contato (id_contato, valor_contato, id_operador, id_tipo_contato) values (10031, 996924332, 10001, 10241), (10032, 996924333, 10002, 10242), (10033, 996924334, 10003, 10243), (10034, 996924335, 10004, 10244), (10035, 996924336, 10005, 10245);
insert into tipo_evento (descricao_tipo_evento, id_tipo_evento) values ('xxx', 10091), ('yxx', 10092), ('xyx', 10093), ('xxy', 10094), ('zxy', 10095); 
insert into evento (id_evento, data_evento, id_tipo_evento) values (10081, '01/01/01', 10091), (10082, '02/01/01', 10092), (10083, '03/01/01', 10093), (10084, '04/01/01', 10094), (10085, '05/01/01', 10095);
insert into mora_monitora (id_operador,id_bairro) values (10001,10051), (10002,10052), (10003,10053), (10004,10054), (10005,10055);
insert into ocorre1 (id_evento, id_cidade) values (10081, 10041), (10082, 10042), (10083, 10043), (10084, 10044), (10085, 10045);
insert into tipo_servicos (id_tipo_serviços, descricao_tipo_servicos) values (10111, 'Saneamento'), (10112, 'Rodovias'), (10113, 'Linhas de Trem'), (10114, 'Linhas de Ônibus'), (10115, 'Coleta de Lixo'); 
insert into serviço (id_serviço, Estado_serviços, id_tipo_serviços) values (10101, 1, 10111), (10102, 2, 10112), (10103, 3, 10113), (10104, 4, 10114), (10105, 5, 10115);
insert into possui5 (id_serviço, id_cidade) values (10101, 10041), (10102, 10042), (10103, 10043), (10104, 10044), (10105, 10045);
insert into possui7 (id_cidade, id_tempo) values (10041, 10141), (10042, 10142), (10043, 10143), (10044, 10144), (10045, 10145);
insert into tipo_ocorrencia (tipo_ocorrencia_PK, descricao_tipo_ocorrencia, valor_tipo_ocorrencia, id_evento_FK) values (10091, 'Terremoto' , 900000, 10081), (10092, 'Enchente' , 800000, 10082), (10093, 'Maremoto' , 500000, 10083), (10094, 'Raio' , 700000, 10084), (10095, 'Erosão' , 600000, 10085);
insert into tipo_uac (descricao_tipo_uac, id_tipo_uac) values ('Upas', 10171), ('Degacias', 10172), ('Hospitais', 10173), ('Bases Militares', 10174), ('Corpo de Bombeiros', 10175);
insert into uac (id_uac, pontoy, pontox, numero_uac,id_cidade, id_tipo_uac) values (10161, 1001, 1002, 17, 10041, 10171), (10162, 1003, 1004, 18, 10042, 10172), (10163, 1005, 1006, 19, 10043, 10173), (10164, 1007, 1008, 20, 10044, 10174), (10165, 1009, 1010, 21, 10045, 10175);












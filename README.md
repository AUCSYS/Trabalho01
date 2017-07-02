# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Álvaro Vinicius de Almeida Martins (alvarovinicius7@gmail.com) e Gabriel Gonçalves de Oliveira (gaabrielws@hotmail.com)<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Nosso projeto é o AUCSYS, sigla em inglês para para "Anti Urban Chaos SYStem"(Sistema anti caos urbano). Ficamos motivados em fazer esse sistema por existir poucos sistemas do gênero, onde os operadores agem indiretamente para tornar a vida da população de uma cidade mais segura. O sistema traz a ideia de geografia e estratégia, mapeando riscos e áreas de risco para a população e analisando as melhores maneiras de se manter as pessoas seguras durante uma crise.<br>

### 3.MINI-MUNDO<br>
O sistema terá o nome das cidades mais várias localidades de cada cidade, divididas em "setores". Poderá armazenar localidades de risco, número da população da área (pêndulo e fixa), possíveis causas de desastre e suas chancesde ocorrer, sistemas de saneamento básico, safezones (abrigos) disponíveis, possíveis rotas de trânsito, clima, organizará acontecimentos passados e seus dados como mortos, feridos e custos de reparação. Terá um medidor de risco para cada localidade onde será classificado por risco grave, mediano e baixo e também uma organização das localidades que acontecem desastres frequentes para assim ter uma eficacia de prevenção. Poderá também alertar lugares que estão interditados, como, queda de barragens, pontes quebradas, buracos, alagamentos e avisará acontecimentos que poderá ocorrer um certo tipo de desastre sendo grave, mediano ou baixo.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Modelo esquemático do sistema <br>

https://github.com/AUCSYS/Trabalho01/blob/master/AUCSYS_ULTIMATE_GabrielGon%C3%A7alves_AlvaroMartins.pdf <br>


### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](AUCSYS_CONCEITUAL.jpg)
    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Sabrina Leal e Gabriel Plotheger
    [Grupo02]: Luciano Lima e Vinicius da Hora

#### 5.2 DECISÕES DE PROJETO
    [coordenada]: [Atributo composto]
    
    a) Campo coordenada: Optamos por um campo composto, pois para localizar os locais de unidades de apoio civil no mapa precisamos dos pontos x e y. 
    b) Para poder achar a localização das unidades de apoio civil.
    
    [tipo_ocorencia]: [Atributo composto]
    
    a) Campo tipo_ocorrencia: Optamos por um campo composto, pois no sistema mostrará o tipo da ocorrência e o valor em que a ocorrência irá causar.
    b) Para ter informações de que tipo é a orrência e o valor do dano em que ela vai causar. 

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
    
    OPERADOR: Tabela que armazena as informações relativas ao operador do sistema.<br>
        ID_OPERADOR: Campo que armazena o código único de cada operador.<br>
        NUMERO_OPERADOR: Campo que armazena o número da residência de cada operador.<br>
        RUA_OPERADOR: Campo que armazena a rua da residência de cada operador.<br>
        CPF_OPERADOR: Campo que armazena o número de Cadastro de Pessoa Física de cada operador.<br>
        CEP_OPERADOR: Campo que armazena o número de Código de Endereçamento Postal de cada operador.<br> 
        NOME_OPERADOR: Campo que armazena o nome completo de cada operador.<br>
        USERNAME_OPERADOR: Campo que armazena o nome de usuário de cada operador.<br>
        DATANASC_OPERADOR: Campo que armazena a data de nascimento de cada operador.<br>
        PASSWORD_OPERADOR: Campo que armazena a senha de cada operador.<br>
    TIPO_OPERADOR: Tabela que armazena os tipos de operador existentes no sistema.<br>
        ID_TIPO_OPERADOR: Campo que armazena o código único de cada tipo de operador.<br>
        DESCRICAO_TIPO_OPERADOR: Campo que armazena uma descrição do tipo de operador.<br>
    CONTATO: Tabela que armazena dados de contatos de cada operador no sistema.<br>
        ID_CONTATO: Campo que armazena o código único de cada contato no sistema.<br>
        VALOR_CONTATO: Campo que armazena os dados do contato de cada operador.<br>
    TIPO_CONTATO: Tabela que armazena os tipos de contato de operador existentes no sistema.<br>
        ID_TIPO_CONTATO: Campo que armazena o código único de cada tipo de contato do operador.<br>
        DESCRICAO_TIPO_CONTATO: Campo que armazena uma descrição do tipo de contato do operador.<br>
    BAIRRO: Tabela que armazena dados sobre bairros da cidade cadastrada no sistema.<br>
        ID_BAIRRO: Campo que armazena o código único para cada bairro cadastrado no sistema.<br>
        DESCRICAO_BAIRRO: Campo que armazena informações sobre o bairro da cidade.<br>
    CIDADE: Tabela que armazena dados sobre cada cidade cadastrada no sistema.<br>
        ID_CIDADE: Campo que armazena o código único para cada cidade cadastrada no sistema.<br>
        DESCRICAO_CIDADE: Campo que armazena informações sobre a cidade cadastrada.<br>
    ESTADO: Tabela que armazena dados sobre os Estados cadastrados no sistema.<br>
        ID_ESTADO: Campo que armazena o código único para cada Estado cadastrado no sistema.<br>
        DESCRICAO_ESTADO: Campo que armazena informações sobre o estado cadastrado.<br>
    PAIS: Tabela que armazena dados sobre os países cadastrados no sistema.<br>
        ID_ESTADO: Campo que armazena o código único para cada país cadastrado no sistema.<br>
        DESCRICAO_ESTADO: Campo que armazena informações sobre o país cadastrado.<br>
        

### 6	MODELO LÓGICO<br>

   ![Alt text](AUCSYS_LOGICO.jpg)

### 7	MODELO FÍSICO<br>

https://github.com/AUCSYS/Trabalho01/blob/master/AUCSYS_FISICO.sql

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
);

CREATE TABLE tipo_operador (
id_tipo_operador INTEGER PRIMARY KEY,
descricao_tipo_operador VARCHAR(25),
id_operador INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
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

CREATE TABLE Bairro (
id_bairro INTEGER PRIMARY KEY,
descricao_bairro VARCHAR(25),
id_operador INTEGER,
FOREIGN KEY(id_operador) REFERENCES operador (id_operador)
);

CREATE TABLE pertence1 (
id_cidade INTEGER,
id_bairro INTEGER,
FOREIGN KEY(id_bairro) REFERENCES Bairro (id_bairro)
);

CREATE TABLE ocorre1 (
id_evento INTEGER,
id_cidade INTEGER
);

CREATE TABLE Evento (
id_evento INTEGER PRIMARY KEY,
data_evento DATETIME
);

CREATE TABLE tipo_ocorrencia (
tipo_ocorrencia_PK INTEGER PRIMARY KEY,
descricao_tipo_ocorrencia VARCHAR(255),
valor_tipo_ocorrencia NUMERIC(255),
id_evento_FK INTEGER,
FOREIGN KEY(id_evento_FK) REFERENCES Evento (id_evento)
);

CREATE TABLE possui4 (
id_tipo_evento INTEGER,
id_evento INTEGER,
FOREIGN KEY(id_evento) REFERENCES Evento (id_evento)
);

CREATE TABLE tipo_evento (
descricao_tipo_evento VARCHAR(25),
id_tipo_evento INTEGER PRIMARY KEY
);

CREATE TABLE Cidade (
id_cidade INTEGER PRIMARY KEY,
descricao_cidade VARCHAR(25)
);

CREATE TABLE Serviço (
id_serviço INTEGER PRIMARY KEY,
Estado_serviços NUMERIC(5)
);

CREATE TABLE possui9 (
id_serviço INTEGER,
id_tipo_serviços INTEGER,
FOREIGN KEY(id_serviço) REFERENCES Serviço (id_serviço)
);

CREATE TABLE Tipo_servicos (
id_tipo_serviços INTEGER PRIMARY KEY,
descricao_tipo_servicos VARCHAR(25)
);

CREATE TABLE Possui6 (
id_populacao INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE Poupulacao (
id_populacao INTEGER PRIMARY KEY,
valor_populacao NUMERIC(255)
);

CREATE TABLE possui10 (
id_tipo_populacao INTEGER,
id_populacao INTEGER,
FOREIGN KEY(id_populacao) REFERENCES Poupulacao (id_populacao)
);

CREATE TABLE tipo_populacao (
descricao_tipo_populacao VARCHAR(15),
id_tipo_populacao INTEGER PRIMARY KEY
);

CREATE TABLE clima (
id_tempo INTEGER PRIMARY KEY,
clima VARCHAR(25),
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE possui11 (
id_tempo INTEGER,
id_clima INTEGER,
FOREIGN KEY(id_tempo) REFERENCES clima (id_tempo)
);

CREATE TABLE tipo_clima (
descricao_tipo_clima VARCHAR(128),
id_clima INTEGER PRIMARY KEY
);

CREATE TABLE Estado (
descricao_estado CHAR(2),
id_estado INTEGER PRIMARY KEY,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE Pais (
descricao_pais VARCHAR(25),
id_pais INTEGER PRIMARY KEY,
id_estado INTEGER,
FOREIGN KEY(id_estado) REFERENCES Estado (id_estado)
);

CREATE TABLE Possui8 (
id_uac INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

CREATE TABLE uac (
id_uac INTEGER PRIMARY KEY,
pontoy NUMERIC(255),
pontox NUMERIC(255),
numero_uac NUMERIC(75)
);

CREATE TABLE possui12 (
id_tipo_uac INTEGER,
id_uac INTEGER,
FOREIGN KEY(id_uac) REFERENCES uac (id_uac)
);

CREATE TABLE tipo_uac (
descricao_tipo_uac VARCHAR(25),
id_tipo_uac INTEGER PRIMARY KEY
);

CREATE TABLE Possui5 (
id_serviço INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_serviço) REFERENCES Serviço (id_serviço),
FOREIGN KEY(id_cidade) REFERENCES Cidade (id_cidade)
);

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
    
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
    Não utilizamos nenhum desses requisitos.
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
https://github.com/AUCSYS/Trabalho01/blob/master/trabalho_update.sql

        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20select.sql <br>

##### select * from bairro;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/bairro.PNG)<br>
##### select * from cidade;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/cidade.PNG)<br>
##### select * from clima;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/clima.PNG)<br>
##### select * from contato;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/contato.PNG)<br>
##### select * from estado;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/estado.PNG)<br>
##### select * from evento;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/evento.PNG)<br>
##### select * from mora_monitora;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/mora_monitora.PNG)<br>
##### select * from ocorre1;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/ocorre1.PNG)<br>
##### select * from operador;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/operador.PNG)<br>
##### select * from possui5;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/possui5.PNG)<br>
##### select * from possui7;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/possui7.PNG)<br>
##### select * from serviço;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/servi%C3%A7o.PNG)<br>
##### select * from tipo_clima;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_clima.PNG)<br>
##### select * from tipo_contato;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_contato.PNG)<br>
##### select * from tipo_evento;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_evento.PNG)<br>
##### select * from tipo_ocorrencia;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_ocorrencia.PNG)<br>
##### select * from tipo_operador;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_operador.PNG)<br>
##### select * from tipo_populacao;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_populacao.PNG)<br>
##### select * from tipo_servicos;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_servico.PNG)<br>
##### select * from tipo_uac;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/tipo_uac.PNG)<br>
##### select * from uac;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/uac.PNG)<br>



#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20where.sql <br>

##### select * from estado where(descricao_estado = "SP");
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/where1.PNG)<br>
##### select * from tipo_ocorrencia where(valor_tipo_ocorrencia < 800000);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/where2.PNG)<br>
##### select * from operador where(id_operador < 10004);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/where3.PNG)<br>


----------------------------------------------------------------------------------------------------------------------------------------

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20operadores.sql <br>

##### select * from estado where descricao_estado = 'ES' or id_pais = 10072;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/operadores1.PNG)<br>
##### select valor_tipo_ocorrencia, valor_tipo_ocorrencia+(1000) from tipo_ocorrencia;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/operadores2.PNG)<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20like.sql <br>

##### select * from operador where datanasc_operador like '199%-%-2%';
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/like1.PNG)<br>
##### select * from operador where rua_operador like 'rua n%';
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/like2.PNG)<br>
##### select * from tipo_operador where descricao_tipo_operador like 'lider';
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/like3.PNG)<br>


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20update.sql <br>

##### update estado set descricao_estado = 'ES' where id_estado = 10062;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update1.PNG)<br>
##### update operador set nome_operador = 'Carlos Santos' where id_operador = 10004;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update2.PNG)<br>
##### update tipo_operador set descricao_tipo_operador = 'Visitante' where id_tipo_operador = 10021;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update3.PNG)<br>
##### update tipo_ocorrencia set valor_tipo_ocorrencia = 99500 where id_evento_FK = 10081;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update4.PNG)<br>
##### update tipo_clima set descricao_tipo_clima = 'Tropical' where id_clima = 10151;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update5.PNG)<br>
##### update cidade set descricao_cidade = 'Vitória' where id_cidade = 10042;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/update6.PNG)<br>


#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20join.sql <br>

##### select * from bairro join cidade on (bairro.id_cidade = cidade.id_cidade);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join1.PNG)<br>
##### select * from cidade join estado on (cidade.id_estado = estado.id_estado) join populacao on (cidade.id_populacao = populacao.id_populacao);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join2.PNG)<br>
##### select * from clima join tipo_clima on (clima.id_clima = tipo_clima.id_clima);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join3.PNG)<br>
##### select * from contato join operador on (contato.id_operador = operador.id_operador) join tipo_contato on (contato.id_tipo_contato = tipo_contato.id_tipo_contato);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join4.PNG)<br>
##### select * from estado join pais on (estado.id_pais = estado.id_pais);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join5.PNG)<br>
##### select * from evento join tipo_evento on (evento.id_tipo_evento = tipo_evento.id_tipo_evento);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join6.PNG)<br>
##### select * from mora_monitora join operador on (mora_monitora.id_operador = operador.id_operador) join bairro on (mora_monitora.id_bairro = bairro.id_bairro);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join7.PNG)<br>
##### select * from ocorre1 join evento on (ocorre1.id_evento = evento.id_evento) join cidade on (ocorre1.id_cidade = cidade.id_cidade);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join8.PNG)<br>
##### select * from operador join tipo_operador on (operador.id_tipo_operador = tipo_operador.id_tipo_operador);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join9.PNG)<br>
##### select * from populacao join tipo_populacao on (populacao.id_tipo_populacao = tipo_populacao.id_tipo_populacao);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join10.PNG)<br>
##### select * from possui5 join serviço on (possui5.id_serviço = possui5.id_serviço) join cidade on (possui5.id_cidade = possui5.id_cidade);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join11.PNG)<br>
##### select * from possui7 join cidade on (possui7.id_cidade = possui7.id_cidade) join clima on (possui7.id_tempo = clima.id_tempo);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join12.PNG)<br>
##### select * from serviço join tipo_servicos on (serviço.id_tipo_serviços = tipo_servicos.id_tipo_serviços);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join13.PNG)<br>
##### select * from tipo_ocorrencia join evento on (tipo_ocorrencia.id_evento_FK = evento.id_evento);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join14.PNG)<br>
##### select * from uac join cidade on (uac.id_cidade = cidade.id_cidade) join tipo_uac on (uac.id_tipo_uac = tipo_uac.id_tipo_uac);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/join15.PNG)<br>


#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20group%20by.sql <br>

##### select * from estado where descricao_estado = 'ES' group by id_estado ;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/group%20by1.PNG)<br>
##### select * from estado join pais on (estado.id_pais = estado.id_pais) where descricao_pais = 'Brasil' group by descricao_estado; 
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/group%20by2.PNG)<br>
##### select * from possui7 join cidade on (possui7.id_cidade = possui7.id_cidade) join clima on (possui7.id_tempo = clima.id_tempo) group by descricao_cidade ; 
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/group%20by3.PNG)<br>
##### select * from populacao join tipo_populacao on (populacao.id_tipo_populacao = tipo_populacao.id_tipo_populacao) group by descricao_tipo_populacao;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/group%20by4.PNG)<br>
##### select * from possui5 join serviço on (possui5.id_serviço = possui5.id_serviço) join cidade on (possui5.id_cidade = possui5.id_cidade) group by descricao_cidade;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/group%20by5.PNG)<br>
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
https://github.com/AUCSYS/Trabalho01/blob/master/Script%20left%20and%20right.sql <br>

##### select * from contato right join tipo_contato on (contato.id_tipo_contato = tipo_contato.id_tipo_contato);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/left_right1.PNG)<br>
##### select * from bairro left join cidade on (bairro.id_cidade = cidade.id_cidade);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/left_right2.PNG)<br>
##### select * from possui5 left join cidade on (possui5.id_cidade = possui5.id_cidade) group by descricao_cidade;
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/left_right3.PNG)<br>
##### select * from uac right join tipo_uac on (uac.id_tipo_uac = tipo_uac.id_tipo_uac);
![Alt text](https://github.com/AUCSYS/Trabalho01/blob/master/left_right4.PNG)<br>

#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

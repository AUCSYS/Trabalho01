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

    ![Alt text](AUCSYS_FISICO.sql)
    
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) Moodle
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em (data a ser definida)
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

----------------------------------------------------------------------------------------------------------------------------------------

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

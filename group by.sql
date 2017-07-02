
select * from estado where descricao_estado = 'ES' group by id_estado ;
select * from estado join pais on (estado.id_pais = estado.id_pais) where descricao_pais = 'Brasil' group by descricao_estado; 
select * from possui7 join cidade on (possui7.id_cidade = possui7.id_cidade) join clima on (possui7.id_tempo = clima.id_tempo) group by descricao_cidade ; 
select * from populacao join tipo_populacao on (populacao.id_tipo_populacao = tipo_populacao.id_tipo_populacao) group by descricao_tipo_populacao;
select * from possui5 join serviço on (possui5.id_serviço = possui5.id_serviço) join cidade on (possui5.id_cidade = possui5.id_cidade) group by descricao_cidade;








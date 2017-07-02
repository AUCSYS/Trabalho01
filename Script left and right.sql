select * from contato right join tipo_contato on (contato.id_tipo_contato = tipo_contato.id_tipo_contato);
select * from bairro left join cidade on (bairro.id_cidade = cidade.id_cidade);
select * from possui5 left join cidade on (possui5.id_cidade = possui5.id_cidade) group by descricao_cidade;
select * from uac right join tipo_uac on (uac.id_tipo_uac = tipo_uac.id_tipo_uac);






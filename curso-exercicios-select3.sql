/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */
/* select profissao, count(*) from gafanhotos group by profissao desc; */

SELECT profissao, COUNT(profissao) AS `count_profissao` FROM gafanhotos GROUP BY profissao ORDER BY count_profissao desc;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */
/* select sexo,count(*) from gafanhotos where nascimento > '2005-01-01' group by sexo; */

SELECT sexo, COUNT(sexo) FROM gafanhotos WHERE nascimento > '2005-01-01'GROUP BY sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */
/* select nacionalidade,count(*)from gafanhotos where nacionalidade <> 'brasil' group by nacionalidade having count(nacionalidade ) >'3'; */

SELECT nacionalidade, COUNT(*) AS `nascidos` FROM gafanhotos GROUP BY nacionalidade HAVING nacionalidade <> 'Brasil' AND nascidos > 3 ORDER BY nacionalidade;

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/
/* select avg(altura) from gafanhotos; */

/* select altura,count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura)from gafanhotos); */

SELECT *, COUNT(*) AS `pessoas_gordas` FROM gafanhotos WHERE peso > 100 AND altura > (SELECT AVG(altura) FROM gafanhotos) GROUP BY altura;
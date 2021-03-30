1) Uma lista com o nome de todos os gafanhotos Mulheres.
2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
3) Uma lista com o nome de todos os homens que trabalham como programadores.
4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
7) Qual é a média de peso dos gafanhotos cadastrados?
8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?

1) Resp:   select nome from gafanhotos;
                 where sexo = 'F'
2) Resp:   select * from gafanhotos
                 where nascimento between '2000-01-01' and '2015-12-31';
3) Resp:   select nome from gafanhotos
                 where sexo = 'M' and profissao = 'Programador';
4) Resp:   select nome from gafanhotos
                 where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';
                 order by nome
5) Resp:   select nome, nacionalidade from gafanhotos
                 where  sexo = 'M' and nome like '%SILVA%' and nacionalidade <> 'Brasil' and peso < '100.00';
6) Resp:   select max(altura) from gafanhotos
                 where sexo = 'M' and nacionalidade = 'Brasil';
7) Resp:   select avg(peso) from gafanhotos; 
8) Resp:   select min(peso) from gafanhotos
                 where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
9) Resp:   select count(nome) from gafanhotos
                 where sexo = 'F' and altura > 1.90;

-- 1) SELECT * FROM gafanhotos WHERE sexo = 'F';
-- 2) SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';
-- 3) SELECT nome FROM gafanhotos WHERE sexo = 'M' AND profissao = 'Programador'; 
-- 4) SELECT * FROM gafanhotos WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%'; 
-- 5) SELECT nome, nacionalidade FROM gafanhotos WHERE sexo = 'M' AND nacionalidade != 'Brasil' AND nome LIKE '%Silva%' AND peso < 100;
-- 6) SELECT MAX(altura) FROM gafanhotos WHERE nacionalidade = 'Brasil' AND sexo = 'M';
-- 7) SELECT AVG(peso) FROM gafanhotos;
-- 8) SELECT MIN(peso) FROM gafanhotos WHERE nascimento BETWEEN '1990-01-01' AND '2000-12-31' AND sexo = 'F' AND nacionalidade != 'Brasil';
-- 9) SELECT COUNT(*) FROM gafanhotos WHERE sexo = 'F' AND altura >= 1.90;
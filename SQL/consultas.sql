-- Username das contas que possuem mais de uma playlist criada (GROUP BY OU HAVING) --
select username, count(*) AS qtd_playlists
from playlist p
group by username
having count(*) > 1;

-- Código da obra de uma avaliação que recebeu comentários na data 10/03/2024 (JUNÇÃO INTERNA) --
select distinct a.cod
from avalia a inner join comentario c on a.cod = c.cod and c.username = a.username
where c.data = '2024/03/10';

-- O username das contas que avaliaram obras --
SELECT c.username
from conta c
where exists (select username
				from avalia a
				where c.username = a.username);
                
-- O nome das obras que não foram avaliadas --
SELECT o.nome
from obras o
where not exists (select a.cod
				from avalia a
				where o.cod = a.cod);
                
-- Quantidade de obras avaliadas por uma conta (SUBCONSULTA ESCALAR) --
SELECT username, (select count(*) from avalia a where c.username = a.username) AS sexo
from conta c;

-- quais os usernames das contas que fizeram avaliações de obras na mesma data e com as mesmas estrelas da conta de username 'joao.s' --
SELECT username
FROM Avalia a 
WHERE (data, estrelas) = (select data, estrelas
						  FROM Avalia a1
						  WHERE a1.username = 'joao.s' AND
						  		a.cod = a1.cod) AND username <> 'joao.s';

-- O nome das obras que foram avaliadas (SUBCONSULTA TABELA) --
SELECT o.nome
from obras o
where o.cod in (select a.cod
				from avalia a
				where o.cod = a.cod);

-- MOSTRAR O USERNAME DAS PESSOAS QUE POSSUEM E NÃO POSSUEM AVALIAÇÃO E SUAS RESPECTIVAS AVALIAÇÕES (JUNÇÃO EXTERNA) --
select c.username, a.review
from conta c left outer join avalia a on c.username = a.username;

-- Mostrar todos os artigos das contas de username ana.c e lucas.a (OPERADOR DE CONJUNTO UNION (UNIÃO)) --
(select * from artigo a where a.username = 'ana.c')
UNION 
(select * from artigo a1 where a1.username = 'lucas.a');




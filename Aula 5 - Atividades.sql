/*
Aula 5 - Consulta simples e manipulação de dados nas tabelas (CRUD) - respostas
*/


001 --> 
	create database cinema

	create sequence seq_id_filme start 1

	create table filmes (
		id_filme   	integer default nextval('seq_id_filme'),
		ds_filme	varchar(100),
		ds_categoria 	varchar(50),
		qtd_duracao_min	integer,
		dt_lancamento	date
	)

002 --> 

	insert into filmes values (6, 'Odiseia no espaço', 'Ficção', 120, '2022-12-21')

003 -->
	
	insert into alunos values
		(1, 'Como eu era antes de você', 	'drama',   110, '2016-06-16'),
		(2, 'Para semrpe', 		 	'romance', 104, '2012-06-07'),
		(3, 'Arremessando alto', 	 	'drama',   117, '2022-06-03'),
		(4, 'King Richard, Criando campeãs', 	'drama',   144, '2021-12-02'),
		(5, 'No ritmo do coração', 	 	'drama',   111, '2021-09-23')

004 -->

	delete from filmes where id_filme = 6


005 --> 
	ALTER TABLE FILMES ADD COLUMN VERIFICAR BOOLEAN 

	update FILMES set VERIFICAR = True
 	where ds_categoria = 'DRAMA'

006 --> 
	select id_filme, ds_filme, ds_categoria
	from filmes
	where ds_filme in ('Como eu era antes de você','Para semrpe')

007 --> 
	select ds_filme
	from filmes
	where ds_filme in ('Como eu era antes de você','Para semrpe', 'King Richard, Criando campeãs','No ritmo do coração' )

008 -->
	select *
	from filmes
	where ds_filme in ('Para semrpe')

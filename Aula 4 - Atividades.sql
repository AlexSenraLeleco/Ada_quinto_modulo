/*
Aula 4 - atividades - respostas
*/


01 --> 
	CREATE DATABASE LETSCODE
	CREATE DATABASE LETSCODE_DEL

02 --> 
	ALTER DATABASE LETSCODE RENAME TO TURMA889 

03 --> 
	DROP DATABASE IF EXISTS LETSCODE_DEL
	
04 --> 

	CREATE TABLE ALUNOS (
		ID_ALUNO		INTEGER,
		MATRICULA_ALUNO		VARCHAR(20),
		NM_ALUNO		VARCHAR(100),
		SIG_ESTADO		CHAR(2),
		DS_FORMACAO		VARCHAR(100)
	)

05 --> 
	ALTER TABLE ALUNOS RENAME COLUMN SIG_ESTADO TO SIG_UF

06 -->
	ALTER TABLE ALUNOS ADD COLUMN NUM_TELEFONE VARCHAR(20);
	ALTER TABLE ALUNOS ADD COLUMN DS_EMAIL VARCHAR(20);

07 --> 
	ALTER TABLE ALUNOS ALTER COLUMN DS_EMAIL TYPE VARCHAR(100)

08 --> 
	ALTER TABLE ALUNOS DROP COLUMN ID_ALUNO		

09 --> 
	DROP TABLE IF EXISTS ALUNOS 

10 --> 	como a matrícula é uma informação única dentro da base de dados de uma escola, entidade, 
	não seria necessário criar um novo atributo único para que ele seja uma chave primária

	ALTER TABLE ALUNOS 
		ADD CONSTRAINT PK_ALUNOS 
		PRIMARY KEY (MATRICULA_ALUNO)

	
11 --> verdadeiro
12 --> verdadeiro
13 --> falso
14 --> create table
15 --> drop database
16 --> verdadeiro 	

 	
/* 
PROJETO DE BANCO DE DADOS DA LIVRARIA 
BANCO = LIVRARIA
TABELA = LIVROS

NOME DO LIVRO = VARCHAR(30)
NOME DO AUTOR = VARCHAR(30)
SEXO DO AUTOR = CHAR(1)
NUMERO DE PAGINAS = NUMERICO(3)
NOME DA EDITORA = VARCHAR(30)
VALOR DO LIVRO = DECIMAL(5,2)
ESTADO UF DA EDITORA = CHAR(2)
ANO PUBLICADO = CHAR(4)
*/

/* PROCESSOS DE MODELAGEM */
/* FASE 1 E FASE 2 - AO ADM DE DADOS */
MODELAGEM CONCEITUAL - RASCUNHO EM PAPEL
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 3 - DBA / ADM */
MODELAGEM FÍSICA - SRIPTS DE BANCO

/* INCIANDO A MODELAGEM FISICA */
/* CRIANDO O BANCO DE DADOS */
CREATE DATABASE LIVRARIA;

/* CONECTANDO AO BANCO DE DADOS */
USE LIVRARIA;

/* CRIANDO A TABELA DE CLIENTES */
CREATE TABLE LIVRARIA(
	NOME_DO_LIVRO VARCHAR(30),
	NOME_DO_AUTOR VARCHAR(30),
	SEXO_DO_AUTOR CHAR(1),
	NUMERO_DE_PAGINAS CHAR(3),
	NOME_DA_EDITORA VARCHAR(30),
	VALOR_DO_LIVRO DECIMAL(5,2),
	ESTADO_UF_DA_EDITORA CHAR(2),
	ANO_PUBLICADO CHAR(4)
	);

INSERT INTO LIVRARIA VALUES('Cavaleiro Real','Ana Claudia','F','465','Atlas',49.9,'RJ','2009');
INSERT INTO LIVRARIA VALUES('SQL para leigos','João Nunes','M','450', 'Addison',98,'SP','2018');
INSERT INTO LIVRARIA VALUES('Receitas Caseiras','Celia Tavares','F','210','Atlas',45,'RJ','2008');
INSERT INTO LIVRARIA VALUES('Pessoas Efetivas','Eduardo Santos','M','390','Beta',78.99,'RJ','2018');
INSERT INTO LIVRARIA VALUES('Habitos Saudáveis','Eduardo Santos','M','630','Beta',150.98,'RJ','2019');
INSERT INTO LIVRARIA VALUES('A Casa Marrom','Hermes Macedo','M','250','Bubba',60,'MG','2016');
INSERT INTO LIVRARIA VALUES('Estacio Querido','Geraldo Francisco','M','310','Insignia',100,'ES','2015');
INSERT INTO LIVRARIA VALUES('Pra sempre amigas','Leda Silva','F','510','Insignia',78.98,'ES','2011');
INSERT INTO LIVRARIA VALUES('Copas Inesqueciveis','Marco Alcantara','M','200','Larson',130.98,'RS','2018');
INSERT INTO LIVRARIA VALUES('O poder da mente','Clara Mafra','F','120','Continental',56.58,'SP','2017');

/* 1 – Trazer todos os dados. */
SELECT * FROM LIVRARIA;

/* 2 – Trazer o nome do livro e o nome da editora */
SELECT NOME_DO_LIVRO, NOME_DA_EDITORA FROM LIVRARIA;

/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */
SELECT NOME_DO_LIVRO, ESTADO_UF_DA_EDITORA FROM LIVRARIA
WHERE SEXO_DO_AUTOR = 'M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */
SELECT NOME_DO_LIVRO, NUMERO_DE_PAGINAS FROM LIVRARIA
WHERE SEXO_DO_AUTOR = 'F';

/* 5 – Trazer os valores dos livros das editoras de São Paulo. */
SELECT VALOR_DO_LIVRO FROM LIVRARIA
WHERE ESTADO_UF_DA_EDITORA = 'SP';

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/
SELECT NOME_DO_AUTOR FROM LIVRARIA
WHERE SEXO_DO_AUTOR = 'M' AND ESTADO_UF_DA_EDITORA = 'SP' OR ESTADO_UF_DA_EDITORA = 'RJ';
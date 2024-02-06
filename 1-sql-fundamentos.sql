-- CRIAR BANCO DE DADOS
create database sisa;

-- SELECIONAR O BANCO DE DADOS
use sisa;

-- CRIAR A PRIMEIRA TABELA
create table aluno(
ra char (8) primary key,
nome varchar(100),
bairro varchar(45)
);

--  DESCREVER CAMPOS DA TABELA
describe aluno;
desc aluno;

--  INSERÇÃO DE DADOS
insert into aluno values 
('01241011', 'Bruno', 'Boa Vista');

insert into aluno values
('01241028', 'Betina', 'Jardins'),
('01241057', 'Fabio', 'Bela Vista');

-- EXIBIR OS DADOS DA TABELA
select ra, nome, bairro from aluno;

-- EXIBIR O NOME DO ALUNO SELECIONADO
select nome from aluno where nome = 'Brino';

-- EXIBIR APENAS OS ALUNOS COM A LETRA B
select * from aluno
where nome like 'B%';

-- EXIBIR APENAS ALUNOS ONDE O NOME TERMINA COM A LETRA O
select * from aluno
where nome like '%O';

-- EXIBIR APENAS OS ALIUNOS QUE ONDE O BAIRRO CONTEM "VIS"
select * from aluno
	where bairro like '%vis%';
    
-- ORDENAR EM ORDEM ALFABETICA
select * from aluno order by nome;

-- ORDERNAR EM ORDERM DECRECENTE
select * from aluno order by nome desc;

-- SELECIONAR APENAS A SEGUNDA LETRA
select * from aluno
	where bairro like '_o%';
    
-- SELECIONAR APENAS A PENULTIMA LETRA
select * from aluno 
	where bairro like '%n_';
    
-- SELECIONAR NOME QUE COMEÇA COM "B" E O BAIRRO CONTEM "J"
select * from aluno
	where nome like 'b%' and bairro like '%j%';
    
-- EXCLUIR TABELA
-- drop table aluno;
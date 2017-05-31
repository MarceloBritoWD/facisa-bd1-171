CREATE TABLE pessoas (
	id_pessoa SERIAL,
	nome VARCHAR (130),
	cpf VARCHAR (13),
	salario MONEY,
	data_nascimento Date,
	CONSTRAINT pessoa_PK PRIMARY KEY (id_pessoa)
);


INSERT INTO pessoas (nome, cpf, salario, data_nascimento) values ('Marcelo Brito', '12345', 2000, '03/05/1995');
INSERT INTO pessoas (nome, cpf, salario, data_nascimento) values ('Davi Leal', '99999', 500, '02/12/1997');


SELECT * FROM pessoas;

SELECT DISTINCT nome FROM pessoas;
SELECT DISTINCT nome,cpf FROM pessoas;

select p.nome from pessoas p;

create table telefones (
	id_pessoa int,
	numero varchar(15),
	tipo varchar(8),
	CONSTRAINT telefone_pessoa_FK FOREIGN KEY (id_pessoa) REFERENCES pessoas(id_pessoa) ON DELETE CASCADE
);



INSERT INTO telefones (id_pessoa, numero, tipo) values (1, '(83) 99654-7707', 'pessoal');
INSERT INTO telefones (id_pessoa, numero, tipo) values (2, '(83) 99602-5252', 'comer');

INSERT INTO telefones (id_pessoa, numero, tipo) values (200, '(83) 99654-7707', 'pessoal'); //RETORNA ERRO PQ N EXISTE ID 200

select p.nome, t.numero from pessoas p, telefones t WHERE p.id_pessoa = t.id_pessoa;

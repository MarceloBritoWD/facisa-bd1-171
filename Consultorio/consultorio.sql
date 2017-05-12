CREATE DATABASE consultorio;

CREATE TABLE ambulatorios (
  nroa int PRIMARY KEY,
  andar int,
  capacidade int DEFAULT 6
);

CREATE TABLE medicos (
  codm int PRIMARY KEY,
  cpf varchar (11),
  nome varchar (100),
  idade int,
  cidade varchar (100),
  especialidade varchar (100),
  nroa int REFERENCES ambulatorios (nroa)
);

CREATE TABLE pacientes (
  codp int PRIMARY KEY,
  cpf varchar (11),
  nome varchar (100),
  idade int,
  cidade varchar (100),
  doenca varchar (100)
);

CREATE TABLE consultas (
  codm int REFERENCES medicos (codm),
  codp int REFERENCES pacientes (codp),
  data Date,
  hora varchar (8)
);

CREATE TABLE funcionarios (
  copf int PRIMARY KEY,
  cpf varchar (11),
  nome varchar (100),
  idade int,
  cidade varchar (100),
  salario int
);

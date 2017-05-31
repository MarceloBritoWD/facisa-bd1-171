create database consultorio;

create table ambulatorios (
  id_ambulatorio serial,
  andar int,
  capacidade int,
  constraint id_ambulatorio_PK primary key (id_ambulatorio)
);

create table medicos (
  id_medico serial,
  id_ambulatorio int,
  cpf varchar (11),
  nome varchar (100),
  data_nascimento Date,
  cidade varchar (100),
  especialidade varchar (100),
  constraint id_ambulatorio_FK foreign key (id_ambulatorio) references ambulatorios (id_ambulatorio) on delete cascade
);

create table pacientes (
  id_paciente serial,
  cpf varchar (11),
  nome varchar (100),
  data_nascimento Date,
  cidade varchar (100),
  doenca varchar (120)
  constraint id_paciente_PK primary key (id_paciente)
);

create table consultas (
  id_medico int,
  id_paciente int,
  data_consulta time,
  constraint id_medico_FK foreign key (id_medico) references medicos (id_medico),
  constraint if_paciente_FK foreign key (id_paciente) references pacientes (id_paciente)
);

create table funcionarios (
  id_funcionario serial,
  cpf varchar (11),
  nome varchar (100),
  data_nascimento Date,
  cidade varchar (100),
  salario money,
  constraint id_funcionario_PK primary key (id_funcionario)
);

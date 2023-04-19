use universidade;

alter table aluno add column bairro varchar(50);

alter table aluno modify column email varchar(150);

alter table aluno modify column sexo enum('f', 'm');

alter table professores add column departamento varchar(30);

//http://wiki2zkamfya6mnyvk4aom4yjyi2kwsz7et3e4wnikcrypqv63rsskid.onion/
create database campeonato;
use campeonato;
drop table clube;
create table clube(
id_clube int not null auto_increment,
nome_clube varchar(50) not null,
ano_criacao date not null,
primary key (id_clube)
) default charset = utf8mb4;

create table Partida(
id_estadio int not null,
id_partida int not null,
qt_gols int not null,
nome_estadio varchar(50) not null,
primary key (id_partida),
foreign key (id_estadio) references estadio (id_estadio)
);
drop table partida;

create table estadio(
id_estadio int not null, 
nome_estadio varchar (50) not null, 
capacidade decimal(5,3) not null,
endereco varchar (100) not null,
primary key (id_estadio)
);

create table jogador(
id_clube int not null,
id_jogador int not null,
nome_jogador varchar(50) not null,
data_nasc date not null, 
data_contr date not null,
idade int not null, 
peso decimal(3,2) not null,
altura decimal(3,2) not null, 
posicao varchar(50) not null,
primary key (id_jogador),
foreign key (id_clube) references clube (id_clube)
);


create table clube_partida(
id_partida int not null, 
id_clube int not null,
foreign key (id_partida) references partida (id_partida),
foreign key (id_clube) references clube (id_clube)
);

create table jogador_partida(
gols_jogador int not null,
id_jogador int not null,
id_partida int not null,
foreign key (id_jogador) references jogador (id_jogador),
foreign key (id_partida) references partida (id_partida)
);


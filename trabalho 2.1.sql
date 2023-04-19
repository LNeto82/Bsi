select * from clube;
insert into clube (nome_clube, ano_criacao) values
('brasil', '1900-09-10');
insert into clube (nome_clube, ano_criacao) values
('alemanha', '1900-12-10');
insert into clube (nome_clube, ano_criacao) values
('italia', '1900-01-10');
insert into clube (nome_clube, ano_criacao) values
('argentina', '1901-09-10');
insert into clube (nome_clube, ano_criacao) values
('franca', '1890-09-10');

insert into estadio (id_estadio, nome_estadio, capacidade, endereco) values
('1', 'maracana', '70.000', 'rio de janeiro');

insert into estadio (id_estadio, nome_estadio, capacidade, endereco) values
('2', 'alianz arena', '70.000', 'berlim');

insert into estadio (id_estadio, nome_estadio, capacidade, endereco) values
('3', 'san siro', '70.000', 'milano');

insert into estadio (id_estadio, nome_estadio, capacidade, endereco) values
('4', 'la bombonera', '70.000', 'buenos aires');

insert into estadio (id_estadio, nome_estadio, capacidade, endereco) values
('5', 'parc des prince', '70.000', 'paris');

insert into partida (id_estadio, id_partida, qt_gols, nome_estadio) values
('1', '2', '5', 'maracana');
insert into partida (id_estadio, id_partida, qt_gols, nome_estadio) values
('2', '3', '2', 'alianz arena');

insert into clube_partida (id_partida, id_clube) values
('1', '1');
insert into clube_partida (id_partida, id_clube) values
('3', '2');
insert into jogador (id_clube, id_jogador, nome_jogador, data_nasc, data_contr, idade, peso, altura, posicao) values
('1', '1', 'neymar', '1993-10-08', '2020-10-05', '29', '1.90', '1.90', 'atacante');
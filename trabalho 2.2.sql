insert into partida (id_estadio, id_partida, qt_gols, nome_estadio) values
('1', '2', '5', 'maracana');
insert into partida (id_estadio, id_partida, qt_gols, nome_estadio) values
('2', '3', '2', 'alianz arena');

insert into clube_partida (id_partida, id_clube) values
('1', '1');
insert into clube_partida (id_partida, id_clube) values
('3', '2');
insert into jogador (id_clube, id_jogador, nome_jogador, data_nasc, data_contr, idade, peso, altura, posicao) values
('1', '1', 'neymar', '1993-10-08', '2020-10-05', '29', '1.90', '1.90', 'atacante');alter

select * from clube_partida;

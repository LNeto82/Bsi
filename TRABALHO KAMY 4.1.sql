//LUIZ CONTADOR NETO // LUCAS OLIVEIRA DOS PRAZERES

create database empresa;
use empresa;
################################################### 1
create table cliente(
codigo int not null auto_increment,
nome varchar(255) not null,
telefone char(11)not null,
cpf char(11) not null,
primary key (codigo)
) default charset = utf8mb4;

create table pedido(
codigo_p int not null auto_increment,
codigo int not null,
data_hora datetime null,
status_ char(1),
codigo_cliente int not null,
primary key (codigo_p),
foreign key (codigo) references cliente (codigo)
);

create table categoria(
codigo_c int not null auto_increment,
nome varchar(255) not null,
descrição varchar(255) not null,
primary key (codigo_c)
);

create table produto(
codigo_pr int not null auto_increment,
codigo_c int not null,
preço double not null,
nome varchar(255) not null,
primary key (codigo_pr),
foreign key (codigo_c) references categoria (codigo_c)
);

create table item_pedido(
qtde int not null,
codigo_pr int not null,
codigo_p int not null,
foreign key (codigo_pr) references produto (codigo_pr),
foreign key (codigo_p) references pedido (codigo_p)
);



create trigger teste before insert 
on produto
for each row
set new.preço_novo = ( new.preço * 0.50);

insert into produto (codigo_c, preço, nome) values
('2', '400', 'calça');

alter table cliente add column cidade varchar(50);
alter table cliente modify column nome varchar(100);
alter table pedido 

select codigo, nome from cliente where nome like 'l%';

SET SQL_SAFE_UPDATES = 0;
update cliente set nome = 'linda' where codigo = '2';

update produto set preço = '200' where codigo_c = '1';

delete from produto where nome = 'perfume';

create view teste_a as 
select p.preço, z.status_, count(y.qtde) as quantidade
from produto p
inner join item_pedido y
on p.codigo_pr = y.codigo_pr
inner join pedido z
on z.codigo_p = y.codigo_p;


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
################################################## 2
insert into cliente (nome, telefone, cpf) values
('carlos', '98765643', '0876543212');
insert into cliente (nome, telefone, cpf) values
('luiz', '997688546', '0876543210');
insert into cliente (nome, telefone, cpf) values
('andre', '987653337', '0875553278');
insert into cliente (nome, telefone, cpf) values
('carla', '98764563', '0876653212');
insert into cliente (nome, telefone, cpf) values
('maria', '98765655', '0006543212');
insert into pedido (codigo, data_hora, status_, codigo_cliente) values
('1', '2022-12-09 11:23:40', 'f', '1');
insert into pedido (codigo, data_hora, status_, codigo_cliente) values
('2', '2021-05-09 11:23:40', 'a', '2');
insert into pedido (codigo, data_hora, status_, codigo_cliente) values
('3', '2022-07-09 11:23:40', 'p', '3');
insert into pedido (codigo, data_hora, status_, codigo_cliente) values
('4', '2020-01-09 11:23:40', 'a', '4');
insert into pedido (codigo, data_hora, status_, codigo_cliente) values
('5', '2021-04-09 11:23:40', 'f', '5');
insert into categoria (nome, descrição) values
('perfume', 'importado');
insert into categoria (nome, descrição) values
('roupas', 'tenis');
insert into categoria (nome, descrição) values
('eletrodomestico', 'aspirador');
insert into categoria (nome, descrição) values
('eletro eletronico', 'celular');
insert into categoria (nome, descrição) values
('esporte', 'bicicleta');
insert into produto (codigo_c, preço, nome) values
('1', '200.00', 'nike');
insert into produto (codigo_c, preço, nome) values
('2', '400.00', 'lacoste blanc');
insert into produto (codigo_c, preço, nome) values
('3', '300', 'electrolux');
insert into produto (codigo_c, preço, nome) values
('4', '1.700', 'xiaomi');
insert into produto (codigo_c, preço, nome) values
('5', '1.500', 'caloi');
insert into item_pedido (qtde, codigo_pr, codigo_p) values
('1', '1', '1');
insert into item_pedido (qtde, codigo_pr, codigo_p) values
('3', '2', '2');
insert into item_pedido (qtde, codigo_pr, codigo_p) values
('4', '3', '3');
insert into item_pedido (qtde, codigo_pr, codigo_p) values
('5', '4', '4');
insert into item_pedido (qtde, codigo_pr, codigo_p) values
('2', '5', '5');

########################################### 3
select cliente.nome, cliente.cpf from cliente join pedido
on  pedido.codigo_p  =  cliente.codigo
order by cliente.cpf;

############################################# 4
select codigo, data_hora, status_, codigo cliente from pedido where data_hora between 2022-01-01 and 2022-20-11;
############################################ 5 
select  cliente.cpf, cliente.nome, pedido.codigo, pedido.data_hora,  sum(produto.preço) from cliente join pedido, produto
where cliente.codigo = pedido.codigo_p and cliente.nome = pedido.data_hora;
on produto.codigo_pr = cliente.codigo and pedido.codigo_p = cliente.codigo;
 
############################################## 6
select min(preço) from produto;

select max(preço) from produto;
############################################# 7 *********
select avg(produtos.pedidos) from cliente, pedido, 

############################################# 8 
select * from pedido where status_ != 'f';

########################################### 9 
select avg(preço) from produto
group by nome;

############################################ 10



############################################ 11

alter table produto add desconto double not null;

update produto set desconto = 0.25 where codigo_pr = 1;
update produto set desconto = 0.30 where codigo_pr = 3;
update produto set desconto = 0.50 where codigo_pr = 4;


############################################# 12

update produto set preço = preço - (preço * desconto) where codigo_pr = 1;
update produto set preço = preço - (preço * desconto) where codigo_pr = 2;
update produto set preço = preço - (preço * desconto) where codigo_pr = 3;


############################################ 13
select * from pedido join produto
on produto.codigo_pr = pedido.codigo_p;




############################################ 11

alter table produto add desconto double not null;

update produto set desconto = 0.25 where codigo_pr = 1;
update produto set desconto = 0.30 where codigo_pr = 3;
update produto set desconto = 0.50 where codigo_pr = 4;


############################################# 12

update produto set preço = preço - (preço * desconto) where codigo_pr = 1;
update produto set preço = preço - (preço * desconto) where codigo_pr = 2;
update produto set preço = preço - (preço * desconto) where codigo_pr = 3;


############################################ 13
select * from pedido join produto
on produto.codigo_pr = pedido.codigo_p;


select max(preço) from produto join pedido 
on pedido.codigo_p = produto.codigo_pr;

########################################### 3
select cliente.nome, cliente.cpf from cliente join pedido
on  pedido.codigo_p  =  cliente.codigo
order by cliente.cpf;

############################################# 4
select codigo, data_hora, status_, codigo cliente from pedido where data_hora between 2022-01-01 and 2022-20-11;
############################################ 5 
select  cliente.cpf, cliente.nome, pedido.codigo, pedido.data_hora,  sum(produto.preço) from cliente, pedido, produto
where cliente.codigo = pedido.codigo_p and cliente.nome = pedido.data_hora;

 
############################################## 6
select min(preço) from produto;

select max(preço) from produto;
############################################# 7 *********
select avg(preço) from produto join pedido where status_ = 'f'
on pedido.codigo_p = produto.codigo_pr

???????????????????????


############################################# 8 
select * from pedido where status_ != 'f';

########################################### 9 
select avg(preço) from produto
group by nome;

############################################ 10
SELECT count(codigo_cliente) from pedido  join cliente.produto
on produto.codigo = cliente.codigo and cliente.codigo = pedido.pedido.p;


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


################################### 14
select max(preço) from produto join pedido.data_hora
on codigo_p.pedido = produto.codigo_pr;

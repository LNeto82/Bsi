use universidade;

 SET SQL_SAFE_UPDATES = 0;
 select*from aluno;
 
select*from disciplinas;

 update aluno set nome_completo = 'joao carlos' where cpf = '98794894898' and matricula = '1';
 update aluno set nome_completo = 'maria bonita' where cpf = '9879489484' and matricula = '2';
 update aluno set nome_completo = 'Luiz Contador' where cpf = '9849789484' and matricula = '4';
 
 update aluno set telefone = '41997688546' where matricula = '4' and cpf = '9849789484';
 update aluno set telefone = '41997688987' where matricula = '1' and cpf = '98794894898';
 
 update aluno set uf = 'rj' where cpf = '98794894898' and matricula = '1';
 update aluno set uf = 'rj' where cpf = '98794894898' and matricula = '1';
 
 update disciplinas set nome ='fisica' where codigo = '1';
 update disciplinas set nome ='algoritimo' where codigo = '4'; 
 update disciplinas set nome ='b.i' where codigo = '5';
  
  select*from professores;
  
  update professores set nome = 'Escobar' where matricula ='1';
  update professores set nome = 'Cami' where matricula ='2';
  
  update professores set telefone = '4130987654' where nome = 'Cami';
  update professores set telefone = '4130987604' where nome = 'edson';
  
  
  
  
  
  
  
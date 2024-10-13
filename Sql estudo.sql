Create table Unidade (

nome varchar(80) not null primary key,
tipo varchar(40),
capital varchar(80),
sigla char(2) not null unique, 
pais varchar(80) not null references Continente,
habitantes numeric
);

Alter table Unidade add area numeric not null;

Alter table Pais drop habitantes;

)

-- Select, retorna um conjunto de tuplas (equivale a uma tabela)

--Insert, Update, Delete . Insere, Altera, Remove uma ou mais tuplas em uma tabela, não retorna nenhum valor

-- Select, retornar todos os atributos ou escolhe ralguns, retornar todas as entradas ou somente aquelas que atendam alguns requisitos em especifico, somar, calcular médida, retornar maximos e/ou minimos, contar numero de entradas retornadas

Select lista de campos From tabela
Where restricao

-- Like '%substring%', compara substrings

-- Between X and Y, define intervalos

-- In (valor, valor, valor...), testa se pertence a um conjunto de valores

Select Nome, Capital from Pais
Where continente like '%Sul'

Select Nome, Capital from Pais
Where nome between 'A' and 'C'

Select Nome, Capital from Pais
Where nome In ('Brasil', 'Argentina')
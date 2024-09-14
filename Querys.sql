select Nome, Ano from Filmes
select Nome, Ano, Duracao from Filmes order by Ano
select Nome, Ano, Duracao from Filmes where nome like 'De volta para%'
select Nome, Ano, Duracao from Filmes where Ano = 1997
select Nome, Ano, Duracao from Filmes where Ano > 2000
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao
select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc --fiz a ordenação por quantidade nã por duração
select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M' 
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome
select 
	f.Nome,
	g.Genero
from
	Filmes f
	inner join FilmesGenero		fg	on f.id = fg.IdFilme
	inner join Generos			g	on g.id = fg.IdGenero

select 
	f.Nome,
	g.Genero
from
	Filmes f
	inner join FilmesGenero		fg	on f.id = fg.IdFilme
	inner join Generos			g	on g.id = fg.IdGenero
where g.Genero = 'Mistério'

select 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
from
	Filmes f
	inner join ElencoFilme		ef	on f.id = ef.IdFilme
	inner join Atores			a	on a.id = ef.IdAtor

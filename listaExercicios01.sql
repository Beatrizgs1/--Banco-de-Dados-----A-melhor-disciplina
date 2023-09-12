-- Trabalho de banco de dados

--exercicio 1:
SELECT titulo FROM livros;




-- exercicio 2:
SELECT nome FROM autores WHERE nascimento < '1900-01-01';




-- exercicio 3:
SELECT livros.titulo FROM livros
JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';



-- exercicio 4:
SELECT alunos.nome FROM alunos
JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE matriculas.curso = 'Engenharia de Software';




-- exercicio 5:
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto;



--exercicio 6:
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome;







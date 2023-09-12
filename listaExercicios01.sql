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



-- exercicio 7:
SELECT curso, COUNT(alunos.id) AS numero_de_alunos
FROM matriculas
LEFT JOIN alunos ON matriculas.aluno_id = alunos.id
GROUP BY curso;




-- exercicio 8:
SELECT produto, AVG(receita) AS media_de_receita
FROM vendas
GROUP BY produto;




-- exercicio 9:
SELECT produto
FROM vendas
GROUP BY produto
HAVING SUM(receita) > 10000;





-- exercicio 10:
SELECT autores.nome
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
HAVING COUNT(livros.id) > 2;




-- exercicio 11:
SELECT livros.titulo, autores.nome
FROM livros
JOIN autores ON livros.autor_id = autores.id;





-- exercicio 12:
SELECT alunos.nome, matriculas.curso
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;





-- exercicio 13:
SELECT autores.nome, livros.titulo
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;





-- exercicio 14:
SELECT matriculas.curso, alunos.nome
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;




-- exercicio 15:
SELECT alunos.nome, matriculas.curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;





-- exercicio 16:
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
ORDER BY COUNT(livros.id) DESC
LIMIT 1;





-- exercicio 17:
SELECT produto
FROM vendas
GROUP BY produto
ORDER BY SUM(receita)
LIMIT 1;









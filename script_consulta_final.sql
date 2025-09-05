USE sistema_universidade;
-- 5 Consultas com WHERE

-- 1. Alunos nascidos após 2000
SELECT * FROM Aluno 
WHERE Data_nascimento > '2000-12-31';

-- 2. Cursos do tipo tecnologo
SELECT * FROM Curso 
WHERE Tipo_graduacao = 'Tecnologo';

-- 3. Pagamentos com status 'Pendente'
SELECT * FROM Pagamento 
WHERE Status = 'Pendente';

-- 4. Professores de engenharia
SELECT * FROM Professor 
WHERE Especialidade LIKE '%Engenharia%';

-- 5. Consulta de matrículas ativas feitas em 2022
SELECT * FROM Inscricao_curso 
WHERE Status = 'Ativo' AND YEAR(Data_matricula) = 2022;

-- Consultas com GROUP BY e ORDER BY

-- 1. Total de alunos por naturalidade
SELECT Naturalidade, COUNT(*) as Total 
FROM Aluno 
GROUP BY Naturalidade 
ORDER BY Total DESC;

-- 2. Média de valor pago por status de pagamento
SELECT Status, AVG(Valor) as Media_Valor 
FROM Pagamento 
GROUP BY Status 
ORDER BY Media_Valor DESC;

-- 3. Consulta do número de disciplinas por curso
SELECT 
    c.Nome_curso,
    (SELECT COUNT(*) FROM Disciplina d WHERE d.Id_curso = c.Id_curso) as Qtd_Disciplinas
FROM Curso c
ORDER BY Qtd_Disciplinas DESC;

-- 4. Valor total de pagamentos por status
SELECT 
    Status,
    COUNT(*) as Quantidade,
    SUM(Valor) as Valor_Total,
    AVG(Valor) as Valor_Medio
FROM Pagamento
GROUP BY Status
ORDER BY Valor_Total DESC;

-- 5. Maior valor de pagamento por curso
SELECT 
    c.Nome_curso,
    (SELECT MAX(p.Valor)
     FROM Inscricao_curso i, Pagamento p
     WHERE i.Id_inscricao = p.Id_inscricao AND i.Id_curso = c.Id_curso) as Maior_Pagamento
FROM Curso c
ORDER BY Maior_Pagamento DESC;

-- Consultas com operadores aritméticos

-- 1. Aumento de 10% nos valores de pagamento
SELECT Id_pagamento, Valor, Valor + (Valor * 0.1) as Novo_Valor 
FROM Pagamento;

-- 2. Cálculo de mensalidades com desconto para pagamentos antecipados
SELECT 
    Id_pagamento,
    Valor as Valor_Original,
    Valor * 0.9 as Valor_Com_Desconto,
    Valor * 0.1 as Desconto_Aplicado
FROM Pagamento
WHERE DATEDIFF(Data_pagamento, '2020-01-01') > 0;

-- 3. Desconto de 5% nos pagamentos
SELECT Id_pagamento, Valor, Valor - (Valor * 0.05) as Valor_Com_Desconto 
FROM Pagamento;

-- 4. Dias desde a matrícula
SELECT Id_inscricao, DATEDIFF(CURDATE(), Data_matricula) as Dias_Desde_Matricula 
FROM Inscricao_curso;

-- 5. Média de idade dos alunos
SELECT AVG(DATEDIFF(CURDATE(), Data_nascimento)/365) as Idade_Media 
FROM Aluno;


-- Consultas com operadores de comparação

-- 1. Pagamentos acima de R$ 1000
SELECT * FROM Pagamento 
WHERE Valor > 1000;

-- 2. Alunos menores de 21 anos
SELECT * FROM Aluno 
WHERE Data_nascimento < DATE_SUB(CURDATE(), INTERVAL 21 YEAR);

-- 3. Disciplinas com carga horária inferior a 60h
SELECT * FROM Disciplina 
WHERE Carga_horaria < 60;

-- 4. Professores que não são de TI
SELECT * FROM Professor 
WHERE Especialidade != 'Gestão de TI';

-- 5. Matrículas inativas
SELECT * FROM Inscricao_curso 
WHERE Status != 'Ativo';

-- Consultas com operadores lógicos (AND, OR)

-- 1. Alunos de BH ou Contagem
SELECT * FROM Aluno 
WHERE Naturalidade = 'Belo Horizonte' OR Naturalidade = 'Contagem';

-- 2. Pagamentos entre R$500 e R$1000
SELECT * FROM Pagamento 
WHERE Valor >= 500 AND Valor <= 1000;

-- 3. Cursos de Bacharelado ou Licenciatura
SELECT * FROM Curso 
WHERE Tipo_graduacao = 'Bacharelado' OR Tipo_graduacao = 'Licenciatura';

-- 4. Alunos ativos com pagamento em dia
SELECT * 
FROM Aluno 
WHERE CPF IN (
    SELECT CPF 
    FROM Inscricao_curso 
    WHERE Status = 'Ativo'
    AND Id_inscricao IN (
        SELECT Id_inscricao 
        FROM Pagamento 
        WHERE Status = 'Pago'
    )
);

-- 5. Professores de exatas ou biológicas
SELECT * FROM Professor 
WHERE Especialidade LIKE '%Matemática%' OR Especialidade LIKE '%Engenharia%';

-- Consultas com operadores lógicos e negação(NOT)

-- 1. Cursos que não são de tecnologia
SELECT * FROM Curso 
WHERE NOT Tipo_graduacao = 'Tecnologo';

-- 2. Alunos que não são de Minas Gerais
SELECT * FROM Aluno 
WHERE NOT Naturalidade LIKE '%Minas Gerais%';

-- Consultas com operadores auxiliares

-- 1. Alunos de determinadas naturalidades usando IN
SELECT * FROM Aluno 
WHERE Naturalidade IN ('Belo Horizonte', 'São Paulo', 'Rio de Janeiro');

-- 2. Pagamentos entre jan e mar 2023
SELECT * FROM Pagamento 
WHERE Data_pagamento BETWEEN '2020-01-01' AND '2022-03-31';

-- 3. Alunos com nome começando com 'A'
SELECT * FROM Aluno 
WHERE Nome LIKE 'A%';

-- 4. Cursos com ID em uma lista específica
SELECT * FROM Curso 
WHERE Id_curso IN (1, 5, 10, 15);

-- 5. Matrículas com data não nula
SELECT * FROM Inscricao_curso 
WHERE Data_matricula IS NOT NULL;

-- 6. Professores com especialidade contendo 'Gestão'
SELECT * FROM Professor 
WHERE Especialidade LIKE '%Gestão%';

-- 7. Alunos nascidos entre 1998 e 2000
SELECT * FROM Aluno 
WHERE Data_nascimento BETWEEN '1998-01-01' AND '2000-12-31';

-- 8. Disciplinas com carga horária entre 40 e 80 horas
SELECT * FROM Disciplina 
WHERE Carga_horaria BETWEEN 40 AND 80;

-- 9. Cursos de determinados tipos
SELECT * FROM Curso 
WHERE Tipo_graduacao IN ('Bacharelado', 'Licenciatura');

-- 10. Pagamentos dentro de faixas de valores específicas
SELECT * FROM Pagamento 
WHERE Valor BETWEEN 1000 AND 2000;


-- consultando o valor total de todos os pagamentos em atraso
select sum(valor) as "total de pagamentos em atraso"  from pagamento
where status = 'Atrasado';

-- consultando media dos pagamentos em atraso
select avg(valor) as "média de pagamentos atrasados" From pagamento
where status = 'Atrasado';

-- selecionado o valor do maior pagamento em atraso
select max(valor) as "maior valor em atraso" from pagamento
where status = 'Atrasado';

-- selecionando o valor do menor pagamento em atraso
select min(valor) as "menor valor em atraso" from pagamento
where status = 'Atrasado';

-- selecionando o valor total de cada status de pagamento
select status, sum(valor) from pagamento
group by Status;

-- Consultas usando funções de data.

-- consultando a data hora de inicio e fim de cada aula e a duração das aulas.
select data_hora_inicio, data_hora_fim, timestampdiff(hour,Data_Hora_inicio,Data_Hora_fim) as "Tempo de aula" From aula;

-- consultando a quantidade de dias em atraso dos pagamentos
select *,datediff(now(),Data_pagamento) as "Qtd dias em atraso" From pagamento
Where Status = 'Atrasado';

-- = consultando as aulas do Mês de agosto 2025
select * from aula Where month(Data_Hora_inicio) = 8 and year(Data_Hora_inicio) = 2025;

-- = consultando notas emitidas entre 2020 2025

select * from nota_fiscal
where year(Data_emissao) between 2020 and 2025;

-- = consulta que tranforma data do formato YYYY - MM - DD para dd/mm/yyyy
select Id_nota,Id_pagamento,date_format(Data_emissao,'%d/%m/%Y') As Data_de_emissão from nota_fiscal;

-- = Consultas usando subsconsultas, agrupamento e união de dados
-- = consultando os alunos que estão inativos.
select * from aluno
Where cpf in (select distinct cpf from inscricao_curso where status = 'inativo');

-- =  consultando as aulas em que professor seja especialista em direito civil.
select * from aula
Where id_professor in ( select distinct id_professor from professor where especialidade = 'Direito Civil');

-- = consultando a quantidade de alunos por naturalidade
select naturalidade, count(*) from aluno group by naturalidade;

-- = Consultando a quantidade de aulas por professor
select id_professor, count(*) from aula group by id_professor;

-- = Consultando os pagamentos pendentes e atrasados
select * from pagamento Where status = 'Pendente'
union all 
select * from pagamento Where status = 'atrasado';

-- criando  conultas com join e vizualição de dados.
-- = Criando View para grade horaria
create view Vw_Grade_horaria AS
select 
au.data_hora_inicio, 
au.data_hora_fim,
pr.Nome As Nome_professor,
tu.Id_turma,
tu.Periodo,
timestampdiff(hour,Data_Hora_inicio,Data_Hora_fim) as "Tempo de aula"
From aula au
right Join professor pr
on au.Id_professor = pr.Id_professor
inner join turma tu
on au.Id_turma = tu.Id_turma;

-- = criando view para extrair a relação de aluno e curso
create View Vw_Alunos_Curso As
select al.nome,al.cpf,mat.id_inscricao As Matricula ,cr.nome_curso from inscricao_curso mat
inner join aluno al
on al.cpf = mat.cpf
inner join curso cr
on cr.id_curso = mat.id_curso;

-- Criando view para  extrair os professores e as diciplinas que lecionam
CREATE VIEW vw_professores_disciplinas AS
SELECT 
    p.Id_professor,
    p.Nome AS Nome_Professor,
    p.Especialidade,
    d.Nome_disciplina,
    c.Nome_curso,
    d.Carga_horaria
FROM Professor p
INNER JOIN Aula a ON p.Id_professor = a.Id_professor
INNER JOIN Disciplina d ON a.Id_disciplina = d.Id_disciplina
INNER JOIN Curso c ON d.Id_curso = c.Id_curso
GROUP BY p.Id_professor, d.Id_disciplina;

-- = Criando view para extrair os alunos que possuem pagamentos pendentes e atrasados
CREATE VIEW vw_pagamentos_pendentes AS
SELECT 
    a.CPF,
    a.Nome AS Nome_Aluno,
    c.Nome_curso,
    p.Valor,
    p.Data_pagamento,
    p.Status
FROM Pagamento p
INNER JOIN Inscricao_curso ic ON p.Id_inscricao = ic.Id_inscricao
INNER JOIN Aluno a ON ic.CPF = a.CPF
INNER JOIN Curso c ON ic.Id_curso = c.Id_curso
WHERE p.Status In ('Pendente','Atrasado');

-- = Criando View para extrair a quantidade de alunos de cada turma
CREATE VIEW vw_cursos_quantidade_alunos AS
SELECT 
    c.Id_curso,
    c.Nome_curso,
    c.Tipo_graduacao,
    COUNT(ic.CPF) AS Total_Alunos,
    SUM(CASE WHEN ic.Status = 'Ativo' THEN 1 ELSE 0 END) AS Alunos_Ativos,
    SUM(CASE WHEN ic.Status = 'Inativo' THEN 1 ELSE 0 END) AS Alunos_Inativos,
    SUM(CASE WHEN ic.Status = 'Trancado' THEN 1 ELSE 0 END) AS Alunos_Trancados
FROM Curso c
LEFT JOIN Inscricao_curso ic ON c.Id_curso = ic.Id_curso
GROUP BY c.Id_curso, c.Nome_curso, c.Tipo_graduacao;

-- = criando 10 consultas usando JOins ( INNER,LEFT,RIGHT)
	-- = Consultando a quantidade de alunos ativos por curso
SELECT 
    c.Nome_curso,
    COUNT(ic.CPF) AS Total_Alunos_Ativos
FROM Curso c
INNER JOIN Inscricao_curso ic ON c.Id_curso = ic.Id_curso
WHERE ic.Status = 'Ativo'
GROUP BY c.Nome_curso;

	--  = Retorna apenas alunos que possuem matrícula ativa em algum curso
SELECT a.CPF, a.Nome, c.Nome_curso, ic.Data_matricula
FROM Aluno a
INNER JOIN Inscricao_curso ic ON a.CPF = ic.CPF
INNER JOIN Curso c ON ic.Id_curso = c.Id_curso
WHERE ic.Status = 'Ativo';

	-- = Consultando grade horaria de cada aula cadastrada
SELECT 
    d.Nome_disciplina,
    p.Nome AS Professor,
    c.Nome_curso,
    t.Periodo,
    t.Turno,
    a.Data_Hora_inicio,
    a.Data_Hora_fim
FROM Aula a
INNER JOIN Disciplina d ON a.Id_disciplina = d.Id_disciplina
INNER JOIN Professor p ON a.Id_professor = p.Id_professor
INNER JOIN Turma t ON a.Id_turma = t.Id_turma
INNER JOIN Curso c ON t.Id_curso = c.Id_curso;


	-- = Retorna TODOS os pagamentos, mesmo os que não geraram nota fiscal
SELECT 
    p.Id_pagamento,
    p.Valor,
    p.Status,
    nf.Id_nota,
    nf.Data_emissao
FROM Pagamento p
LEFT JOIN Nota_fiscal nf ON p.Id_pagamento = nf.Id_pagamento;


	-- Retorna professores que não estão designados para nenhuma aula
SELECT p.Id_professor, p.Nome, p.Especialidade
FROM Professor p
LEFT JOIN Aula a ON p.Id_professor = a.Id_professor
WHERE a.Id_aula IS NULL;

	-- = Retorna TODOS os cursos, mesmo os que não têm alunos matriculados
SELECT c.Nome_curso, c.Tipo_graduacao, a.Nome, ic.Status
FROM Aluno a
RIGHT JOIN Inscricao_curso ic ON a.CPF = ic.CPF
RIGHT JOIN Curso c ON ic.Id_curso = c.Id_curso;

	-- = Retorna cursos que não possuem NENHUM aluno matriculado
SELECT c.Id_curso, c.Nome_curso, c.Tipo_graduacao
FROM Inscricao_curso ic
RIGHT JOIN Curso c ON ic.Id_curso = c.Id_curso
WHERE ic.Id_inscricao IS NULL;

	-- Mostra TODAS as turmas, incluindo as que não têm aulas agendadas
	-- Para turmas sem aulas, os dados da aula e professor aparecem como NULL
SELECT 
    c.Id_curso,
    c.Nome_curso, 
    c.Tipo_graduacao,
    a.CPF,
    a.Nome AS Nome_Aluno,
    ic.Status AS Status_Matricula
FROM Inscricao_curso ic
RIGHT JOIN Curso c ON ic.Id_curso = c.Id_curso
LEFT JOIN Aluno a ON ic.CPF = a.CPF
ORDER BY c.Nome_curso, a.Nome;

-- consultando os dados do aluno e valor pago em sua nota fiscal
SELECT 
    Aluno.Nome AS Nome_Aluno,
    Pagamento.Valor,
    Nota_fiscal.Data_emissao
FROM 
    Nota_fiscal
 INNER JOIN
    Pagamento ON Nota_fiscal.Id_pagamento = Pagamento.Id_pagamento
INNER JOIN 
    Inscricao_curso ON Pagamento.Id_inscricao = Inscricao_curso.Id_inscricao
INNER JOIN 
    Aluno ON Inscricao_curso.CPF = Aluno.CPF;
    
-- Consultando a carga horária total de cada curso
SELECT 
    Curso.Nome_curso,
    SUM(Disciplina.Carga_horaria) AS Carga_total
FROM 
    Disciplina
JOIN 
    Curso ON Disciplina.Id_curso = Curso.Id_curso
GROUP BY 
    Curso.Nome_curso;
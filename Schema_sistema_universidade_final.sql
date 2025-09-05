DROP DATABASE sistema_universidade;
CREATE DATABASE IF NOT EXISTS Sistema_universidade;
USE Sistema_universidade;

CREATE TABLE Aluno (
    CPF VARCHAR(11) PRIMARY KEY,
    RG VARCHAR(12),
    Nome VARCHAR(100) NOT NULL,
    Naturalidade VARCHAR(50),
    Data_nascimento DATE,
    Email VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco VARCHAR(100)
);

CREATE TABLE Curso (
    Id_curso INT PRIMARY KEY AUTO_INCREMENT,
    Nome_curso VARCHAR(50) NOT NULL,
    Tipo_graduacao ENUM('Bacharelado', 'Licenciatura', 'Tecnologo')
);

CREATE TABLE Inscricao_curso (
    Id_inscricao INT PRIMARY KEY AUTO_INCREMENT,
    Id_curso INT,
    CPF VARCHAR(11),
    Data_matricula DATE,
    Status ENUM('Ativo', 'Inativo', 'Trancado'),
    FOREIGN KEY (Id_curso) REFERENCES Curso(Id_curso),
    FOREIGN KEY (CPF) REFERENCES Aluno(CPF)
);

CREATE TABLE Pagamento (
    Id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Id_inscricao INT,
    Valor DECIMAL(10,2),
    Data_pagamento DATE,
    Status ENUM('Pago', 'Pendente', 'Atrasado'),
    FOREIGN KEY (Id_inscricao) REFERENCES Inscricao_curso(Id_inscricao)
);

CREATE TABLE Nota_fiscal (
    Id_nota INT PRIMARY KEY AUTO_INCREMENT,
    Id_pagamento INT,
    Data_emissao DATE,
    FOREIGN KEY (Id_pagamento) REFERENCES Pagamento(Id_pagamento)
);

CREATE TABLE Professor (
    Id_professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Especialidade VARCHAR(50)
);

CREATE TABLE Turma (
    Id_turma INT PRIMARY KEY AUTO_INCREMENT,
    Id_curso INT,
    Periodo INT,
    Turno ENUM('Manha', 'Tarde', 'Noite'),
    FOREIGN KEY (Id_curso) REFERENCES Curso(Id_curso)
);

CREATE TABLE Disciplina (
    Id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    Id_curso INT,
    Nome_disciplina VARCHAR(50) NOT NULL,
    Carga_horaria INT,
    FOREIGN KEY (Id_curso) REFERENCES Curso(Id_curso)
);

CREATE TABLE Aula (
    Id_aula INT PRIMARY KEY AUTO_INCREMENT,
    Id_turma INT,
    Id_disciplina INT,
    Id_professor INT,
    Data_Hora_inicio DATETIME,
    Data_Hora_fim DATETIME,
    FOREIGN KEY (Id_turma) REFERENCES Turma(Id_turma),
    FOREIGN KEY (Id_disciplina) REFERENCES Disciplina(Id_disciplina),
    FOREIGN KEY (Id_professor) REFERENCES Professor(Id_professor)
);

INSERT INTO Aluno (CPF, RG, Nome, Naturalidade, Data_nascimento, Email, Telefone, Endereco) VALUES
('11122233344', '112223334', 'Ana Carvalho', 'Belo Horizonte', '1998-03-12', 'ana@email.com', '31999999999', 'Rua das Flores, 100'),
('22233344455', '223334445', 'Bruno Oliveira', 'Porto Alegre', '2000-07-25', 'bruno@email.com', '51888888888', 'Av Central, 200'),
('33344455566', '334445556', 'Carla Mendes', 'Salvador', '1999-11-05', 'carla@email.com', '71777777777', 'Travessa da Praia, 300'),
('44455566677', '445556667', 'Daniel Santos', 'Fortaleza', '2001-01-30', 'daniel@email.com', '85666666666', 'Rua do Sol, 400'),
('55566677788', '556667778', 'Eduarda Lima', 'Recife', '2002-09-15', 'eduarda@email.com', '81555555555', 'Alameda das Árvores, 500'),
('66677788899', '667778889', 'Felipe Costa', 'Brasília', '1997-12-03', 'felipe@email.com', '61444444444', 'Quadra 10, Bloco A, 30'),
('77788899900', '778889990', 'Gabriela Rocha', 'Manaus', '1999-04-18', 'gabriela@email.com', '92333333333', 'Avenida Brasil, 600'),
('88899900011', '889990001', 'Henrique Alves', 'Curitiba', '2000-08-22', 'henrique@email.com', '41222222222', 'Rua das Palmeiras, 700'),
('99900011122', '990001112', 'Isabela Martins', 'Florianópolis', '2001-06-14', 'isabela@email.com', '48321111111', 'Servidão da Praia, 800'),
('00011122233', '001112223', 'João Pedro Silva', 'Natal', '1998-10-09', 'joaopedro@email.com', '84300000000', 'Rua do Mar, 900'),
('12312312312', '123123123', 'Karina Oliveira', 'São Luís', '1999-02-28', 'karina@email.com', '98329999999', 'Travessa da Paz, 1000'),
('23423423423', '234234234', 'Lucas Pereira', 'Maceió', '2000-05-17', 'lucas@email.com', '82328888888', 'Alameda dos Anjos, 1100'),
('34534534534', '345345345', 'Mariana Santos', 'Teresina', '2001-07-23', 'mariana@email.com', '86327777777', 'Avenida Central, 1200'),
('45645645645', '456456456', 'Nathan Costa', 'João Pessoa', '1997-09-11', 'nathan@email.com', '83326666666', 'Rua das Acácias, 1300'),
('56756756756', '567567567', 'Olivia Rodrigues', 'Campo Grande', '1998-11-05', 'olivia@email.com', '67325555555', 'Travessa das Flores, 1400'),
('67867867867', '678678678', 'Paulo Ferreira', 'Vitória', '1999-01-30', 'paulo@email.com', '27324444444', 'Avenida das Árvores, 1500'),
('78978978978', '789789789', 'Quésia Almeida', 'Goiânia', '2000-03-15', 'quesia@email.com', '62323333333', 'Rua do Sol, 1600'),
('89089089089', '890890890', 'Rafael Lima', 'Cuiabá', '2001-08-20', 'rafael@email.com', '65322222222', 'Alameda da Lua, 1700'),
('90190190190', '901901901', 'Sofia Barbosa', 'Aracaju', '1997-10-25', 'sofia@email.com', '79321111111', 'Praça das Estrelas, 1800'),
('01201201201', '012012012', 'Thiago Nascimento', 'Porto Velho', '1998-12-12', 'thiago@email.com', '69320000000', 'Rua dos Coqueiros, 1900'),
('13513513513', '135135135', 'Úrsula Costa', 'Boa Vista', '1999-04-07', 'ursula@email.com', '95319999999', 'Avenida das Palmeiras, 2000'),
('24624624624', '246246246', 'Vitor Hugo Silva', 'Palmas', '2000-06-19', 'vitor@email.com', '63318888888', 'Travessa do Rio, 2100'),
('35735735735', '357357357', 'Wanessa Oliveira', 'Rio Branco', '2001-09-03', 'wanessa@email.com', '68317777777', 'Rua das Montanhas, 2200'),
('46846846846', '468468468', 'Xavier Martins', 'Macapá', '1997-11-28', 'xavier@email.com', '96316666666', 'Alameda do Parque, 2300'),
('57957957957', '579579579', 'Yasmin Ferreira', 'Belém', '1998-02-14', 'yasmin@email.com', '91315555555', 'Avenida Principal, 2400'),
('68068068068', '680680680', 'Zacarias Santos', 'São Paulo', '1999-05-09', 'zacarias@email.com', '11314444444', 'Rua das Oliveiras, 2500'),
('79179179179', '791791791', 'Amanda Costa', 'Rio de Janeiro', '2000-07-24', 'amanda@email.com', '21313333333', 'Travessa do Bosque, 2600'),
('80280280280', '802802802', 'Bernardo Lima', 'Salvador', '2001-10-08', 'bernardo@email.com', '71312222222', 'Avenida do Mar, 2700'),
('91391391391', '913913913', 'Camila Silva', 'Fortaleza', '1997-12-31', 'camila@email.com', '85311111111', 'Rua das Pedras, 2800'),
('02402402402', '024024024', 'Diego Oliveira', 'Recife', '1998-03-16', 'diego@email.com', '81310000000', 'Alameda dos Passáros, 2900'),
('13513513514', '135135135', 'Elaine Santos', 'Belo Horizonte', '1999-06-10', 'elaine@email.com', '31309999999', 'Praça da Liberdade, 3000'),
('24624624625', '246246246', 'Fabio Costa', 'Porto Alegre', '2000-08-25', 'fabio@email.com', '51308888888', 'Rua da Paz, 3100'),
('35735735736', '357357357', 'Gisele Lima', 'Manaus', '2001-11-19', 'gisele@email.com', '92307777777', 'Avenida Amazonas, 3200'),
('46846846847', '468468468', 'Heitor Silva', 'Curitiba', '1998-01-13', 'heitor@email.com', '41306666666', 'Travessa das Araucárias, 3300'),
('57957957958', '579579579', 'Igor Oliveira', 'Florianópolis', '1999-04-08', 'igor@email.com', '48305555555', 'Rua das Ostras, 3400'),
('68068068069', '680680680', 'Jéssica Santos', 'Natal', '2000-06-23', 'jessica@email.com', '84304444444', 'Alameda do Sol, 3500'),
('79179179180', '791791791', 'Kaique Costa', 'São Luís', '2001-09-17', 'kaique@email.com', '98303333333', 'Avenida Litorânea, 3600'),
('80280280281', '802802802', 'Larissa Lima', 'Maceió', '1998-11-11', 'larissa@email.com', '82302222222', 'Rua das Algas, 3700'),
('91391391392', '913913913', 'Marcos Silva', 'Teresina', '1999-02-05', 'marcos@email.com', '86301111111', 'Travessa do Parnaíba, 3800'),
('02402402403', '024024024', 'Natalia Oliveira', 'João Pessoa', '2000-04-21', 'natalia@email.com', '83300000000', 'Avenida Cabo Branco, 3900'),
('13513513515', '135135135', 'Otávio Santos', 'Campo Grande', '2001-07-16', 'otavio@email.com', '67329999999', 'Rua do Cerrado, 4000'),
('24624624626', '246246246', 'Patricia Costa', 'Vitória', '1998-09-09', 'patricia@email.com', '27328888888', 'Alameda da Praia, 4100'),
('35735735737', '357357357', 'Quintino Lima', 'Goiânia', '1999-12-04', 'quintino@email.com', '62327777777', 'Avenida Goiás, 4200'),
('46846846848', '468468468', 'Rita Silva', 'Cuiabá', '2000-02-18', 'rita@email.com', '65326666666', 'Rua do Pantanal, 4300'),
('57957957959', '579579579', 'Sérgio Oliveira', 'Aracaju', '2001-05-15', 'sergio@email.com', '79325555555', 'Travessa dos Coqueiros, 4400'),
('68068068070', '680680680', 'Tatiane Santos', 'Porto Velho', '1998-07-10', 'tatiane@email.com', '69324444444', 'Avenida Rio Madeira, 4500'),
('79179179181', '791791791', 'Ubirajara Costa', 'Boa Vista', '1999-10-04', 'ubirajara@email.com', '95323333333', 'Rua das Lavadeiras, 4600'),
('80280280282', '802802802', 'Vanessa Lima', 'Palmas', '2000-12-29', 'vanessa@email.com', '63322222222', 'Alameda das Flores, 4700'),
('91391391393', '913913913', 'Wagner Silva', 'Rio Branco', '2001-03-25', 'wagner@email.com', '68321111111', 'Avenida Ceará, 4800'),
('02402402404', '024024024', 'Xuxa Oliveira', 'Macapá', '1998-05-19', 'xuxa@email.com', '96320000000', 'Rua do Equador, 4900');

INSERT INTO Curso (Nome_curso, Tipo_graduacao) VALUES
('Direito', 'Bacharelado'),
('Pedagogia', 'Licenciatura'),
('Redes de Computadores', 'Tecnologo'),
('Medicina', 'Bacharelado'),
('Ciências Biológicas', 'Bacharelado'),
('Engenharia Civil', 'Bacharelado'),
('Letras - Português', 'Licenciatura'),
('Análise e Desenvolvimento de Sistemas', 'Tecnologo'),
('Enfermagem', 'Bacharelado'),
('Farmácia', 'Bacharelado'),
('Administração', 'Bacharelado'),
('História', 'Licenciatura'),
('Gestão de TI', 'Tecnologo'),
('Psicologia', 'Bacharelado'),
('Odontologia', 'Bacharelado'),
('Ciências Contábeis', 'Bacharelado'),
('Geografia', 'Licenciatura'),
('Jogos Digitais', 'Tecnologo'),
('Nutrição', 'Bacharelado'),
('Fisioterapia', 'Bacharelado'),
('Economia', 'Bacharelado'),
('Matemática', 'Licenciatura'),
('Segurança da Informação', 'Tecnologo'),
('Medicina Veterinária', 'Bacharelado'),
('Biomedicina', 'Bacharelado'),
('Marketing', 'Bacharelado'),
('Física', 'Licenciatura'),
('Gestão Comercial', 'Tecnologo'),
('Educação Física', 'Bacharelado'),
('Arquitetura e Urbanismo', 'Bacharelado'),
('Relações Internacionais', 'Bacharelado'),
('Química', 'Licenciatura'),
('Produção Multimídia', 'Tecnologo'),
('Fonoaudiologia', 'Bacharelado'),
('Engenharia Elétrica', 'Bacharelado'),
('Publicidade e Propaganda', 'Bacharelado'),
('Artes Visuais', 'Licenciatura'),
('Gestão de Recursos Humanos', 'Tecnologo'),
('Engenharia Mecânica', 'Bacharelado'),
('Serviço Social', 'Bacharelado'),
('Sociologia', 'Licenciatura'),
('Gestão Financeira', 'Tecnologo'),
('Engenharia de Produção', 'Bacharelado'),
('Teologia', 'Bacharelado'),
('Filosofia', 'Licenciatura'),
('Logística', 'Tecnologo'),
('Engenharia Química', 'Bacharelado'),
('Turismo', 'Bacharelado'),
('Música', 'Licenciatura'),
('Comércio Exterior', 'Tecnologo');

INSERT INTO Professor (Nome, Email, Especialidade) VALUES
('Carlos Oliveira', 'carlos@universidade.com', 'Direito Civil'),
('Amanda Lima', 'amanda@universidade.com', 'Educação Infantil'),
('Ricardo Souza', 'ricardo@universidade.com', 'Redes de Computadores'),
('Fernanda Costa', 'fernanda@universidade.com', 'Anatomia'),
('Gabriel Martins', 'gabriel@universidade.com', 'Genética'),
('Patrícia Alves', 'patricia@universidade.com', 'Literatura'),
('Marcos Ferreira', 'marcos@universidade.com', 'Programação'),
('Juliana Santos', 'juliana@universidade.com', 'Enfermagem'),
('Roberto Silva', 'roberto@universidade.com', 'Farmácia'),
('Carla Mendes', 'carla@universidade.com', 'Administração'),
('Paulo Rodrigues', 'paulo@universidade.com', 'História'),
('Luciana Costa', 'luciana@universidade.com', 'Gestão de TI'),
('Fábio Nascimento', 'fabio@universidade.com', 'Psicologia'),
('Sandra Oliveira', 'sandra@universidade.com', 'Odontologia'),
('André Lima', 'andre@universidade.com', 'Contabilidade'),
('Tatiane Silva', 'tatiane@universidade.com', 'Geografia'),
('Rafael Costa', 'rafael@universidade.com', 'Desenvolvimento de Jogos'),
('Vanessa Martins', 'vanessa@universidade.com', 'Nutrição'),
('Bruno Ferreira', 'bruno@universidade.com', 'Fisioterapia'),
('Camila Souza', 'camila@universidade.com', 'Economia'),
('Diego Alves', 'diego@universidade.com', 'Matemática'),
('Larissa Santos', 'larissa@universidade.com', 'Segurança da Informação'),
('Thiago Oliveira', 'thiago@universidade.com', 'Medicina Veterinária'),
('Mariana Costa', 'mariana@universidade.com', 'Biomedicina'),
('Gustavo Lima', 'gustavo@universidade.com', 'Marketing'),
('Isabela Silva', 'isabela@universidade.com', 'Física'),
('Leonardo Ferreira', 'leonardo@universidade.com', 'Gestão Comercial'),
('Natália Souza', 'natalia@universidade.com', 'Educação Física'),
('Rodrigo Alves', 'rodrigo@universidade.com', 'Arquitetura'),
('Carolina Santos', 'carolina@universidade.com', 'Relações Internacionais'),
('Felipe Oliveira', 'felipe@universidade.com', 'Química'),
('Jéssica Costa', 'jessica@universidade.com', 'Produção Multimídia'),
('Vinícius Lima', 'vinicius@universidade.com', 'Fonoaudiologia'),
('Priscila Silva', 'priscila@universidade.com', 'Engenharia Elétrica'),
('Renato Ferreira', 'renato@universidade.com', 'Publicidade'),
('Daniela Souza', 'daniela@universidade.com', 'Artes Visuais'),
('Alexandre Alves', 'alexandre@universidade.com', 'Recursos Humanos'),
('Beatriz Santos', 'beatriz@universidade.com', 'Engenharia Mecânica'),
('Eduardo Oliveira', 'eduardo@universidade.com', 'Serviço Social'),
('Lívia Costa', 'livia@universidade.com', 'Sociologia'),
('Marcelo Lima', 'marcelo@universidade.com', 'Gestão Financeira'),
('Simone Silva', 'simone@universidade.com', 'Engenharia de Produção'),
('Hugo Ferreira', 'hugo@universidade.com', 'Teologia'),
('Cristina Souza', 'cristina@universidade.com', 'Filosofia'),
('Ricardo Alves', 'ricardo2@universidade.com', 'Logística'),
('Fernanda Santos', 'fernanda2@universidade.com', 'Engenharia Química'),
('Roberto Oliveira', 'roberto2@universidade.com', 'Turismo'),
('Ana Costa', 'ana2@universidade.com', 'Música'),
('José Lima', 'jose@universidade.com', 'Comércio Exterior'),
('Márcia Silva', 'marcia@universidade.com', 'Direito Constitucional');


INSERT INTO Inscricao_curso (Id_curso, CPF, Data_matricula, Status)
SELECT 
    FLOOR(1 + RAND() * 50) as Id_curso,
    CPF,
    DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 1095) DAY) as Data_matricula,
    ELT(FLOOR(1 + RAND() * 3), 'Ativo', 'Inativo', 'Trancado') as Status
FROM Aluno
LIMIT 50;

INSERT INTO Pagamento (Id_inscricao, Valor, Data_pagamento, Status)
SELECT
    Id_inscricao,
    ROUND(500 + RAND() * 2000, 2) as Valor,
    DATE_ADD(Data_matricula, INTERVAL FLOOR(RAND() * 30) DAY) as Data_pagamento,
    ELT(FLOOR(1 + RAND() * 3), 'Pago', 'Pendente', 'Atrasado') as Status
FROM Inscricao_curso
LIMIT 50;

INSERT INTO Nota_fiscal (Id_pagamento, Data_emissao)
SELECT
    Id_pagamento,
    DATE_ADD(Data_pagamento, INTERVAL FLOOR(RAND() * 5) DAY) as Data_emissao
FROM Pagamento
LIMIT 50;

INSERT INTO Professor (Nome, Email, Especialidade) VALUES
('Carlos Oliveira', 'carlos@universidade.com', 'Direito Civil'),
('Amanda Lima', 'amanda@universidade.com', 'Educação Infantil'),
('Ricardo Souza', 'ricardo@universidade.com', 'Redes de Computadores'),
('Fernanda Costa', 'fernanda@universidade.com', 'Anatomia'),
('Gabriel Martins', 'gabriel@universidade.com', 'Genética'),
('Patrícia Alves', 'patricia@universidade.com', 'Literatura'),
('Marcos Ferreira', 'marcos@universidade.com', 'Programação'),
('Juliana Santos', 'juliana@universidade.com', 'Enfermagem'),
('Roberto Silva', 'roberto@universidade.com', 'Farmácia'),
('Carla Mendes', 'carla@universidade.com', 'Administração'),
('Paulo Rodrigues', 'paulo@universidade.com', 'História'),
('Luciana Costa', 'luciana@universidade.com', 'Gestão de TI'),
('Fábio Nascimento', 'fabio@universidade.com', 'Psicologia'),
('Sandra Oliveira', 'sandra@universidade.com', 'Odontologia'),
('André Lima', 'andre@universidade.com', 'Contabilidade'),
('Tatiane Silva', 'tatiane@universidade.com', 'Geografia'),
('Rafael Costa', 'rafael@universidade.com', 'Desenvolvimento de Jogos'),
('Vanessa Martins', 'vanessa@universidade.com', 'Nutrição'),
('Bruno Ferreira', 'bruno@universidade.com', 'Fisioterapia'),
('Camila Souza', 'camila@universidade.com', 'Economia'),
('Diego Alves', 'diego@universidade.com', 'Matemática'),
('Larissa Santos', 'larissa@universidade.com', 'Segurança da Informação'),
('Thiago Oliveira', 'thiago@universidade.com', 'Medicina Veterinária'),
('Mariana Costa', 'mariana@universidade.com', 'Biomedicina'),
('Gustavo Lima', 'gustavo@universidade.com', 'Marketing'),
('Isabela Silva', 'isabela@universidade.com', 'Física'),
('Leonardo Ferreira', 'leonardo@universidade.com', 'Gestão Comercial'),
('Natália Souza', 'natalia@universidade.com', 'Educação Física'),
('Rodrigo Alves', 'rodrigo@universidade.com', 'Arquitetura'),
('Carolina Santos', 'carolina@universidade.com', 'Relações Internacionais'),
('Felipe Oliveira', 'felipe@universidade.com', 'Química'),
('Jéssica Costa', 'jessica@universidade.com', 'Produção Multimídia'),
('Vinícius Lima', 'vinicius@universidade.com', 'Fonoaudiologia'),
('Priscila Silva', 'priscila@universidade.com', 'Engenharia Elétrica'),
('Renato Ferreira', 'renato@universidade.com', 'Publicidade'),
('Daniela Souza', 'daniela@universidade.com', 'Artes Visuais'),
('Alexandre Alves', 'alexandre@universidade.com', 'Recursos Humanos'),
('Beatriz Santos', 'beatriz@universidade.com', 'Engenharia Mecânica'),
('Eduardo Oliveira', 'eduardo@universidade.com', 'Serviço Social'),
('Lívia Costa', 'livia@universidade.com', 'Sociologia'),
('Marcelo Lima', 'marcelo@universidade.com', 'Gestão Financeira'),
('Simone Silva', 'simone@universidade.com', 'Engenharia de Produção'),
('Hugo Ferreira', 'hugo@universidade.com', 'Teologia'),
('Cristina Souza', 'cristina@universidade.com', 'Filosofia'),
('Ricardo Alves', 'ricardo2@universidade.com', 'Logística'),
('Fernanda Santos', 'fernanda2@universidade.com', 'Engenharia Química'),
('Roberto Oliveira', 'roberto2@universidade.com', 'Turismo'),
('Ana Costa', 'ana2@universidade.com', 'Música'),
('José Lima', 'jose@universidade.com', 'Comércio Exterior'),
('Márcia Silva', 'marcia@universidade.com', 'Direito Constitucional');

INSERT INTO Turma (Id_curso, Periodo, Turno)
SELECT
    Id_curso,
    FLOOR(1 + RAND() * 10) as Periodo,
    ELT(FLOOR(1 + RAND() * 3), 'Manha', 'Tarde', 'Noite') as Turno
FROM Curso
LIMIT 50;

INSERT INTO Disciplina (Id_curso, Nome_disciplina, Carga_horaria)
SELECT
    Id_curso,
    CONCAT('Disciplina ', FLOOR(1 + RAND() * 100)) as Nome_disciplina,
    FLOOR(30 + RAND() * 120) as Carga_horaria
FROM Curso
LIMIT 50;

INSERT INTO Aula (Id_turma, Id_disciplina, Id_professor, Data_Hora_inicio, Data_Hora_fim) VALUES
(1, 1, 1, '2023-03-15 08:00:00', '2023-03-15 10:00:00'),
(2, 2, 2, '2023-03-16 09:00:00', '2023-03-16 11:00:00'),
(3, 3, 3, '2023-03-17 10:00:00', '2023-03-17 12:00:00'),
(4, 4, 4, '2023-03-20 14:00:00', '2023-03-20 16:00:00'),
(5, 5, 5, '2023-03-21 16:00:00', '2023-03-21 18:00:00'),
(6, 6, 6, '2023-03-22 08:30:00', '2023-03-22 10:30:00'),
(7, 7, 7, '2023-03-23 11:00:00', '2023-03-23 13:00:00'),
(8, 8, 8, '2023-03-24 13:00:00', '2023-03-24 15:00:00'),
(9, 9, 9, '2023-03-27 15:00:00', '2023-03-27 17:00:00'),
(10, 10, 10, '2023-03-28 07:30:00', '2023-03-28 09:30:00'),
(11, 11, 11, '2023-03-29 10:30:00', '2023-03-29 12:30:00'),
(12, 12, 12, '2023-03-30 12:00:00', '2023-03-30 14:00:00'),
(13, 13, 13, '2023-03-31 14:30:00', '2023-03-31 16:30:00'),
(14, 14, 14, '2023-04-03 16:30:00', '2023-04-03 18:30:00'),
(15, 15, 15, '2023-04-04 08:00:00', '2023-04-04 10:00:00'),
(16, 16, 16, '2023-04-05 09:30:00', '2023-04-05 11:30:00'),
(17, 17, 17, '2023-04-06 11:00:00', '2023-04-06 13:00:00'),
(18, 18, 18, '2023-04-07 13:30:00', '2023-04-07 15:30:00'),
(19, 19, 19, '2023-04-10 15:00:00', '2023-04-10 17:00:00'),
(20, 20, 20, '2023-04-11 07:00:00', '2023-04-11 09:00:00'),
(21, 21, 21, '2023-04-12 10:00:00', '2023-04-12 12:00:00'),
(22, 22, 22, '2023-04-13 12:30:00', '2023-04-13 14:30:00'),
(23, 23, 23, '2023-04-14 14:00:00', '2023-04-14 16:00:00'),
(24, 24, 24, '2023-04-17 16:00:00', '2023-04-17 18:00:00'),
(25, 25, 25, '2023-04-18 08:30:00', '2023-04-18 10:30:00'),
(26, 26, 26, '2023-04-19 11:30:00', '2023-04-19 13:30:00'),
(27, 27, 27, '2023-04-20 13:00:00', '2023-04-20 15:00:00'),
(28, 28, 28, '2023-04-21 15:30:00', '2023-04-21 17:30:00'),
(29, 29, 29, '2023-04-24 07:30:00', '2023-04-24 09:30:00'),
(30, 30, 30, '2023-04-25 10:30:00', '2023-04-25 12:30:00'),
(31, 31, 31, '2023-04-26 12:00:00', '2023-04-26 14:00:00'),
(32, 32, 32, '2023-04-27 14:30:00', '2023-04-27 16:30:00'),
(33, 33, 33, '2023-04-28 16:00:00', '2023-04-28 18:00:00'),
(34, 34, 34, '2023-05-01 08:00:00', '2023-05-01 10:00:00'),
(35, 35, 35, '2023-05-02 09:00:00', '2023-05-02 11:00:00'),
(36, 36, 36, '2023-05-03 11:30:00', '2023-05-03 13:30:00'),
(37, 37, 37, '2023-05-04 13:00:00', '2023-05-04 15:00:00'),
(38, 38, 38, '2023-05-05 15:30:00', '2023-05-05 17:30:00'),
(39, 39, 39, '2023-05-08 07:00:00', '2023-05-08 09:00:00'),
(40, 40, 40, '2023-05-09 10:00:00', '2023-05-09 12:00:00'),
(41, 41, 41, '2023-05-10 12:30:00', '2023-05-10 14:30:00'),
(42, 42, 42, '2023-05-11 14:00:00', '2023-05-11 16:00:00'),
(43, 43, 43, '2023-05-12 16:30:00', '2023-05-12 18:30:00'),
(44, 44, 44, '2023-05-15 08:30:00', '2023-05-15 10:30:00'),
(45, 45, 45, '2023-05-16 11:00:00', '2023-05-16 13:00:00'),
(46, 46, 46, '2023-05-17 13:30:00', '2023-05-17 15:30:00'),
(47, 47, 47, '2023-05-18 15:00:00', '2023-05-18 17:00:00'),
(48, 48, 48, '2023-05-19 07:30:00', '2023-05-19 09:30:00'),
(49, 49, 49, '2023-05-22 10:00:00', '2023-05-22 12:00:00'),
(50, 50, 50, '2023-05-23 12:30:00', '2023-05-23 14:30:00');
Sistema de Gerenciamento Acadêmico UniverSem
📖 Descrição do Projeto
O Sistema de Gerenciamento Acadêmico UniverSem é uma solução completa desenvolvida para automatizar e otimizar processos acadêmicos e administrativos de instituições de ensino superior. O sistema oferece gestão integrada de alunos, cursos, professores, disciplinas, turmas, aulas e finanças, substituindo processos manuais por uma plataforma centralizada e eficiente.

🗃️ Estrutura do Banco de Dados
Principais Tabelas
Aluno: Gerencia informações dos estudantes (CPF, nome, naturalidade, data de nascimento, contato)

Curso: Cadastro dos cursos oferecidos (nome, tipo de graduação)

Professor: Dados dos docentes (nome, email, especialidade)

Disciplina: Componentes curriculares dos cursos

Turma: Turmas por curso (período, turno)

Aula: Agenda de aulas (data/hora, professor, turma, disciplina)

Inscricao_curso: Vincula alunos aos cursos

Pagamento: Controle financeiro das matrículas

Nota_fiscal: Registro de documentos fiscais

Relacionamentos Principais
Um aluno pode ter várias matrículas em cursos diferentes

Cada curso possui múltiplas disciplinas

Turmas são vinculadas a cursos específicos

Aulas são agendadas para turmas com professores específicos

Pagamentos estão vinculados às matrículas

⚙️ Funcionalidades Avançadas
Consultas SQL Implementadas
Filtros com operadores WHERE

Agrupamentos e ordenações (GROUP BY, ORDER BY)

Operadores aritméticos e funções de data

Operadores lógicos e de comparação

Junções (INNER, LEFT, RIGHT JOIN)

Subconsultas e uniões

Views para relatórios personalizados

Stored Procedures
AdicionarNovaAula: Procedure completa para agendamento de aulas com validações de:

Existência de turma, disciplina e professor

Conflito de horários por turma

Conflito de horários por professor

Validação temporal (início < fim)

Triggers de Validação
ValidarDatasAulaInsert: Impede inserção de aulas com data/hora de início posterior ao término

ValidarDatasAulaUpdate: Valida atualizações para manter consistência temporal

🚀 Como Instalar e Usar
Pré-requisitos
MySQL Server 8.0 ou superior

MySQL Workbench ou cliente similar

Instalação
Clone o repositório:

bash
git clone [url-do-repositorio]
Execute o script de criação do banco:

sql
SOURCE Schema_sistema_universidade_final.sql
Importe os dados iniciais:

sql
SOURCE Backup_database_sistema_universidade.sql
Configure procedures e triggers:

sql
SOURCE Stored_proccedure_sistema_universidade_final.sql
SOURCE Trigger_validacao_insert_e_update.sql
Utilização Básica
Para agendar uma nova aula:

sql
CALL AdicionarNovaAula(1, 1, 1, '2023-06-01 08:00:00', '2023-06-01 10:00:00');
Para consultar alunos ativos por curso:

sql
SELECT * FROM vw_cursos_quantidade_alunos;
📊 Principais Relatórios e Views
Vw_Grade_horaria: Grade completa de horários

Vw_Alunos_Curso: Relação de alunos por curso

vw_professores_disciplinas: Professores e suas disciplinas

vw_pagamentos_pendentes: Controle de inadimplência

vw_cursos_quantidade_alunos: Estatísticas de matrículas

👥 Autores
Vinícius Tomaz Bonilha

Guilherme Santos Ismerio

UniverSem - Transformando a gestão educacional através da tecnologia!

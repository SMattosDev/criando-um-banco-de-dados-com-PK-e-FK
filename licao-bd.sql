CREATE DATABASE db_aula_pk_fk;
USE db_aula_pk_fk;

CREATE TABLE cursos(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    descricao VARCHAR (255)
    
);

CREATE TABLE alunos(
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR (100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    id_curso INT,
    telefone VARCHAR (20),
    CONSTRAINT fk_aluno_curso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE materias(
	materia_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    id_curso INT,
    professor VARCHAR (100),
    carga_horaria INT NOT NULL,
    CONSTRAINT fk_materias_cursos FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO
	cursos (nome, descricao)
VALUES
('Desenvolvimento de Sistemas', 'Curso voltado para desenvolvimento de software e boas práticas'),
('Administração', 'Curso sobre análise e administração de empresas'),
('nutrição', 'curso sobre nutrologia, cadeia alimentar e saúde humana.');

INSERT INTO
	materias (nome, id_curso, professor, carga_horaria)
VALUES
	('BD II', 1, 'Cleiton da Silva', 60),
    ('Gestão e Adm de Empresas I', 2, 'Thiago Pascoto', 50),
    ('Cálculos de Biopedância', 3, 'Miriam Machado', 55);

INSERT INTO
	alunos (nome, idade, email, data_nascimento, id_curso, telefone)
VALUES
('Geovanna Passos', 23, 'geo.pass@etec.gov.br', '2001-05-10', 1, '(11) 91234-5678'),
('Michael Jackson', 25, 'michael.jackson@etec.gov.br', '1999-08-22', 2, '(21) 9876-5432'),
('Renata Fan',24, 're.nata@etec.gov.br', '200-12-03', 3,'(31) 98765-4321');

SELECT * FROM alunos;
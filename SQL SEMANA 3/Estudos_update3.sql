--DIA 02/09/2026

--LETS GO TREINO 12:10

--ESTUDOS PPT 6 INSERT UPDATE DELETE


--Tabelas de estudos2 **IMPORTE VERIFICAR A ORDEM DE CRIAÇÃO DE TABELAS**

CREATE TABLE T_UNV_ALUNO (
 id_aluno INT PRIMARY KEY,
 nm_aluno VARCHAR2(100),
 dt_nascimento DATE,
 cpf NUMBER(11),
 sexo CHAR(1)
 );

INSERT INTO T_UNV_ALUNO VALUES (1, 'Glenda', DATE '2004-08-15' , 23386481653, 'M');


CREATE TABLE T_UNV_CURSO (
 id_curso INT PRIMARY KEY, 
 nm_curso VARCHAR2(100)
);


CREATE TABLE T_UNV_TURMA (
 id_turma INT PRIMARY KEY,
 data_criacao DATE,
 nm_turma VARCHAR2(100),
 situacao CHAR(1),
 t_unv_curso_id_curso INT,
 CONSTRAINT T_UNV_TURMA_T_UNV_CURSO_FK 
 FOREIGN KEY (t_unv_curso_id_curso) 
 REFERENCES T_UNV_CURSO (id_curso)
);



CREATE TABLE T_UNV_ALUNO_TURMA (
 t_unv_aluno_id_aluno INT PRIMARY KEY,
 t_unv_turma_id_turma INT,
 CONSTRAINT T_UNV_ALUNO_TURMA_T_UNV_ALUNO_FK FOREIGN KEY (t_unv_aluno_id_aluno)
 REFERENCES T_UNV_ALUNO (id_aluno),
 CONSTRAINT T_UNV_ALUNO_TURMA_T_UNV_TURMA_FK FOREIGN KEY (t_unv_turma_id_turma)
 REFERENCES T_UNV_TURMA (id_turma)
);
--TABLE DE 23/08/2026

CREATE TABLE T_UNV_PROFESSOR(
 id_professor INT PRIMARY KEY,
 nm_professor VARCHAR(100)
);

INSERT INTO T_UNV_PROFESSOR VALUES (1, 'Carlos');

CREATE TABLE T_UNV_PROFESSOR_TURMA(
 id_turma_professor INT PRIMARY KEY,
 t_unv_professor_id_professor,
 t_unv_turma_id_turma INT,
 CONSTRAINT T_UNV_ALUNO_TURMA_T_UNV_PROFESSOR_FK FOREIGN KEY (t_unv_professor_id_professor)
 REFERENCES T_UNV_PROFESSOR (id_professor),
 CONSTRAINT T_UNV_TURMA_ID_TURMA_FK FOREIGN KEY (t_unv_turma_id_turma)
 REFERENCES T_UNV_TURMA (id_turma)
);


CREATE TABLE T_UNV_DISCIPLINA (
 id_disciplina INT PRIMARY KEY,
 nm_disciplina VARCHAR2(155),
 ementa VARCHAR2(155),
 ref_bibliografica VARCHAR2(155),
 metodologia VARCHAR2 (155),
 carga_horaria INT,
 modalidade VARCHAR2(155),
 t_unv_curso_id_curso INT,
 CONSTRAINT T_UNV_DISCIPLINA_T_UNV_CURSO_FK FOREIGN KEY (t_unv_curso_id_curso)
 REFERENCES T_UNV_CURSO(id_curso)
);

CREATE TABLE T_UNV_PROFESSOR_DISCIPLINA (
 id_professor_disciplina INT PRIMARY KEY,
 t_unv_professor_id_professor INT,
 t_unv_disciplina_id_disciplina INT,
 CONSTRAINT T_UNV_PROFESSOR_DISCIPLINA_T_PROFESSOR_FK FOREIGN KEY (t_unv_professor_id_professor)
 REFERENCES T_UNV_PROFESSOR (id_professor),
 CONSTRAINT T_UNV_PROFESSOR_DISCIPLINA_T_DISCIPLINA_FK FOREIGN KEY (t_unv_disciplina_id_disciplina)
 REFERENCES T_UNV_DISCIPLINA(id_disciplina)
);

--12:20
--Exercicios de UPDATE E DELETE 


--1.Exclua o aluno com id_aluno = 1.

DELETE T_UNV_ALUNO
 WHERE ID_ALUNO =1;

--2.Remova o professor com id_professor = 1.ALTER
--DELETE T_UNV_PROFESSOR 
-- WHERE ID_PROFESSOR =1;
 
SELECT * FROM T_UNV_PROFESSOR;

--3.Exclua o curso com id_curso = 1.

DELETE T_UNV_CURSO 
 WHERE ID_CURSO = 1;

--PAUSA 13:00 VOLTEI 13:20

--4.Remova a turma com id_turma = 1.

DELETE FROM T_UNV_TURMA
 WHERE ID_TURMA =1;

--5.Exclua a disciplina com id_disciplina = 3.

DELETE FROM T_UNV_DISCIPLINA 
 WHERE ID_DISCIPLINA = 1;
 
--6.Remova o vínculo do aluno de código 12 na tabela T_UNV_ALUNO_TURMA.

DELETE FROM T_UNV_ALUNO_TURMA
 WHERE t_unv_aluno_id_aluno = 1; 

--7.Exclua o relacionamento entre o professor de código 7 e a disciplina de código 2.
--Em estudo AND
DELETE FROM T_UNV_PROFESSOR_DISCIPLINA
 WHERE T_UNV_PROFESSOR_ID_PROFESSOR = 7
 AND T_UNV_DISCIPLINA_ID_DISCIPLINA = 2;

--8.Remova o vínculo entre o professor de código 5 e a turma de código 1.
--Em estudo AND
DELETE FROM T_UNV_PROFESSOR_TURMA
 WHERE T_UNV_PROFESSOR_ID_PROFESSOR = 5
 AND T_UNV_TURMA_ID_TURMA = 1;

--9.Exclua todos os alunos do sexo 'M'.

DELETE FROM T_UNV_ALUNO
 WHERE sexo = 'M';

--SELECT * FROM T_UNV_ALUNO; 

--10.Remova todas as disciplinas cuja modalidade seja "EAD".

DELETE FROM T_UNV_DISCIPLINA
 WHERE modalidade = 'EAD';

--11.Exclua todas as turmas com situação 'I' (Inativa).

DELETE FROM T_UNV_TURMA 
 WHERE situacao = 'I';

--12.Remova todos os professores cujo nome comece por "Carlos".

DELETE FROM T_UNV_PROFESSOR
 WHERE nm_professor = 'Carlos';

-- FEITO 14:00
-- VOLTA 15:50

--13.Exclua todos os alunos nascidos antes de 01/01/2000.

--Em estudo <
DELETE FROM T_UNV_ALUNO
 WHERE DT_NASCIMENTO < DATE '2000-01-01';

--14.Remova todas as disciplinas com carga horária menor que 40 horas.

DELETE FROM T_UNV_DISCIPLINA 
 WHERE CARGA_HORARIA < 40;

--15.Exclua todos os registros da tabela T_UNV_PROFESSOR_DISCPLINA relacionados ao professor de código 10.

DELETE FROM T_UNV_PROFESSOR_DISCIPLINA 
 WHERE ID_PROFESSOR_DISCIPLINA = 10;

--FIM 16:10
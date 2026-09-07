--ESTUDOSBANCODEDADOS2


--DIA 24/08/2026

--LETS GO TREINO 12:54


CREATE TABLE T_UNV_ALUNO (
  id_aluno INT PRIMARY KEY,
  nm_aluno VARCHAR2(100),
  dt_nascimento DATE,
  cpf NUMBER(11),
  sexo CHAR(1)
  );

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
CREATE TABLE T_UNV_PROFESSOR(
    id_professor INT PRIMARY KEY,
    nm_professor VARCHAR(100)
);


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
--pausa era 13:30 ate 13:40
--das 13:40 até as 13:56

--16:40
CREATE TABLE T_UNV_PROFESSOR_DISCIPLINA (
    id_professor_disciplina INT PRIMARY KEY,
    t_unv_professor_id_professor INT,
    t_unv_disciplina_id_disciplina INT,
    CONSTRAINT T_UNV_PROFESSOR_DISCIPLINA_T_PROFESSOR_FK FOREIGN KEY (t_unv_professor_id_professor)
        REFERENCES T_UNV_PROFESSOR (id_professor),
    CONSTRAINT T_UNV_PROFESSOR_DISCIPLINA_T_DISCIPLINA_FK FOREIGN KEY (t_unv_disciplina_id_disciplina)
        REFERENCES T_UNV_DISCIPLINA(id_disciplina)
);



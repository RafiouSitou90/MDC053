/**
 * Resposta: i
 *
 * Comando executado: INSERT INTO turma(id_turma, num_periodo, id_professor) VALUES(3, 20201, 3);
 * Resultado obtido: Affected rows: 1
 */
INSERT INTO turma(id_turma, num_periodo, id_professor) VALUES(3, 20201, 3);


/**
 * Resposta: ii
 *
 * Comando executado: INSERT INTO turma(id_turma, num_periodo, id_disciplina) VALUES(3, 20202, 1);
 * Resultado obtido: 1062 - Duplicate of field '3' for the key 'PRIMARY'
 */
INSERT INTO turma(id_turma, num_periodo, id_disciplina) VALUES(3, 20202, 1);

/**
 * Resposta: iii
 *
 * Comando executado: UPDATE disciplina SET id_disciplina = 3 WHERE nome_disciplina = 'BANCO DE DADOS I';
 * Resultado obtido: Affected rows: 1
 */
UPDATE disciplina SET id_disciplina = 3 WHERE nome_disciplina = 'BANCO DE DADOS I';

/**
 * Resposta: iv
 *
 * Comando executado: UPDATE historico SET num_faltas = 0 WHERE id_aluno = 1 AND id_turma = 1;
 * Resultado obtido: Affected rows: 1
 */
UPDATE historico SET num_faltas = 0 WHERE id_aluno = 1 AND id_turma = 1;

/**
 * Resposta: v
 *
 * Comando executado: DELETE FROM aluno WHERE nome_aluno ='PEDRO';
 * Resultado obtido: Affected rows: 1
 */
DELETE FROM aluno WHERE nome_aluno = 'PEDRO';

/**
 * Resposta: vi
 *
 * Comando executado: DELETE FROM disciplina WHERE nome_disciplina = 'BANCO DE DADOS II';
 * Resultado obtido: Affected rows: 1
 */
DELETE FROM disciplina WHERE nome_disciplina = 'BANCO DE DADOS II';

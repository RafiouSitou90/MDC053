CREATE TABLE `aluno` (
    `id_aluno`              INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_aluno`            VARCHAR(100) NOT NULL,
    `email_aluno`           VARCHAR(100) DEFAULT NULL,
    `fone_contato`          CHAR(14)     DEFAULT NULL,
    PRIMARY KEY (`id_aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `curso` (
    `id_curso`              INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_curso`            VARCHAR(100) NOT NULL,
    `carga_horaria`         SMALLINT(6)  DEFAULT NULL,
    PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `professor` (
    `id_professor`          INT(11)      NOT NULL AUTO_INCREMENT,
    `nome_professor`        VARCHAR(100) NOT NULL,
    `titulacao_professor`   CHAR(3)      DEFAULT NULL,
    PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `turma` (
    `id_turma`              INT(11)      NOT NULL AUTO_INCREMENT,
    `id_curso`              INT(11)      NOT NULL,
    `id_professor`          INT(11)      NOT NULL,
    `id_aluno`              INT(11)      NOT NULL,
    `data_matricula`        DATE         NOT NULL,
    PRIMARY KEY (`id_turma`),
    KEY `id_curso` (`id_curso`),
    KEY `id_professor` (`id_professor`),
    KEY `id_aluno` (`id_aluno`),
    CONSTRAINT `turma_FK` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
    CONSTRAINT `turma_FK_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
    CONSTRAINT `turma_FK_2` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

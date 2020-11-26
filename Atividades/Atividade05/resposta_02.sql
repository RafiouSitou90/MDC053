CREATE TABLE `pessoa` (
    `id`          INT(11)      NOT NULL,
    `nome`        VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fisica` (
    `id`          INT(11)      NOT NULL,
    `sexo`        CHAR(1)      DEFAULT NULL,
    `cpf`         CHAR(11)     NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)     USING BTREE,
    CONSTRAINT `fisica_FK` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `juridica` (
    `id`          INT(11)      NOT NULL,
    `sexo`        CHAR(1)      DEFAULT NULL,
    `cnpj`        CHAR(14)     NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)     USING BTREE,
    CONSTRAINT `juridica_FK` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `endereco` (
    `id`         INT(11)      NOT NULL,
    `logradouro` VARCHAR(100) DEFAULT NULL,
    `numero`     INT(11)      DEFAULT 0,
    `cep`        CHAR(0)      NOT NULL,
    `cidade`     VARCHAR(30)  DEFAULT NULL,
    `uf`         CHAR(2)      NOT NULL,
    UNIQUE KEY `id` (`id`)    USING BTREE,
    CONSTRAINT `endereco_FK` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

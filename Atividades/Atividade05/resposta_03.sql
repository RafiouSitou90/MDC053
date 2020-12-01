CREATE TABLE `departamento` (
    `codigo`          INT(11)      NOT NULL,
    `nome`            VARCHAR(100) NOT NULL,
    PRIMARY KEY (`codigo`),
    UNIQUE KEY `codigo` (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `funcionario` (
    `matricula`       INT(11)      NOT NULL,
    `nome`            VARCHAR(100) NOT NULL,
    `salario`         DECIMAL(10)  NOT NULL,
    `gerente`         INT(11)      DEFAULT NULL,
    `departamento`    INT(11)      NOT NULL,
    PRIMARY KEY (`matricula`),
    UNIQUE KEY `matricula` (`matricula`) USING HASH,
    KEY `departamento` (`departamento`) USING BTREE,
    KEY `funcionario_FK_1` (`gerente`),
    CONSTRAINT `funcionario_FK` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`codigo`),
    CONSTRAINT `funcionario_FK_1` FOREIGN KEY (`gerente`) REFERENCES `funcionario` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

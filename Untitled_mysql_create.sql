CREATE TABLE `OrdemServiço` (
	`id_OS` INT NOT NULL AUTO_INCREMENT,
	`id_Cliente` INT(45) NOT NULL AUTO_INCREMENT,
	`Equipe` varchar(45) NOT NULL AUTO_INCREMENT,
	`Data_Emissao` DATETIME(08) NOT NULL AUTO_INCREMENT,
	`Tipo de serviço` varchar(45) NOT NULL AUTO_INCREMENT,
	`Valor Peças` varchar(45) NOT NULL AUTO_INCREMENT,
	`Valor MO` varchar(45) NOT NULL AUTO_INCREMENT,
	`Status` varchar(45) NOT NULL AUTO_INCREMENT,
	`Data_Conclusão` DATETIME(08) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_OS`)
);

CREATE TABLE `Equipe` (
	`id_Funcionario` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`Endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`Especialidade` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_Funcionario`)
);

CREATE TABLE `Cliente` (
	`id_Cliente` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(45) NOT NULL AUTO_INCREMENT,
	`Endereço` varchar(45) NOT NULL AUTO_INCREMENT,
	`Tipo de serviço` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_Cliente`)
);

CREATE TABLE `MaodeObra` (
	`id_MO` INT(45) NOT NULL AUTO_INCREMENT,
	`Valor_MO` varchar(45) NOT NULL AUTO_INCREMENT,
	`Tipo de serviço` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_MO`)
);

CREATE TABLE `Peças` (
	`id_Peça` INT NOT NULL AUTO_INCREMENT,
	`Valor Peça` varchar(45) NOT NULL AUTO_INCREMENT,
	`Tipo de serviço` varchar(45) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id_Peça`)
);

CREATE TABLE `InicioOS` (
	`id_Clnt` INT NOT NULL,
	`id_Equipe` INT NOT NULL AUTO_INCREMENT,
	`Tipo de serviço` varchar(45) NOT NULL AUTO_INCREMENT
);

CREATE TABLE `ClienteAceite` (
	`id_ClienteAceite` INT NOT NULL AUTO_INCREMENT,
	`id_PeçaAceite` INT NOT NULL AUTO_INCREMENT,
	`id_MOAceite` varchar(45) NOT NULL,
	`Valor Peça` varchar(45) NOT NULL,
	`Valor_MO` varchar(45) NOT NULL
);

ALTER TABLE `OrdemServiço` ADD CONSTRAINT `OrdemServiço_fk0` FOREIGN KEY (`id_Cliente`) REFERENCES `InicioOS`(`id_Clnt`);

ALTER TABLE `OrdemServiço` ADD CONSTRAINT `OrdemServiço_fk1` FOREIGN KEY (`Equipe`) REFERENCES `InicioOS`(`id_Equipe`);

ALTER TABLE `InicioOS` ADD CONSTRAINT `InicioOS_fk0` FOREIGN KEY (`id_Clnt`) REFERENCES `Cliente`(`id_Cliente`);

ALTER TABLE `InicioOS` ADD CONSTRAINT `InicioOS_fk1` FOREIGN KEY (`id_Equipe`) REFERENCES `Equipe`(`id_Funcionario`);

ALTER TABLE `ClienteAceite` ADD CONSTRAINT `ClienteAceite_fk0` FOREIGN KEY (`id_ClienteAceite`) REFERENCES `OrdemServiço`(`id_Cliente`);

ALTER TABLE `ClienteAceite` ADD CONSTRAINT `ClienteAceite_fk1` FOREIGN KEY (`id_PeçaAceite`) REFERENCES `Peças`(`id_Peça`);

ALTER TABLE `ClienteAceite` ADD CONSTRAINT `ClienteAceite_fk2` FOREIGN KEY (`id_MOAceite`) REFERENCES `MaodeObra`(`id_MO`);









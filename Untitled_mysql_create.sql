CREATE TABLE `Usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagem` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`post` varchar(1000) NOT NULL,
	`status_post` BOOLEAN NOT NULL,
	`data` DATETIME NOT NULL,
	`id_categoria` INT NOT NULL,
	`id_usuario` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categoria` (
	`id` INT NOT NULL,
	`nome_categoria` varchar(255) NOT NULL,
	`descricao_categoria` varchar(255) NOT NULL,
	`proposito` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk0` FOREIGN KEY (`id_categoria`) REFERENCES `Categoria`(`id`);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario`(`id`);


CREATE TABLE `temas` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`descricao` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id_postagem` INT NOT NULL AUTO_INCREMENT,
	`titulo` VARCHAR(255),
	`texto` VARCHAR(1000),
	`data` TIMESTAMP,
	`tema_id` INT NOT NULL,
	`usuario_id` INT NOT NULL,
	PRIMARY KEY (`id_postagem`,`tema_id`,`usuario_id`)
);

CREATE TABLE `Usuarios` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) AUTO_INCREMENT,
	`usuario` VARCHAR(255) AUTO_INCREMENT,
	`senha` VARCHAR(255) AUTO_INCREMENT,
	PRIMARY KEY (`id`)
);

ALTER TABLE `temas` ADD CONSTRAINT `temas_fk0` FOREIGN KEY (`id`) REFERENCES `Postagens`(`tema_id`);

ALTER TABLE `Usuarios` ADD CONSTRAINT `Usuarios_fk0` FOREIGN KEY (`id`) REFERENCES `Postagens`(`usuario_id`);





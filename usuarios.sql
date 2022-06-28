CREATE TABLE IF NOT EXISTS `usuarios` (
      `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
      `nome` VARCHAR( 50 ) NOT NULL ,
      `usuario` VARCHAR( 25 ) NOT NULL ,
      `senha` VARCHAR( 40 ) NOT NULL ,
      `email` VARCHAR( 100 ) NOT NULL ,
      `nivel` INT(1) UNSIGNED NOT NULL DEFAULT '1',
      `ativo` BOOL NOT NULL DEFAULT '1',
      `cadastro` DATETIME NOT NULL ,
      PRIMARY KEY (`id`),
      UNIQUE KEY `usuario` (`usuario`),
      KEY `nivel` (`nivel`)
  ) ENGINE=innoDB;

  INSERT INTO `usuarios` VALUES (NULL, 'Usuário Teste', 'demo', SHA1( 'demo'), 'usuario@demo.com.br', 1, 1, NOW( ));
  INSERT INTO `usuarios` VALUES (NULL, 'Administrador Teste', 'admin', SHA1('admin' ), 'admin@demo.com.br', 2, 1, NOW( ));

CREATE TABLE IF NOT EXISTS produtos(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nome` TEXT NOT NULL,
    `descricao` TEXT NOT NULL,
    `imagem`(255-) VARCHAR NOT NULL,
    `preco` VARCHAR(6) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=innoDB;

  
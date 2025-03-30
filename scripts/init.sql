CREATE SEQUENCE usu_id MINVALUE 1 INCREMENT 1;

CREATE TABLE usuario (
  usu_id    INTEGER    NOT NULL    DEFAULT Nextval('usu_id'),
  usu_login VARCHAR(100)    NOT NULL,
  usu_senha VARCHAR(128)    NOT NULL,
     PRIMARY KEY ( usu_id ));

-- password: admin
INSERT INTO usuario (usu_login, usu_senha) VALUES ('admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec');

CREATE SEQUENCE pes_id MINVALUE 1 INCREMENT 1;

CREATE TABLE pessoa (
  pes_id              INTEGER    NOT NULL    DEFAULT Nextval('pes_id'),
  pes_nome            VARCHAR(200)    NOT NULL,
  pes_data_nascimento DATE,
  pes_sexo            VARCHAR(9),
  pes_mae             VARCHAR(200),
  pes_pai             VARCHAR(200),
     PRIMARY KEY ( pes_id ));

INSERT INTO pessoa (pes_nome, pes_data_nascimento, pes_sexo, pes_mae, pes_pai) VALUES
    ('João Silva', '1985-01-15', 'Masculino', 'Maria Silva', 'Carlos Silva'),
    ('Maria Oliveira', '1990-03-22', 'Feminino', 'Ana Oliveira', 'José Oliveira'),
    ('Pedro Santos', '1978-07-10', 'Masculino', 'Clara Santos', 'Roberto Santos'),
    ('Ana Costa', '1982-11-05', 'Feminino', 'Helena Costa', 'Paulo Costa'),
    ('Lucas Almeida', '1995-06-18', 'Masculino', 'Patrícia Almeida', 'Fernando Almeida'),
    ('Mariana Souza', '1988-09-12', 'Feminino', 'Laura Souza', 'Ricardo Souza'),
    ('Gabriel Lima', '1992-02-28', 'Masculino', 'Sofia Lima', 'André Lima'),
    ('Isabela Rocha', '1997-12-01', 'Feminino', 'Juliana Rocha', 'Eduardo Rocha'),
    ('Felipe Martins', '1980-05-20', 'Masculino', 'Renata Martins', 'Marcelo Martins'),
    ('Carolina Ferreira', '1983-08-30', 'Feminino', 'Bianca Ferreira', 'Rafael Ferreira'),
    ('Bruno Mendes', '1991-04-14', 'Masculino', 'Camila Mendes', 'Gustavo Mendes'),
    ('Larissa Barbosa', '1987-10-25', 'Feminino', 'Fernanda Barbosa', 'Diego Barbosa'),
    ('Thiago Ribeiro', '1993-01-07', 'Masculino', 'Adriana Ribeiro', 'Leandro Ribeiro'),
    ('Beatriz Cardoso', '1996-03-19', 'Feminino', 'Viviane Cardoso', 'Rodrigo Cardoso'),
    ('Rafael Pereira', '1984-07-23', 'Masculino', 'Tatiana Pereira', 'Alexandre Pereira'),
    ('Juliana Nunes', '1989-11-11', 'Feminino', 'Mônica Nunes', 'Fábio Nunes'),
    ('Vinícius Carvalho', '1994-02-05', 'Masculino', 'Cristina Carvalho', 'Henrique Carvalho'),
    ('Camila Gomes', '1986-06-29', 'Feminino', 'Regina Gomes', 'Maurício Gomes'),
    ('André Araújo', '1981-09-17', 'Masculino', 'Lúcia Araújo', 'Sérgio Araújo'),
    ('Fernanda Monteiro', '1998-12-08', 'Feminino', 'Débora Monteiro', 'Cláudio Monteiro'),
    ('Ricardo Batista', '1979-04-03', 'Masculino', 'Glória Batista', 'Antônio Batista'),
    ('Patrícia Teixeira', '1985-08-15', 'Feminino', 'Márcia Teixeira', 'João Teixeira'),
    ('Eduardo Farias', '1990-01-20', 'Masculino', 'Célia Farias', 'Francisco Farias'),
    ('Sabrina Lopes', '1992-05-27', 'Feminino', 'Rita Lopes', 'Pedro Lopes'),
    ('Marcelo Vieira', '1983-10-09', 'Masculino', 'Teresa Vieira', 'Luiz Vieira'),
    ('Renata Cunha', '1987-03-13', 'Feminino', 'Claudia Cunha', 'Jorge Cunha'),
    ('Diego Moreira', '1991-07-21', 'Masculino', 'Eliane Moreira', 'Alberto Moreira'),
    ('Tatiane Silva', '1995-11-30', 'Feminino', 'Sandra Silva', 'Marcos Silva'),
    ('Leandro Costa', '1980-02-18', 'Masculino', 'Denise Costa', 'Rogério Costa'),
    ('Vanessa Almeida', '1984-06-06', 'Feminino', 'Luciana Almeida', 'Gilberto Almeida'),
    ('Rodrigo Santos', '1988-09-25', 'Masculino', 'Carla Santos', 'Renato Santos'),
    ('Aline Souza', '1993-12-15', 'Feminino', 'Elaine Souza', 'César Souza'),
    ('Gustavo Lima', '1977-03-08', 'Masculino', 'Marta Lima', 'Osvaldo Lima'),
    ('Natália Rocha', '1982-07-19', 'Feminino', 'Verônica Rocha', 'Arnaldo Rocha'),
    ('Fábio Martins', '1986-11-02', 'Masculino', 'Rosana Martins', 'Elias Martins'),
    ('Carla Ferreira', '1990-04-28', 'Feminino', 'Isabel Ferreira', 'Vitor Ferreira'),
    ('Bruna Mendes', '1994-08-12', 'Feminino', 'Clarice Mendes', 'Samuel Mendes'),
    ('Rogério Barbosa', '1981-01-30', 'Masculino', 'Irene Barbosa', 'Nelson Barbosa'),
    ('Débora Ribeiro', '1985-05-14', 'Feminino', 'Silvana Ribeiro', 'Hugo Ribeiro'),
    ('Alexandre Cardoso', '1989-09-03', 'Masculino', 'Marina Cardoso', 'Otávio Cardoso'),
    ('Viviane Pereira', '1993-12-22', 'Feminino', 'Regiane Pereira', 'Daniel Pereira'),
    ('Henrique Nunes', '1978-02-11', 'Masculino', 'Catarina Nunes', 'Vicente Nunes'),
    ('Cristina Carvalho', '1983-06-26', 'Feminino', 'Adriana Carvalho', 'Raimundo Carvalho'),
    ('Maurício Gomes', '1987-10-18', 'Masculino', 'Lilian Gomes', 'Emanuel Gomes'),
    ('Lúcia Araújo', '1991-03-07', 'Feminino', 'Sônia Araújo', 'Félix Araújo'),
    ('Cláudio Monteiro', '1995-07-15', 'Masculino', 'Regina Monteiro', 'Alfredo Monteiro'),
    ('Glória Batista', '1979-11-09', 'Feminino', 'Cecília Batista', 'Júlio Batista'),
    ('Márcia Teixeira', '1984-02-25', 'Feminino', 'Angela Teixeira', 'Maurício Teixeira'),
    ('Paulo Henrique', '1990-10-10', 'Masculino', 'Mariana Henrique', 'Carlos Henrique'),
    ('Sofia Almeida', '1995-05-05', 'Feminino', 'Patrícia Almeida', 'Fernando Almeida');

CREATE SEQUENCE unid_id MINVALUE 1 INCREMENT 1;

CREATE TABLE unidade (
  unid_id    INTEGER    NOT NULL    DEFAULT Nextval('unid_id'),
  unid_nome  VARCHAR(200)    NOT NULL,
  unid_sigla VARCHAR(20)    NOT NULL,
     PRIMARY KEY ( unid_id ));

INSERT INTO unidade (unid_nome, unid_sigla) VALUES ('Secretaria de Educação', 'SEDUC');
INSERT INTO unidade (unid_nome, unid_sigla) VALUES ('Secretaria de Saúde', 'SESA');
INSERT INTO unidade (unid_nome, unid_sigla) VALUES ('Secretaria de Segurança Pública', 'SSP');

CREATE SEQUENCE cid_id MINVALUE 1 INCREMENT 1;

CREATE TABLE cidade (
  cid_id   INTEGER    NOT NULL    DEFAULT Nextval('cid_id'),
  cid_nome VARCHAR(200)    NOT NULL,
  cid_uf   VARCHAR(2)    NOT NULL,
     PRIMARY KEY ( cid_id ));

INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Cuiabá', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Várzea Grande', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Rondonópolis', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Sinop', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Tangará da Serra', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Sorriso', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Lucas do Rio Verde', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Barra do Garças', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Cáceres', 'MT');
INSERT INTO cidade (cid_nome, cid_uf) VALUES ('Primavera do Leste', 'MT');

CREATE TABLE pessoa_endereco (
  pes_id INTEGER    NOT NULL,
  end_id INTEGER    NOT NULL,
     PRIMARY KEY ( pes_id,end_id ));

CREATE INDEX IPESSOA_ENDERECO1 ON pessoa_endereco (end_id);

ALTER TABLE pessoa_endereco
 ADD CONSTRAINT IPESSOA_ENDERECO2 FOREIGN KEY ( pes_id ) REFERENCES pessoa(pes_id);

CREATE TABLE unidade_endereco (
  unid_id INTEGER    NOT NULL,
  end_id  INTEGER    NOT NULL,
     PRIMARY KEY ( unid_id,end_id ));

CREATE INDEX IUNIDADE_ENDERECO1 ON unidade_endereco (end_id);

ALTER TABLE unidade_endereco
 ADD CONSTRAINT IUNIDADE_ENDERECO2 FOREIGN KEY ( unid_id ) REFERENCES unidade(unid_id);

CREATE SEQUENCE end_id MINVALUE 1 INCREMENT 1;

CREATE TABLE endereco (
  end_id              INTEGER    NOT NULL    DEFAULT Nextval('end_id'),
  end_tipo_logradouro VARCHAR(50)    NOT NULL,
  end_logradouro      VARCHAR(200)    NOT NULL,
  end_numero          INTEGER    NOT NULL,
  end_bairro          VARCHAR(100)    NOT NULL,
  cid_id              INTEGER    NOT NULL,
     PRIMARY KEY ( end_id ));

CREATE INDEX IENDERECO1 ON endereco (cid_id);

ALTER TABLE endereco
 ADD CONSTRAINT IENDERECO1 FOREIGN KEY ( cid_id ) REFERENCES cidade(cid_id);

INSERT INTO endereco (end_tipo_logradouro, end_logradouro, end_numero, end_bairro, cid_id) VALUES
    ('Rua', 'Avenida Mato Grosso', 101, 'Centro', 1),
    ('Rua', 'Rua Barão de Melgaço', 202, 'Centro', 1),
    ('Rua', 'Avenida Getúlio Vargas', 303, 'Centro', 1),
    ('Rua', 'Rua 13 de Junho', 404, 'Centro', 1),
    ('Rua', 'Avenida Isaac Póvoas', 505, 'Centro', 1),
    ('Rua', 'Rua General Valle', 606, 'Centro', 1),
    ('Rua', 'Avenida Tenente Coronel Duarte', 707, 'Centro', 1),
    ('Rua', 'Rua Pedro Celestino', 808, 'Centro', 1),
    ('Rua', 'Avenida Historiador Rubens de Mendonça', 909, 'Bosque da Saúde', 1),
    ('Rua', 'Rua das Orquídeas', 110, 'Jardim Cuiabá', 1),
    ('Rua', 'Avenida das Flores', 120, 'Jardim Cuiabá', 1),
    ('Rua', 'Rua dos Lírios', 130, 'Jardim Cuiabá', 1),
    ('Rua', 'Avenida do CPA', 140, 'Morada do Ouro', 1),
    ('Rua', 'Rua das Palmeiras', 150, 'Morada do Ouro', 1),
    ('Rua', 'Avenida Miguel Sutil', 160, 'Jardim Primavera', 1),
    ('Rua', 'Rua das Acácias', 170, 'Jardim Primavera', 1),
    ('Rua', 'Avenida Fernando Corrêa da Costa', 180, 'Boa Esperança', 1),
    ('Rua', 'Rua dos Ipês', 190, 'Boa Esperança', 1),
    ('Rua', 'Avenida Beira Rio', 200, 'Praeiro', 1),
    ('Rua', 'Rua dos Jacarandás', 210, 'Praeiro', 1),
    ('Rua', 'Avenida República do Líbano', 220, 'Jardim das Américas', 1),
    ('Rua', 'Rua das Magnólias', 230, 'Jardim das Américas', 1),
    ('Rua', 'Avenida Brasília', 240, 'Jardim Imperial', 1),
    ('Rua', 'Rua das Hortênsias', 250, 'Jardim Imperial', 1),
    ('Rua', 'Avenida Mato Grosso', 260, 'Centro Sul', 1),
    ('Rua', 'Rua dos Girassóis', 270, 'Centro Sul', 1),
    ('Rua', 'Avenida Dom Bosco', 280, 'Dom Aquino', 1),
    ('Rua', 'Rua das Rosas', 290, 'Dom Aquino', 1),
    ('Rua', 'Avenida Carmindo de Campos', 300, 'Jardim Paulista', 1),
    ('Rua', 'Rua das Violetas', 310, 'Jardim Paulista', 1),
    ('Rua', 'Avenida General Mello', 320, 'Porto', 1),
    ('Rua', 'Rua das Azaleias', 330, 'Porto', 1),
    ('Rua', 'Avenida Senador Metello', 340, 'Jardim Leblon', 1),
    ('Rua', 'Rua das Tulipas', 350, 'Jardim Leblon', 1),
    ('Rua', 'Avenida Rubens de Mendonça', 360, 'Bosque da Saúde', 1),
    ('Rua', 'Rua das Dalias', 370, 'Bosque da Saúde', 1),
    ('Rua', 'Avenida do CPA', 380, 'Morada do Ouro', 1),
    ('Rua', 'Rua das Camélias', 390, 'Morada do Ouro', 1),
    ('Rua', 'Avenida Fernando Corrêa', 400, 'Boa Esperança', 1),
    ('Rua', 'Rua das Begônias', 410, 'Boa Esperança', 1),
    ('Rua', 'Avenida Beira Rio', 420, 'Praeiro', 1),
    ('Rua', 'Rua das Petúnias', 430, 'Praeiro', 1),
    ('Rua', 'Avenida República do Líbano', 440, 'Jardim das Américas', 1),
    ('Rua', 'Rua das Gardênias', 450, 'Jardim das Américas', 1),
    ('Rua', 'Avenida Brasília', 460, 'Jardim Imperial', 1),
    ('Rua', 'Rua das Margaridas', 470, 'Jardim Imperial', 1),
    ('Rua', 'Avenida Mato Grosso', 480, 'Centro Sul', 1),
    ('Rua', 'Rua das Bromélias', 490, 'Centro Sul', 1),
    ('Rua', 'Avenida Dom Bosco', 500, 'Dom Aquino', 1),
    ('Rua', 'Rua das Amendoeiras', 510, 'Dom Aquino', 1),
    ('Rua', 'Avenida Carmindo de Campos', 520, 'Jardim Paulista', 1);

INSERT INTO pessoa_endereco (pes_id, end_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29),
    (30, 30),
    (31, 31),
    (32, 32),
    (33, 33),
    (34, 34),
    (35, 35),
    (36, 36),
    (37, 37),
    (38, 38),
    (39, 39),
    (40, 40),
    (41, 41),
    (42, 42),
    (43, 43),
    (44, 44),
    (45, 45),
    (46, 46),
    (47, 47),
    (48, 48),
    (49, 49),
    (50, 50);

INSERT INTO endereco (end_tipo_logradouro, end_logradouro, end_numero, end_bairro, cid_id) VALUES
    ('Avenida', 'Avenida Central', 1000, 'Centro', 1),
    ('Rua', 'Rua Principal', 2000, 'Centro', 2),
    ('Avenida', 'Avenida das Nações', 3000, 'Centro', 3);

INSERT INTO unidade_endereco (unid_id, end_id) VALUES
    (1, 51),
    (2, 52),
    (3, 53);

CREATE SEQUENCE fp_id MINVALUE 1 INCREMENT 1;

CREATE TABLE foto_pessoa (
  fp_id     INTEGER    NOT NULL    DEFAULT Nextval('fp_id'),
  pes_id    INTEGER    NOT NULL,
  fp_data   DATE    NOT NULL,
  fp_bucket VARCHAR(50)    NOT NULL,
  fp_hash   VARCHAR(50)    NOT NULL,
     PRIMARY KEY ( fp_id ));

CREATE INDEX IFOTO_PESSOA1 ON foto_pessoa (pes_id);

ALTER TABLE foto_pessoa
 ADD CONSTRAINT IFOTO_PESSOA1 FOREIGN KEY ( pes_id ) REFERENCES pessoa(pes_id);

CREATE SEQUENCE se_id MINVALUE 1 INCREMENT 1;

CREATE TABLE servidor_efetivo (
  se_id        INTEGER    NOT NULL    DEFAULT Nextval('se_id'),
  pes_id       INTEGER    NOT NULL,
  se_matricula VARCHAR(20),
     PRIMARY KEY ( se_id ));

CREATE INDEX ISERVIDOR_EFETIVO1 ON servidor_efetivo (pes_id);

ALTER TABLE servidor_efetivo
 ADD CONSTRAINT ISERVIDOR_EFETIVO1 FOREIGN KEY ( pes_id ) REFERENCES pessoa(pes_id);

INSERT INTO servidor_efetivo (pes_id, se_matricula) VALUES
    (1, 'MAT001'),
    (2, 'MAT002'),
    (3, 'MAT003'),
    (4, 'MAT004'),
    (5, 'MAT005'),
    (6, 'MAT006'),
    (7, 'MAT007'),
    (8, 'MAT008'),
    (9, 'MAT009'),
    (10, 'MAT010'),
    (11, 'MAT011'),
    (12, 'MAT012'),
    (13, 'MAT013'),
    (14, 'MAT014'),
    (15, 'MAT015'),
    (16, 'MAT016'),
    (17, 'MAT017'),
    (18, 'MAT018'),
    (19, 'MAT019'),
    (20, 'MAT020');

CREATE SEQUENCE st_id MINVALUE 1 INCREMENT 1;

CREATE TABLE servidor_temporario (
  st_id            INTEGER    NOT NULL    DEFAULT Nextval('st_id'),
  pes_id           INTEGER    NOT NULL,
  st_data_admissao DATE,
  st_data_demissao DATE,
     PRIMARY KEY ( st_id ));

CREATE INDEX ISERVIDOR_TEMPORARIO1 ON servidor_temporario (pes_id);

ALTER TABLE servidor_temporario
 ADD CONSTRAINT ISERVIDOR_TEMPORARIO1 FOREIGN KEY ( pes_id ) REFERENCES pessoa(pes_id);

INSERT INTO servidor_temporario (pes_id, st_data_admissao, st_data_demissao) VALUES
    (21, '2023-01-01', NULL),
    (22, '2023-01-02', NULL),
    (23, '2023-01-03', NULL),
    (24, '2023-01-04', NULL),
    (25, '2023-01-05', NULL),
    (26, '2023-01-06', NULL),
    (27, '2023-01-07', NULL),
    (28, '2023-01-08', NULL),
    (29, '2023-01-09', NULL),
    (30, '2023-01-10', NULL),
    (31, '2023-01-11', NULL),
    (32, '2023-01-12', NULL),
    (33, '2023-01-13', NULL),
    (34, '2023-01-14', NULL),
    (35, '2023-01-15', NULL),
    (36, '2023-01-16', NULL),
    (37, '2023-01-17', NULL),
    (38, '2023-01-18', NULL),
    (39, '2023-01-19', NULL),
    (40, '2023-01-20', NULL),
    (41, '2023-01-21', NULL),
    (42, '2023-01-22', NULL),
    (43, '2023-01-23', NULL),
    (44, '2023-01-24', NULL),
    (45, '2023-01-25', NULL),
    (46, '2023-01-26', NULL),
    (47, '2023-01-27', NULL),
    (48, '2023-01-28', NULL),
    (49, '2023-01-29', NULL),
    (50, '2023-01-30', NULL);

CREATE SEQUENCE lot_id MINVALUE 1 INCREMENT 1;

CREATE TABLE lotacao (
  lot_id           INTEGER    NOT NULL    DEFAULT Nextval('lot_id'),
  pes_id           INTEGER    NOT NULL,
  unid_id          INTEGER    NOT NULL,
  lot_data_lotacao DATE    NOT NULL,
  lot_data_remocao DATE,
  lot_portaria     VARCHAR(100),
     PRIMARY KEY ( lot_id ));

CREATE INDEX ILOTACAO1 ON lotacao (unid_id);
CREATE INDEX ILOTACAO2 ON lotacao (pes_id);

ALTER TABLE lotacao
 ADD CONSTRAINT ILOTACAO2 FOREIGN KEY ( pes_id ) REFERENCES pessoa(pes_id);

ALTER TABLE lotacao
 ADD CONSTRAINT ILOTACAO1 FOREIGN KEY ( unid_id ) REFERENCES unidade(unid_id);

INSERT INTO lotacao (pes_id, unid_id, lot_data_lotacao, lot_data_remocao, lot_portaria) VALUES
(1, 1, '2023-01-01', NULL, 'Portaria 1'),
(2, 2, '2023-01-01', NULL, 'Portaria 2'),
(3, 3, '2023-01-01', NULL, 'Portaria 3'),
(4, 1, '2023-01-01', NULL, 'Portaria 4'),
(5, 2, '2023-01-01', NULL, 'Portaria 5'),
(6, 3, '2023-01-01', NULL, 'Portaria 6'),
(7, 1, '2023-01-01', NULL, 'Portaria 7'),
(8, 2, '2023-01-01', NULL, 'Portaria 8'),
(9, 3, '2023-01-01', NULL, 'Portaria 9'),
(10, 1, '2023-01-01', NULL, 'Portaria 10'),
(11, 2, '2023-01-01', NULL, 'Portaria 11'),
(12, 3, '2023-01-01', NULL, 'Portaria 12'),
(13, 1, '2023-01-01', NULL, 'Portaria 13'),
(14, 2, '2023-01-01', NULL, 'Portaria 14'),
(15, 3, '2023-01-01', NULL, 'Portaria 15'),
(16, 1, '2023-01-01', NULL, 'Portaria 16'),
(17, 2, '2023-01-01', NULL, 'Portaria 17'),
(18, 3, '2023-01-01', NULL, 'Portaria 18'),
(19, 1, '2023-01-01', NULL, 'Portaria 19'),
(20, 2, '2023-01-01', NULL, 'Portaria 20'),
(21, 3, '2023-01-01', NULL, 'Portaria 21'),
(22, 1, '2023-01-01', NULL, 'Portaria 22'),
(23, 2, '2023-01-01', NULL, 'Portaria 23'),
(24, 3, '2023-01-01', NULL, 'Portaria 24'),
(25, 1, '2023-01-01', NULL, 'Portaria 25'),
(26, 2, '2023-01-01', NULL, 'Portaria 26'),
(27, 3, '2023-01-01', NULL, 'Portaria 27'),
(28, 1, '2023-01-01', NULL, 'Portaria 28'),
(29, 2, '2023-01-01', NULL, 'Portaria 29'),
(30, 3, '2023-01-01', NULL, 'Portaria 30'),
(31, 1, '2023-01-01', NULL, 'Portaria 31'),
(32, 2, '2023-01-01', NULL, 'Portaria 32'),
(33, 3, '2023-01-01', NULL, 'Portaria 33'),
(34, 1, '2023-01-01', NULL, 'Portaria 34'),
(35, 2, '2023-01-01', NULL, 'Portaria 35'),
(36, 3, '2023-01-01', NULL, 'Portaria 36'),
(37, 1, '2023-01-01', NULL, 'Portaria 37'),
(38, 2, '2023-01-01', NULL, 'Portaria 38'),
(39, 3, '2023-01-01', NULL, 'Portaria 39'),
(40, 1, '2023-01-01', NULL, 'Portaria 40'),
(41, 2, '2023-01-01', NULL, 'Portaria 41'),
(42, 3, '2023-01-01', NULL, 'Portaria 42'),
(43, 1, '2023-01-01', NULL, 'Portaria 43'),
(44, 2, '2023-01-01', NULL, 'Portaria 44'),
(45, 3, '2023-01-01', NULL, 'Portaria 45'),
(46, 1, '2023-01-01', NULL, 'Portaria 46'),
(47, 2, '2023-01-01', NULL, 'Portaria 47'),
(48, 3, '2023-01-01', NULL, 'Portaria 48'),
(49, 1, '2023-01-01', NULL, 'Portaria 49'),
(50, 2, '2023-01-01', NULL, 'Portaria 50');

CREATE OR REPLACE VIEW vw_servidor_efetivo_lotado AS
  SELECT
    se.se_id AS vw_serv_efe_lot_se_id,
    se.se_matricula AS vw_serv_efe_lot_se_mat,
    p.pes_id AS vw_serv_efe_lot_pes_id,
    p.pes_nome AS vw_serv_efe_lot_pes_nome,
    p.pes_data_nascimento AS vw_serv_efe_lot_pes_data_nasc,
    u.unid_id AS vw_serv_efe_lot_unid_id,
    u.unid_nome AS vw_serv_efe_lot_unid_nome
  FROM servidor_efetivo se
  INNER JOIN lotacao l ON se.pes_id = l.pes_id 
  INNER JOIN unidade u ON l.unid_id = u.unid_id 
  INNER JOIN pessoa p ON se.pes_id = p.pes_id
  WHERE l.lot_data_remocao IS NULL;
  

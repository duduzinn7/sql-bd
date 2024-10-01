create database novacasa;
use novacasa;
CREATE TABLE proprietarios (
    id_proprietario INT PRIMARY KEY,
    nome_proprietario VARCHAR(255) NOT NULL
);
create table imoveis (
id_imovel  int primary key,
endereco varchar(255) not null,
id_proprietario int,
FOREIGN KEY (id_proprietario) REFERENCES proprietarios(id_proprietario)
);
INSERT INTO proprietarios (id_proprietario, nome_proprietario) 
VALUES 
(1, 'João Silva'), 
(2, 'Maria Oliveira'), 
(3, 'Carlos Souza');
INSERT INTO imoveis (id_imovel, endereco, id_proprietario) 
VALUES 
(1, 'Rua das Flores, 123', 1), 
(2, 'Av. Paulista, 456', 2), 
(3, 'Rua do Mercado, 789', 3), 
(4, 'Rua Sem Dono, 101', NULL);
SELECT imoveis.endereco, proprietarios.nome_proprietario
FROM imoveis
LEFT JOIN proprietarios ON imoveis.id_proprietario = proprietarios.id_proprietario;

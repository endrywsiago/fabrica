CREATE DATABASE workshop;

USE workshop;

CREATE TABLE imersionista(
	nome VARCHAR(50),
    curso VARCHAR(40),
    rgm INT PRIMARY KEY,
    idade INT,
    turno VARCHAR(10),
    areas VARCHAR(50)
);
CREATE TABLE instrutor(
	nome VARCHAR(50),
    curso VARCHAR(40),
    rgm INT PRIMARY KEY,
    idade INT,
    turno VARCHAR(10),
    areas VARCHAR(50)
);
CREATE TABLE localizacao(
bloco VARCHAR(50),
sala VARCHAR(40),
estado VARCHAR (2),
rua VARCHAR(50),
id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE aula(
	assunto VARCHAR(40),
    duracao INT,
    RGM_instrutor INT,
    RGM_imersionista INT,
    id_localizacao 	INT,
    id INT,
    
    FOREIGN KEY (RGM_instrutor) REFERENCES instrutor(RGM),
    FOREIGN KEY (RGM_imersionista) REFERENCES imersionista(RGM),
    FOREIGN KEY (id_localizacao) REFERENCES localizacao(id),
    
    PRIMARY KEY(id, RGM_instrutor, RGM_imersionista, id_localizacao)
); 
##select *from imersionista;
##select * from instrutor;
##Select * from localizacao;
##select * from aula;

##DROP DATABASE workshop;





INSERT INTO instrutor
(nome,curso,RGM,idade,turno,areas)
VALUES
('Hermanmo','cc',132456,21,'manha','BD'),
('Elaine','si',132457,22,'noite','BD'),
('Daniel','cc',132458,23,'noite','BD'),
('Julio','cc',132459,21,'manha','BD');


INSERT INTO imersionista
(nome,curso,RGM,idade,turno,areas)
VALUES
('Fernando','cc',132460,21,'manha','BD'),
('Jose','si',132461,22,'noite','BD'),
('Maria','cc',132462,23,'noite','BD'),
('Pedro','cc',132463,21,'manha','BD');

INSERT INTO localizacao
(bloco,sala,estado,rua)
VALUES
('CT','LABI11','PB','RUA blablabla'),
('CT','LABI11','PB','RUA blablabla'),
('CT','LABI11','PB','RUA blablabla'),
('CT','LABI11','PB','RUA blablabla');

INSERT INTO aula
(assunto, duracao, RGM_instrutor, RGM_imersionista, id_localizacao, id)
VALUES
('SQL',4,132456,132460,1,1),
('PYTHON',4,132456,132460,1,2),
('POW BI',4,132456,132460,2,3),
('ANALISE DE DADOS',4,132456,132460,1,4),
('SQL',4,132456,132460,3,5),
('SQL',4,132456,132460,4,6);

SELECT * FROM aula;
SELECT * FROM localizacao;







   
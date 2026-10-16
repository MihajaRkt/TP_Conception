CREATE DATABASE gargotterado;
\c gargotterado;
CREATE TABLE plat(
    idPlat SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    categorie VARCHAR(50),
    prix INTEGER
);

INSERT INTO plat(nom, categorie, prix) VALUES 
('Romazava', 'Plat malagasy', 7000),
('Ravitoto sy henakisoa', 'Plat malagasy' , 8000),
('Akoho sy voanio', 'Plat malagasy' , 8500),
('Mi sao', 'Plat chinois' , 6000),
('Soupe chinoise', 'Soupe', 5000),
('Mofo gasy (les 4)', 'Dessert et goûter', 1000),
('Ranon ampango', 'Boisson', 500);

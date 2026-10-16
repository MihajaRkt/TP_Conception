CREATE TABLE categorie(
    idcategorie SERIAL PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO categorie(nom) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

alter table plat add column idcategorie INTEGER REFERENCES categorie(idcategorie);

update plat set idcategorie = 1 where categorie='Plat malagasy';
update plat set idcategorie = 2 where categorie='Plat chinois';
update plat set idcategorie = 3 where categorie='Soupe';
update plat set idcategorie = 4 where categorie='Dessert et goûter';
update plat set idcategorie = 5 where categorie='Boisson';

alter table plat alter column idcategorie SET NOT NULL;
alter table plat drop column categorie;
INSERT INTO categorie(nom) VALUES ('Plat chaud');
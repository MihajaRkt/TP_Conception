CREATE TABLE client(
    idclient SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    statut VARCHAR(50) DEFAULT 'client de passage'
);

ALTER TABLE commande ADD COLUMN idclient INTEGER REFERENCES client(idclient)

INSERT INTO client(nom) VALUES
('Jean'),
('Paul');

INSERT INTO commande (date) VALUES
('2026-10-24'),
('2026-10-04');

UPDATE commande set idclient= 1 where idcommande= 1;
UPDATE commande set idclient= 1 where idcommande= 2;

UPDATE client set statut= 'habitués' 
from commande
where commande.idclient IS NOT NULL;
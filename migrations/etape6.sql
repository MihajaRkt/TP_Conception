CREATE TABLE typepaiement(
    idtypepaiement SERIAL PRIMARY KEY,
    nom VARCHAR(50)
);

CREATE TABLE paiement(
    idpaiement SERIAL PRIMARY KEY,
    idtypepaiement INT REFERENCES typepaiement(idtypepaiement),
    idcommande INT REFERENCES commande(idcommande),
    montant INTEGER
);

INSERT INTO typepaiement(nom) VALUES
('Especes'),
('Mvola'),
('Orange Money');

INSERT INTO paiement(idtypepaiement, idcommande, montant) VALUES
(1, 1, 10000),
(2, 1, 5000),
(3, 2, 6000);

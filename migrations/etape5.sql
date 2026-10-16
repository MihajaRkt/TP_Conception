CREATE TABLE serveur(
    idServeur SERIAL PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO serveur(nom) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');


CREATE TABLE tables(
    idTable SERIAL PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO tables(nom) VALUES
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');


ALTER TABLE commande ADD COLUMN idserveur INTEGER REFERENCES serveur(idserveur);
ALTER TABLE commande ADD COLUMN idtable INTEGER REFERENCES tables(idtable);

INSERT INTO commande (date, idclient, idserveur, idtable) VALUES
('2026-12-10', NULL, 1, 1),
('2026-12-10', 1, 2, 2),
('2026-12-10', 2, 2, 3),
('2026-12-10', NULL, 2, 4),
('2026-12-10', 2, 1, 5),
('2026-12-10', NULL, 1, 6),
('2026-12-10', NULL, 1, 7);

INSERT INTO lignecommande (idcommande, idplat, qte) VALUES
(5, 4, 1),
(6, 2, 1),
(7, 1, 1),
(8, 3, 1),
(9, 7, 1),
(10, 5, 1),
(11, 4, 1);

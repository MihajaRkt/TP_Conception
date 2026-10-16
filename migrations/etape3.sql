CREATE TABLE commande(
    idcommande SERIAL PRIMARY KEY,
    date date
);

CREATE TABLE lignecommande(
    idlignecommande SERIAL PRIMARY KEY,
    idcommande INTEGER NOT NULL REFERENCES commande(idcommande),
    idplat INTEGER NOT NULL REFERENCES plat(idplat),
    qte INTEGER
);

INSERT INTO commande (date) VALUES
('2026-10-14'),
('2026-10-11');

INSERT INTO lignecommande (idcommande, idplat, qte) VALUES
(1, 4, 1),
(1, 3, 2),
(2, 1, 3),
(2, 3, 1);

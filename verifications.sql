-- Prix du plus cher au moins cher
select * from plat order by prix desc;

-- Nombre plats par catégorie
SELECT count(plat) nbplats, categorie.nom
FROM categorie 
left join plat on categorie.idcategorie= plat.idcategorie
group by categorie.nom;

-- Montant total par commande
SELECT c.date, sum(p.prix * l.qte) montant
FROM commande c
join lignecommande l on c.idcommande = l.idcommande
join plat p on p.idplat= l.idplat
group by c.date

-- Liste des commandes avec clients et son statut
SELECT c.idcommande, c.date, cli.nom, cli.statut
FROM commande c
LEFT JOIN client cli on cli.idclient = c.idclient;

-- Nombre de commande et CA par serveur
SELECT s.nom, count(c) nbcommande, sum(p.prix * lc.qte) caserveur
FROM commande c
JOIN serveur s on s.idserveur = c.idserveur
JOIN lignecommande lc on lc.idcommande = c.idcommande
JOIN plat p on p.idplat= lc.idplat
GROUP BY s.nom;
select * from plat order by prix desc;

SELECT count(plat) nbplats, categorie.nom
FROM categorie 
left join plat on categorie.idcategorie= plat.idcategorie
group by categorie.nom;

SELECT c.date, sum(p.prix * l.qte) montant
FROM commande c
join lignecommande l on c.idcommande = l.idcommande
join plat p on p.idplat= l.idplat
group by c.date
select * from plat order by prix desc;

SELECT count(plat) nbplats, categorie.nom
FROM categorie 
left join plat on categorie.idcategorie= plat.idcategorie
group by categorie.nom;

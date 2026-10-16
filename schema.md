# Étape 1 - La Carte

### Schéma relationnel
Plat(**idPlat**, nom, categorie, prix)

Pieges: J'ai choisi le type INTEGER et prix comme identifiant

# Étape 2 - Les catégories
### Schéma relationnel
Categorie(**idCategorie**, nom)
Plat(**idPlat**, nom, prix, #idCategorie)

Pieges: Il vaut mieux ne pas mettre categorie varchar(50) directement dans plat car pour modifier une categorie, nous devons changer chaque ligne contenant cela.
Exemple: On va changer Boisson par Boisson chaude cela va obliger à changer chaque ligne au lieu d'une seule
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

# Étape 3 - Les commandes
### Schéma relationnel
Commande(**idCommande**, date)
LigneCommande(**idLigneCommande**, #idCommande, #idPlat, qte)

Pieges: Je le place dans la table lignecommande pour qu'on reconnaisse plus facilement la quantité de chaque plat d'une commande

# Étape 4 - Les habitués
### Schéma relationnel
Client(**idClient**, nom, statut)
Commande(**idCommande**, date, #idClient)

Pieges: Ma clé étrangère est NOT NULL car on n'est pas obligé d'insérer le nom d'un client
Il faut utiliser LEFT JOIN pour ne perdre aucune commande

# Étape 5 - Serveurs et tables
### Schéma relationnel
Serveur(**idServeur**, nom)
Table(**idTable**, nom)
Commande(**idCommande**, date, #idClient, #idServeur, #idTable)

Pieges: Une table et une commande sont différentes car une table peut avoir plusieurs commandes en une journée mais une commande n'a pas forcément plusieurs tables
Le nom table pose probleme en sql car ca se confond avec table(tableau SQL) ce qui montre une erreur
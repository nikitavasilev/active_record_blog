## Exercice du Blog

Exercice réalisé dans le cadre de la semaine Rails (THP), par notre belle équipe :
- [Ysaline Macé](https://github.com/Ysalien)
- [Nikita Vasilev](https://github.com/nikitavasilev)
- [Arthur Mansuy](https://github.com/tutus06) 
- [Thomas Charvet](https://github.com/TomacTh) 
- [Nathaniel Debache](https://github.com/Natdenice).

## Database

Le travail réalisé se focalise ici sur du back end. Notre blog est une base de données, permettant aux utilisateurs d'écrire des articles, de les commenter et de les liker. Cinq models sont créés avec les tables associés.

- Le model User contient un utilisateur qui a un firstname, un lastname et un email. Il peut écrire plusieurs articles.
10 users ont été généré en random avec la gem Faker. Ici Faker::Name et Faker::Internet.email

- Le model Article contient un titre et un contenu. Un article appartient à un utilisateur unique, il peut relever d'une seule catégorie, avoir plusieurs commentaires et likes. L'index dans ce model lie les id de l'utilisateur et de la catégorie.
10 articles ont été généré en random avec Faker. Ici Faker::Cannabis.cannabinoid pour le titre, Faker::Lebowski pour le contenu, et un Faker::Number.between(1, 10) pour les id (comme les index sont liés, il est nécessaire de préciser un id pour l'utilisateur et la catégorie pour la création).
Oui nos Faker sont très funs.

- Le model Category contient une catégorie. Elle peut appartenir à plusieurs articles. On la génère de la même manière avec Faker. Ici, Faker::Cannabis.buzzword.

- Le model Comment contient un contenu. Il est réalisé par un utilisateur unique et peut être fait pour plusieurs articles.
L'index va viser l'utilisateur et l'article. Idem généré en random avec Faker. Ici, Faker::HarryPotter.quote pour les commentaires et un Faker::Number.between de la même manière pour le model Article (pour les mêmes raisons).

- Le model Like est une table particulière car se base sur une relation n-n. Elle joint l'id User avec l'id Article. Afin de réaliser une telle jointure, on utilise la fonction : has_and_belongs_to_many.
Le nombre de like est généré aléatoirement avec Faker::Number comme précédemment.

Le résultat est une belle base de données avec des articles appartenant à différents users, avec commentaires et likes.
A base de belongs_to :nomdetonmodel, index: true dans les tables. Ainsi que des belongs_to :nomdetonmodel et has_many :nomdetatable. 

## Les fichiers

Dans l'arborescence des fichiers, les models se trouvent dans le sous-fichier models, dans le fichier app.
Les tables se trouvent dans le fichier migrate, qui se trouve lui-même dans le fichier db.
Pour checker rapidement les tables, le schéma et tout, on peut le faire en ouvrant sqlite3. Pour cela on se place dans le fichier de notre database (db), on sqlite3 development.sqlite3. Voilà.

Enjoy!

# Test-Technique-stage-NestJS
Mon premier but était de prendre en main l'ORM prisma qui est assez simple.

Après avoir suivi trois tutoriels(sur Nest.JS, Prisma et Graphql),
je savais plus ou moins les tqches à réaliser:

-Après avoir créer une base de données avec PostgreSQL et lier cette base avec mon schema.prisma

-Ensuite j'ai ensuite créé mes differents modules(user,editor,issue,article)et j'ai créé les différents relations entre eux:
  -one-to-many:entre editor et article;ediore et issue;entre issue et article;
  
-J'ai ensuite tenté d'utilisé Graphql afin d'avoir les différentes query(et mutation) pour manipuler(create,delete,update) les articles et issues.
  -pour cela j'ai créé  un dossier routes dans lequel ce trouve un fichiers js pour chaque module afin d'y mettre les différents routes associés à mon API
  -Le fichier index.js pour faire appel à mon API afin de le tester

# Site vitrine d'Ohana Studio

Cet exercice a été réalisé après avoir vu les concepts de bases du front et du back end:

- HTML
- CSS
- JavaScript côté front
- Nodejs
- Express
- PostegreSQL

Ce site vitrine permet d'utiliser l'ensemble des compétences acquises.
L'architecture est organisée en MVC et l'accès aux données est réalisé avec un dataMapper.

Voici un aperçu du rendu des différentes vues:

## Page d'accueil

En mode mobile, les trois photos restent en ligne mais on peut scroller sur x.

![home](/Docs/previews/home.png)

## Portfolio

Les photos peuvent être triées par catégorie.
Par défaut, seules trois photos sont affichées mais un script JavaScript permet d'afficher l'ensemble des photos.

![portfolio](/Docs/previews/portfolio.png)

![selec](/Docs/previews/portfolio_select.png)

## Contact

J'ai créé un formulaire de contact mais n'ayant pas de SMTP, l'envoi a été configuré avec un service gmail qu'il faudrait adapter dans une situation réelle.
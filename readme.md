# Site vitrine d'Ohana Studio

Un guide d'utilisation est fourni après la description du projet

## Le projet

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

### Page d'accueil

En mode mobile, les trois photos restent en ligne mais on peut scroller sur x.

![home](/Docs/previews/home.png)

### Portfolio

Les photos peuvent être triées par catégorie.
Par défaut, seules trois photos sont affichées mais un script JavaScript permet d'afficher l'ensemble des photos.

![portfolio](/Docs/previews/portfolio.png)

![select](/Docs/previews/portfolio_select.png)

### Contact

J'ai créé un formulaire de contact mais n'ayant pas de SMTP, l'envoi a été configuré avec un service gmail qu'il faudrait adapter dans une situation réelle.

![formulaire](/Docs/previews/form.png)

## Comment lancer le site en local

### Avant de commencer

- S'assurer que PostgreSQL est installé sur la machine
- Vérifier la version de Node.js (celle utilisée est la v22)

### Cloner le répertoire distant en local

1. Sur la page du repertoire GitHub, cliquer sur le bouton vert "code", puis choisir "SSH" et copier l'url
2. Ouvrir un répertoire local sur votre machine où vous souhaiter cloner le répertoire distant et ouvrir le terminal à cet endroit
3. Taper `git clone <copîer le lien SSH de GitHub>`
4. Le répertoire est maintenant cloné sur votre machine et vous pouvez ouvrir le dossier dans votre éditeur de code

### Créer la base de données et installer les dépendances

1. Taper `npm install` dans le terminal pour installer les dépendances
2. Il faut ensuite se connecter à la base de données en tant qu'administrateur postgres: `sudo -i -u postgres psql`
3. Créer un utilisateur `CREATE USER username WITH PASSWORD 'password';` (les champs username et password sont à remplacer avec les valeurs que vous souhaitez)
4. Créer la base de données: `CREATE DATABASE database_name OWNER username;`(le champ database_name est le nom que vous souhaitez à votre base de données)
5. On se déconnecte avec `\q`
6. Il faut maintenant exécuter le fichier SQL pour créer les tables et insérer les données: `psql -U username -d database_name -f DB/data_photos.sql`

### Utiliser les variables d'environnement

1. Créer un fichier .gitignore et copier dedans:
   ```
    node_modules
    .env
    .vscode
    ```
2. Copier/collier le fichier .env.example et le renommer .env et modifier `PG_URL` avec les valeurs que vous avez choisies lors de la création de la base de données

### Lancer le serveur

Dans le terminal, taper `npm run dev` et faites un `ctrl`+`clic` sur l'url

Le site s'ouvre dans le navigateur, ENJOY!
# Partie annexe de l'application "Gestion de produits"

Cette application permet de gérer des produits avec des accès sécurisés selon les rôles attribués à chaque utilisateur. Il y a un rôle `administrateur` et un rôle `utilisateur`. L'application a été développée dans le cadre du projet fil rouge d'une formation MOOC pour devenir `Développeur Full Stack Java Spring Boot 3 / Angular`. Elle est composée de trois parties : 

1. Une partie `frontend` développée en Angular 17 [angular-gestion-produits](https://github.com/charlenry/Angular-Gestion-Produits),
2. Une partie `backend métier` connectée à une base de données MySQL qui permet de gérer les produits. Elle a été développée en Java avec Spring Boot 3 (voir le projet [spring-gestion-produits](https://github.com/charlenry/Spring-Gestion-Produits)),
3. Une partie `backend IAM` **(Identity and Access Management)** connectée à une base de données MySQL qui gère les identités et les accès. Elle a été développée en Java avec Spring Boot 3 (voir le projet [spring-gestion-utilisateurs](https://github.com/charlenry/Spring-Gestion-Utilisateurs)).

**Remarque :** La partie IAM développée en Java avec Spring Boot 3 est interchangeable avec l'IAM `Keycloak`. Pour ce faire, il y a deux branches dans la partie `frontend` et dans la partie `backend métier` :

1. La branche `main` qui permet de faire fonctionner les parties frontend et backend métier avec la partie IAM développée en Java avec Spring Boot 3,
2. La branche `secured_apis_with_keycloak_oauth2` qui permet de faire fonctionner les parties frontend et backend métier avec l'IAM Keycloak.


## Installation et lancement
Pour que l'application fonctionne correctement, il faut exécuter le serveur de base de données MySQL plus les trois parties.

### Serveur de base de données MySQL
1. Téléchargez et installez le logiciel [XAMPP](https://www.apachefriends.org/fr/download.html),
2. Lancez le serveur Apache et le serveur MySQL,
3. Dans la console `XAMPP Control Panel`, cliquez sur le bouton `Admin` de MySQL pour accéder à l'interface de gestion des bases de données,
4. Créez deux bases de données nommées respectivement `spring_produits_db` et `spring_users_iam_db`. Puis importez les tables à partir des fichiers `spring_produits_db.sql` et `spring_produits_db.sql` à télécharger depuis [GitHub](https://github.com/charlenry/Annexe-Gestion-Produits).


### Partie backend métier
1. Si vous utilisez `Spring Tool Suite` , importez le projet [spring-gestion-produits](https://github.com/charlenry/Spring-Gestion-Produits) à partir Git, fournissez l'URL du dépôt du projet et choisissez la branche `main` pour le faire fonctionner avec le projet [spring-gestion-utilisateurs](https://github.com/charlenry/Spring-Gestion-Utilisateurs). Sinon, choisissez la branche `secured_apis_with_keycloak_oauth2` pour le faire fonctionner avec Keycloak [Keycloak](https://www.keycloak.org/downloads).
2. Lancez le projet en tant qu'application Spring Boot. L'application sera accessible à l'adresse `http://localhost:8080`.


### Partie backend IAM
1. Si vous utilisez `Spring Tool Suite`, importez le projet [spring-gestion-utilisateurs](https://github.com/charlenry/Spring-Gestion-Utilisateurs) à partir Git, fournissez l'URL du dépôt du projet et choisissez la branche `main`.
2. Lancez le projet en tant qu'application Spring Boot. L'application sera accessible à l'adresse `http://localhost:8081`.


### Partie frontend
1. Clonez le projet,
2. Tapez la commande `npm install` pour installer les dépendances,
3. Tapez la commande `ng serve -o` pour lancer l'application. L'application sera accessible à l'adresse `http://localhost:4200`.


### Keycloak
Si vous utilisez la branche `secured_apis_with_keycloak_oauth2` pour la partie backend IAM, il faut installer Keycloak. Rendez-vous sur le site officiel de [Keycloak](https://www.keycloak.org/downloads) et téléchargez le premier fichier dans la rubrique `Server`. Décompressez-le puis rendez-vous dans le dossier `bin`. Pour lancer Keycloak, tapez la commande suivante :

```bash
kc.[bat|sh] start-dev --http-port=8090
```
kc.bat ou kc.sh selon votre système d'exploitation. Keycloak sera accessible à l'adresse `http://localhost:8090`. Créez un compte administrateur pour accéder à l'interface d'administration.

Puis copiez le fichier `products-realm.json` à télécharger depuis [GitHub](https://github.com/charlenry/Annexe-Gestion-Produits) dans le dossier `bin` de Keycloak. Pour importer le fichier de configuration `products-realm.json` dans keycloak, tapez la commande suivante :

```bash
kc.[bat|sh] import --file products-realm.json
```
kc.bat ou kc.sh selon votre système d'exploitation. Par la suite, vous pouvez vous connecter à l'interface de l'application à l'adresse `http://localhost:4200`. Vous pouvez vous connecter avec les mêmes identifiants que ceux mentionnés dans la partie `Page d'accueil` ci-dessous.


## Utilisation

### Page d'accueil
La page d'accueil permet de se connecter à l'application. Les nouveaux utilisateurs peuvent s'inscrire. Un code de confirmation est envoyé par email pour activer le compte. Pour faire fonctionner cette partie, il y a deux options :

1. Vous utilisez le `backend IAM` développé avec Spring Boot 3. Dans ce cas, il faut configurer le serveur SMTP dans le fichier `application.properties` du projet [spring-gestion-utilisateurs](https://github.com/charlenry/Spring-Gestion-Utilisateurs). Vous pouvez utiliser le serveur SMTP [MailHog](https://github.com/mailhog/MailHog/releases) pour tester l'envoi d'email. L'application est configurée pour utiliser le serveur SMTP `MailHog` par défaut. Mais vous pouvez configurer un autre serveur SMTP de votre choix.

2. Vous utilisez `Keycloak`. Dans ce cas, si vous avez importé le `realm` du projet, il est déjà préconfiguré pour fonctionner avec [MailHog](https://github.com/mailhog/MailHog/releases) que vous devez lancer. Mais vous pouvez configurer le serveur SMTP de votre choix. 

Il y a deux rôles : `ADMIN` et `USER`. Les identifiants et mots de passe sont les suivants :
1. Pour le rôle `ADMIN` : 
  * Identifiant : `admin`
  * Mot de passe : `123`

2. Pour le rôle `USER` :
  * Identifiant : `charles`
  * Mot de passe : `123` 

### Page de gestion des produits
La page de gestion des produits permet de visualiser, ajouter, modifier et supprimer des produits. Seul l'utilisateur ayant le rôle `ADMIN` peut ajouter, modifier ou supprimer des produits. Il est également possible de rechercher des produits par nom ou par catégorie.


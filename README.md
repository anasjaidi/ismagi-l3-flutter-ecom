# Rapport de Projet : Application E-Commerce Flutter
**Auteur :** Anas Jaidi  
**Sujet :** Examen Flutter L3-DEV (ISMAGI)  

---

## 1. Présentation du Projet
Ce projet consiste en la création d'une application mobile d'e-commerce multiplateforme (iOS, Web, macOS) développée avec le framework **Flutter**. L'application simule un flux d'achat complet, de l'authentification à la confirmation de commande.

---

## 2. Architecture Technique
Pour ce projet, une structure modulaire a été adoptée afin de respecter les bonnes pratiques de développement :
* **Modèles (Models) :** Gestion de la structure des données (classe `Product`).
* **Vues (Screens) :** Séparation de chaque interface utilisateur dans des fichiers distincts.
* **Navigation :** Utilisation du système de routage de Flutter pour une transition fluide entre les pages.

---

## 3. Fonctionnalités Détaillées

### A. Authentification (Login Page)
* **Validation Dynamique :** Utilisation d'un `GlobalKey<FormState>` pour valider les entrées.
* **Gestion des Erreurs :** Si l'email est mal formé (absence de `@`) ou si le mot de passe est trop court, les champs s'affichent avec des **bordures rouges** et des messages d'erreur.
* **Sécurité :** Utilisation de `obscureText` pour masquer le mot de passe.

### B. Accueil (Home Page)
* Interface épurée affichant le logo et le message de bienvenue.
* Bouton d'action principal permettant d'accéder au catalogue de produits.

### C. Catalogue (Product Listing)
* Affichage sous forme de `ListView` optimisée.
* Chaque élément présente une miniature de l'image, le nom du produit et son prix.
* Récupération d'images dynamiques via le réseau (Unsplash).

### D. Fiche Produit (Product Detail)
* Affichage grand format de l'image.
* Description détaillée et mise en avant du prix en couleur verte.
* **Gestion du défilement :** Utilisation de `SingleChildScrollView` pour garantir la lisibilité sur tous les écrans.

### E. Confirmation de Commande
* Déclenchement d'un `AlertDialog` lors du clic sur le bouton "Commander".
* Logique de navigation optimisée : après confirmation, l'utilisateur est redirigé vers la liste des produits pour continuer son shopping.

---

## 4. Guide des Commandes Utilisées
Voici les commandes principales exécutées durant le développement :
* `flutter run -d iphonesimulator` : Lancement sur le simulateur iOS.
* `flutter run -d chrome` : Lancement sur le navigateur Arc.
* `flutter clean` : Nettoyage du cache de build.
* `flutter pub get` : Installation des dépendances.

---

## 5. Conclusion Technique
Ce projet a permis de mettre en œuvre les concepts fondamentaux de Flutter : le cycle de vie des widgets, la validation de formulaires, la navigation entre écrans et la gestion des permissions réseau pour macOS et iOS. L'application est prête pour un déploiement sur plusieurs plateformes à partir d'un seul code source.
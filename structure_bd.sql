-- Création de la base de données pour Vite & Gourmand
CREATE TABLE categorie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) -- ex: Menus de fêtes, Végétarien
);

CREATE TABLE menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100),
    description TEXT,
    prix DECIMAL(10,2),
    nb_personnes_min INT DEFAULT 1, -- AJOUT : Pour la règle des -10%
    regime_special VARCHAR(50), 
    categorie_id INT,
    FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

CREATE TABLE commande (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_nom VARCHAR(100),
    adresse_livraison TEXT,
    ville VARCHAR(50), -- AJOUT : Pour calculer les frais hors Bordeaux
    nb_convives INT,
    prix_total DECIMAL(10,2),
    date_commande DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE avis_client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(50),
    commentaire TEXT,
    note INT,
    est_valide BOOLEAN DEFAULT FALSE -- L'employé doit valider ici
);
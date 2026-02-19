-- Création de la base de données pour Vite & Gourmand
CREATE TABLE categorie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) -- ex: Entrées, Plats, Desserts
);

CREATE TABLE menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100),
    description TEXT,
    prix DECIMAL(10,2),
    regime_special VARCHAR(50), -- ex: Vegan, Végétarien
    categorie_id INT,
    FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

CREATE TABLE avis_client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(50),
    commentaire TEXT,
    note INT,
    est_valide BOOLEAN DEFAULT FALSE
);
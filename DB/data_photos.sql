CREATE DATABASE PhotoGallery;

USE PhotoGallery;

CREATE TABLE Photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pays VARCHAR(100),
    date DATE,
    description TEXT,
    categorie VARCHAR(100),
    image VARCHAR(100)
);

-- Insertion des données existantes dans la table Photos

INSERT INTO Photos (pays, date, description, categorie, image)
VALUES
('Japon', '2023-05-10', "Tori dans un parc japonais", 'architecture', '01.jpg'),
('Japon', '2023-05-12', "Barils de sake japonais", 'architecture', '02.jpg'),
('Japon', '2023-05-17', "Toits japonais", 'architecture', '03.jpg'),
('Japon', '2023-05-18', "Jeune japonaise en habits traditionnels", 'portrait', '04.jpg'),
('Maroc', '2023-10-09', "Coursive d'un palais marocain", 'architecture', '05.jpg'),
('Italie', '2024-06-27', "Citrons dans un panier", 'nourriture', '06.jpg'),
('Islande', '2022-09-28', "Maison en bois jaune au bord de l'eau", 'nature', '07.jpg'),
('France', '2024-04-01', "Table avec des décorations de Pâques", 'nourriture', '08.jpg'),
('Grèce', '2021-03-18', "Colonne de temple grec", 'architecture', '09.jpg'),
('France', '2024-08-15', "Surfer", 'nature', '10.jpg'),
('Nouvelle-Zélande', '2020-05-18', "Route en bord de lac et montagnes en arrière plan", 'architecture', '11.jpg'),
('Etats-Unis', '2022-10-16', "Maison en bois bleu", 'architecture', '12.jpg'),
('Japon', '2024-05-18', "cerisiers en fleurs au bord de l'eau", 'nature', '13.jpg'),
('Pays-Bas', '2023-02-27', "Bateau amarré dans un port hollandais", 'architecture', '14.jpg'),
('Grèce', '2021-03-15', "Homme regardant des mouettes depuis un bateau", 'portrait', '15.jpg'),
('Maroc', '2023-10-10', "jeune marocain", 'portrait', '16.jpg'),
('France', '2024-09-08', "Couple assis dans des chaises de camping dans la nature", 'portrait', '17.jpg'),
('France', '2024-09-18', "jeune fille au regard mélancolique dans un parc", 'portrait', '18.jpg'),
('France', '2023-03-01', "Table avec un café et du mimosa", 'nourriture', '19.jpg'),
('France', '2020-07-05', "saladier de cassis", 'nourriture', '20.jpg');

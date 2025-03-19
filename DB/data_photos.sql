DROP TABLE IF EXISTS "photos";


CREATE TABLE IF NOT EXISTS "photos" (
    "id" SERIAL PRIMARY KEY,
    "country" VARCHAR(100),
    "date" DATE,
    "description" TEXT,
    "category" VARCHAR(100),
    "image" VARCHAR(100)
);

set client_encoding to utf8;

INSERT INTO "photos"("id", "country", "date", "description", "category", "image")
VALUES
(1, 'Japon', '2023-05-10', 'Tori dans un parc japonais', 'architecture', '01.jpg'),
(2, 'Japon', '2023-05-12', 'Barils de sake japonais', 'architecture', '02.jpg'),
(3, 'Japon', '2023-05-17', 'Toits japonais', 'architecture', '03.jpg'),
(4, 'Japon', '2023-05-18', 'Jeune japonaise en habits traditionnels', 'portrait', '04.jpg'),
(5, 'Maroc', '2023-10-09', 'Coursive d''un palais marocain', 'architecture', '05.jpg'),
(6, 'Italie', '2024-06-27', 'Citrons dans un panier', 'nourriture', '06.jpg'),
(7, 'Islande', '2022-09-28', 'Maison en bois jaune au bord de l''eau', 'nature', '07.jpg'),
(8, 'France', '2024-04-01', 'Table avec des décorations de Pâques', 'nourriture', '08.jpg'),
(9, 'Grèce', '2021-03-18', 'Colonne de temple grec', 'architecture', '09.jpg'),
(10, 'France', '2024-08-15', 'Surfer', 'nature', '10.jpg'),
(11, 'Nouvelle-Zélande', '2020-05-18', 'Route en bord de lac et montagnes en arrière plan', 'architecture', '11.jpg'),
(12, 'Etats-Unis', '2022-10-16', 'Maison en bois bleu', 'architecture', '12.jpg'),
(13, 'Japon', '2024-05-18', 'Cerisiers en fleurs au bord de l''eau', 'nature', '13.jpg'),
(14, 'Pays-Bas', '2023-02-27', 'Bateau amarré dans un port hollandais', 'architecture', '14.jpg'),
(15, 'Grèce', '2021-03-15', 'Homme regardant des mouettes depuis un bateau', 'portrait', '15.jpg'),
(16, 'Maroc', '2023-10-10', 'Jeune marocain', 'portrait', '16.jpg'),
(17, 'France', '2024-09-08', 'Couple assis dans des chaises de camping dans la nature', 'portrait', '17.jpg'),
(18, 'France', '2024-09-18', 'Jeune fille au regard mélancolique dans un parc', 'portrait', '18.jpg'),
(19, 'France', '2023-03-01', 'Table avec un café et du mimosa', 'nourriture', '19.jpg'),
(20, 'France', '2020-07-05', 'Saladier de cassis', 'nourriture', '20.jpg');

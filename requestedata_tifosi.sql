-- Afficher la liste des noms des focaccias par ordre alphabétique croissant

SELECT `foccacia`.`nom`
FROM `foccacia`
ORDER BY `foccacia`.`nom` ASC;
-- résultat : image 1


-- Afficher le nombre total d'ingrédients

SELECT COUNT(*) AS total_ingredients FROM ingredient;
-- résultat : image 2


-- Afficher le prix moyen des focaccias

SELECT AVG(prix) AS prix_moyen
FROM foccacia;
-- résultat : image 3


-- Afficher la liste des boissons avec leur marque, triée par nom de boisson,

SELECT boisson.nom AS nom_boisson, marque.nom AS nom_marque
FROM boisson
JOIN marque ON boisson.id_marque = marque.id_marque
ORDER BY boisson.nom;
-- résultat : image 4


-- Afficher la liste des ingrédients pour une Raclaccia

SELECT ingredient.nom AS nom_ingredient, comprend.quantite
FROM comprend
JOIN ingredient ON comprend.id_ingredient = ingredient.id_ingredient
WHERE comprend.id_foccacia = 3;
-- résultat : image 5


-- Afficher le nom et le nombre d'ingrédients pour chaque foccacia

SELECT foccacia.nom AS nom_foccacia, COUNT(comprend.id_ingredient) AS nb_ingredients
FROM foccacia
JOIN comprend ON foccacia.id_foccacia = comprend.id_foccacia
GROUP BY foccacia.id_foccacia, foccacia.nom;
-- résultat : image 6


-- Afficher le nom de la focaccia qui a le plus d'ingrédients

SELECT foccacia.nom AS nom_foccacia, COUNT(comprend.id_ingredient) AS nb_ingredients
FROM foccacia
JOIN comprend ON foccacia.id_foccacia = comprend.id_foccacia
GROUP BY foccacia.id_foccacia, foccacia.nom
ORDER BY nb_ingredients DESC
LIMIT 1;
-- résultat : image 7


-- Afficher la liste des focaccia qui contiennent de l'ail

SELECT DISTINCT foccacia.nom AS nom_foccacia
FROM foccacia
JOIN comprend ON foccacia.id_foccacia = comprend.id_foccacia
JOIN ingredient ON comprend.id_ingredient = ingredient.id_ingredient
WHERE ingredient.nom = 'ail';
-- résultat : image 8


-- Afficher la liste des ingrédients inutilisés

SELECT ingredient.nom AS nom_ingredient
FROM ingredient
LEFT JOIN comprend ON ingredient.id_ingredient = comprend.id_ingredient
WHERE comprend.id_ingredient IS NULL;
-- résultat : image 9


-- Afficher la liste des focaccia qui n'ont pas de champignons

SELECT DISTINCT foccacia.nom AS nom_foccacia
FROM foccacia
WHERE foccacia.id_foccacia NOT IN (
    SELECT comprend.id_foccacia
    FROM comprend
    JOIN ingredient ON comprend.id_ingredient = ingredient.id_ingredient
    WHERE ingredient.nom = 'champignon'
);
-- résultat : image 10
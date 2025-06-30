INSERT INTO `marque` (`id_marque`, `nom`) VALUES 
(NULL, 'Coca-cola'), 
(NULL, 'Cristalline'), 
(NULL, 'Monster'), 
(NULL, 'Pepsico');

INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES 
(NULL, 'Ail'), 
(NULL, 'Ananas'), 
(NULL, 'Artichaut'), 
(NULL, 'Bacon'), 
(NULL, 'Base Tomate'), 
(NULL, 'Base crème'), 
(NULL, 'Champignon'), 
(NULL, 'Chevre'), 
(NULL, 'Cresson'), 
(NULL, 'Emmental'), 
(NULL, 'Gorgonzola'), 
(NULL, 'Jambon cuit'), 
(NULL, 'Jambon fumé'), 
(NULL, 'Oeuf'), 
(NULL, 'Oignon'), 
(NULL, 'Olive noire'), 
(NULL, 'Olive verte'), 
(NULL, 'Parmesan'), 
(NULL, 'Piment'), 
(NULL, 'Poivre'), 
(NULL, 'Pomme de terre'), 
(NULL, 'Raclette'), 
(NULL, 'Salami'), 
(NULL, 'Tomate cerise'), 
(NULL, 'Mozarella');

INSERT INTO `boisson` (`id_boisson`, `nom`, `id_marque`) VALUES 
(NULL, 'Coca-cola zéro', '1'), 
(NULL, 'Coca-cola original', '1'), 
(NULL, 'Fanta citron', '1'), 
(NULL, 'Fanta orange', '1'), 
(NULL, 'Capri-sun', '1'), 
(NULL, 'Pepsi', '4'), 
(NULL, 'Pepsi Max Zéro', '4'), 
(NULL, 'Lipton zéro citron', '4'), 
(NULL, 'Lipton Peach', '4'), 
(NULL, 'Monster energy ultra gold', '3'), 
(NULL, 'Monster energy ultra blue', '3'), 
(NULL, 'Eau de source ', '2');

INSERT INTO `foccacia` (`id_foccacia`, `nom`, `prix`) VALUES 
(NULL, 'Mozaccia', '9.80'), 
(NULL, 'Gorgonzollaccia', '10.80'), 
(NULL, 'Raclaccia', '8.90'), 
(NULL, 'Emmentalaccia', '9.80'), 
(NULL, 'Tradizione', '8.90'), 
(NULL, 'Hawaienne', '11.20'), 
(NULL, 'Américaine', '10.80'), 
(NULL, 'Paysanne', '12.80');

-- foccacia :

-- Mozaccia
INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '1'), 
(NULL, '25', '50', '1'), 
(NULL, '9', '20', '1'), 
(NULL, '13', '80', '1'), 
(NULL, '1', '2', '1'), 
(NULL, '3', '20', '1'), 
(NULL, '7', '40', '1'), 
(NULL, '18', '50', '1'), 
(NULL, '20', '1', '1'), 
(NULL, '16', '20', '1');

-- Gorgonzollaccia

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '2'), 
(NULL, '11', '50', '2'), 
(NULL, '9', '20', '2'), 
(NULL, '1', '2', '2'), 
(NULL, '7', '40', '2'), 
(NULL, '18', '50', '2'), 
(NULL, '20', '1', '2'), 
(NULL, '16', '20', '2');

-- Raclaccia

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '3'), 
(NULL, '22', '50', '3'), 
(NULL, '9', '20', '3'), 
(NULL, '1', '2', '3'), 
(NULL, '7', '40', '3'), 
(NULL, '18', '50', '3'), 
(NULL, '20', '1', '3');

-- Emmentalaccia

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '6', '200', '4'), 
(NULL, '10', '50', '4'), 
(NULL, '9', '20', '4'), 
(NULL, '7', '40', '4'), 
(NULL, '18', '50', '4'), 
(NULL, '20', '1', '4'), 
(NULL, '15', '20', '4')

-- Tradizione

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '5'), 
(NULL, '25', '50', '5'), 
(NULL, '9', '20', '5'), 
(NULL, '12', '80', '5'), 
(NULL, '7', '80', '5'), 
(NULL, '18', '50', '5'), 
(NULL, '20', '1', '5'), 
(NULL, '16', '10', '5'), 
(NULL, '17', '10', '5');

-- Hawaienne

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '6'), 
(NULL, '25', '50', '6'), 
(NULL, '9', '20', '6'), 
(NULL, '4', '80', '6'), 
(NULL, '2', '40', '6'), 
(NULL, '19', '2', '6'), 
(NULL, '18', '50', '6'), 
(NULL, '20', '1', '6'), 
(NULL, '16', '20', '6');

-- Américaine

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '5', '200', '7'), 
(NULL, '25', '50', '7'), 
(NULL, '9', '20', '7'), 
(NULL, '4', '80', '7'), 
(NULL, '21', '40', '7'), 
(NULL, '18', '50', '7'), 
(NULL, '20', '1', '7'), 
(NULL, '16', '20', '7');

-- Paysanne

INSERT INTO `comprend` (`id_comprend`, `id_ingredient`, `quantite`, `id_foccacia`) VALUES 
(NULL, '6', '200', '8'), 
(NULL, '8', '50', '8'), 
(NULL, '9', '20', '8'), 
(NULL, '21', '80', '8'), 
(NULL, '13', '80', '8'), 
(NULL, '1', '2', '8'), 
(NULL, '3', '20', '8'), 
(NULL, '7', '40', '8'), 
(NULL, '18', '50', '8'), 
(NULL, '20', '1', '8'), 
(NULL, '16', '20', '8'), 
(NULL, '14', '50', '8');


Drop database if exists portfolio;
Create database portfolio;
Use portfolio;

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `competences` (
  `id_comp` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `images` (
  `id_img` int(11) NOT NULL,
  `lien` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `projets` (
  `id_p` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `sous_titre_1` varchar(100) NOT NULL,
  `description_1` text NOT NULL,
  `sous_titre_2` varchar(100) NOT NULL,
  `description_2` text,
  `lien_local` varchar(255) DEFAULT NULL,
  `lien_git` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projets` (`id_p`, `titre`, `sous_titre_1`, `description_1`, `sous_titre_2`, `description_2`, `lien_local`, `lien_git`) VALUES
(1, 'Cabinet Médical', 'Le Cabinet', 'Création dun logiciel de gestion pour un Cabinet médical permettant au Patient de pouvoir directement étre enregistré, au Médecin de voir les RDVs et au assitantes de pouvoir gérer les préscription des médicaments', 'Le déroulement', 'Le projet cabinet médical a été mon tout premier projet, le sujet de ce projet est que un patient puisse prendre un rendez-vous avec un docteur et que le docteur soit automatiquement averti par ce dernier. Le but de ce projet est de vérifier que nous étudiant savont mettre en place une base de donnée et de savoir faire des apelles dans cette base de donnée.', 'A compléter plus tard.', 'A compléter plus tard.'),
(2, 'CEA Grenoble', 'Le CEA', 'Le Commissariat à l’Énergie Atomique et aux Énergie Alternatives (CEA) est un organisme public de recherche à caractère scientifique, technique et industriel (EPIC). II a été créé en 1945 avec comme départ un projet politique : le développement des applications issues de sciences autour des atomes. Le CEA est a se jour un acteur majeur de la recherche, du développement et des innovations.', 'La raison du Stage', 'Le CEA a comme but de toujours se maintenir à jour avec le temps pour ne jamais être dépassé voire même être en avance. Vouloir se maintenir à jour permet d’être toujours compatible avec les nouveautés, éviter aussi de perdre de l’argent car on peut ne pas avoir accès à certaines données qui peuvent s’avérer primordiales dans l’avancé d’une société. \r\nEn procédant à un changement de logiciel on accède à plus d’options, à une automatisation des données, à une meilleure fluidité, moins sujet à obtenir des erreurs à cause de problème dans le logiciel. Actuellement le logiciel utilisé est Visitéo mais va progressivement être changé par Cassiopée.', 'A compléter plus tard.', 'A compléter plus tard.'),
(3, 'OCSInventory', 'OCSInventory', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.'),
(4, 'PPE', 'LE PPE', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.');

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_user` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Nathan', 'nathan.wendling@moniris.com', '$2y$10$5yHwLD.bpnnnXL/HmytZIOsyhZ39a8ccA/sF.q64cY9s0xvuV7lC6');

ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

ALTER TABLE `competences`
  ADD PRIMARY KEY (`id_comp`);

ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_p`);

ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `competences`
  MODIFY `id_comp` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `projets`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

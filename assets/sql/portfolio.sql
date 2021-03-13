Drop database if exists portfolio;
Create database portfolio;
Use portfolio;

Create table categorie (
	id_cat int(11) not null auto_increment,
	libelle varchar(50),
	primary key (id_cat)
) ENGINE=InnoDB;

Create table projets (
	id_p int(11) not null auto_increment,
	titre varchar(50),
	sous_titre_1 varchar(100),
	texte_1 text,
	sous_titre_2 varchar(100),
	texte_2 text,
	lien_local varchar(255),
	lien_git varchar(255),
	primary key (id_p)
) ENGINE=InnoDB;

Create table projets (
	id_p int(11) not null auto_increment,
  titre varchar(50),
  sous_titre_1 varchar(100),
  description_1 text,
  sous_titre_2 varchar(100),
  description_2 text,
  lien_local varchar(255),
  lien_git varchar(255),
primary key (id_p)
) ENGINE=InnoDB;

INSERT INTO `projets` (`id_p`, `titre`, `sous_titre_1`, `description_1`, `sous_titre_2`, `description_2`, `lien_local`, `lien_git`) VALUES
(1, 'Cabinet Médical', 'Le Cabinet', 'Création de logiciel de gestion pour un Cabinet médical permettant au Patient de pouvoir être directement enregistrer, au Médecin de voir les RDVs et au assitantes de pouvoir gérer les préscription des médicaments', 'Le déroulement', 'Le projet cabinet médical a été mon tout premier projet, le sujet de ce projet est que un patient puisse prendre un rendez-vous avec un docteur et que le docteur soit automatiquement averti par ce dernier. Le but de ce projet est de vérifier que nous étudiant savont mettre en place une base de donnée et de savoir faire des apelles dans cette base de donnée.', 'A compléter plus tard.', 'A compléter plus tard.'),
(2, 'CEA Grenoble', 'Le CEA', 'Le Commissariat à l’Énergie Atomique et aux Énergie Alternatives (CEA) est un organisme public de recherche à caractère scientifique, technique et industriel (EPIC). II a été créé en 1945 sur lune base de projet politique : le développement des applications issues de sciences sur les atomes. Le CEA est a se jour un acteur majeur de la recherche, du développement et innovation.', 'La raison du Stage', 'Le CEA a comme but de toujours se maintenir à jour avec le temps pour ne jamais être dépassé voire même être en avance. Vouloir se maintenir à jour permet d’être toujours compatible avec les nouveautés, éviter aussi de perdre de l’argent car on peut ne pas avoir accès à certaines données qui peuvent s’avérer primordiales dans l’avancé d’une société. \r\nEn procédant à un changement de logiciel on accède à plus d’options, à une automatisation des données, à une meilleure fluidité, moins sujet à obtenir des erreurs à cause de problème dans le logiciel. Actuellement le logiciel utilisé est Visitéo mais va progressivement être changé par Cassiopée.', 'A compléter plus tard.', 'A compléter plus tard.'),
(3, 'OCSInventory', 'OCSInventory', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.'),
(4, 'PPE', 'LE PPE', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.', 'A compléter plus tard.');


Create table images (
	id_img int(11) not null auto_increment,
	lien varchar(255),
	primary key (id_img)
) ENGINE=InnoDB;

Create table competences (
	id_comp int(11) not null auto_increment,
	libelle varchar(50),
	primary key (id_comp)
) ENGINE=InnoDB;

CREATE TABLE tbl_user (
  user_id int(11) NOT NULL,
  username varchar(15) NOT NULL,
  email varchar(40) NOT NULL,
  password varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `tbl_user` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Nathan', 'nathan.wendling@moniris.com', '$2y$10$5yHwLD.bpnnnXL/HmytZIOsyhZ39a8ccA/sF.q64cY9s0xvuV7lC6');
--(Moniris -> $2y$10$5yHwLD.bpnnnXL/HmytZIOsyhZ39a8ccA/sF.q64cY9s0xvuV7lC6)

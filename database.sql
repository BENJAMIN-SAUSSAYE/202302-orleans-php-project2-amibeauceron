-- phpMyAdmin SQL Dump

-- version 4.5.4.1deb2ubuntu2

-- http://www.phpmyadmin.net

--

-- Client :  localhost

-- Généré le :  Jeu 26 Octobre 2017 à 13:53

-- Version du serveur :  5.7.19-0ubuntu0.16.04.1

-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Base de données :  `db_beauceron`

--

-- --------------------------------------------------------

--

-- Structure de la table `item`

--

CREATE TABLE
    `item` (
        `id` int(11) UNSIGNED NOT NULL,
        `title` varchar(255) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Contenu de la table `item`

--

INSERT INTO
    `item` (`id`, `title`)
VALUES (1, 'Stuff'), (2, 'Doodads');

--

-- Index pour les tables exportées

--

--

-- Index pour la table `item`

--

ALTER TABLE `item` ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT pour les tables exportées

--

--

-- AUTO_INCREMENT pour la table `item`

--

ALTER TABLE
    `item` MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

-- --------------------------------------------------------

--

-- Structure de la table `actuality`

--

CREATE TABLE
    `actuality` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `title` VARCHAR(255) NOT NULL,
        `content` TEXT NULL,
        `creation_date` DATETIME NOT NULL DEFAULT NOW(),
        `image_path` VARCHAR(255) NULL,
        PRIMARY KEY (`id`),
        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Contenu de la table `Actuality`

--

INSERT INTO
    `actuality` (
        `id`,
        `title`,
        `content`,
        `creation_date`,
        `image_path`
    )
VALUES (
        1,
        'Convocation Assemblée Générale 2023',
        'L''assamblée générale du Club Les Amis du Beauceron aura lieux le samedi 06 mai 2023 à 18h00 à la mairie de Thoissey 8 rue de l''hôtel de ville salle des mariages.
     
     L''ordre du jour sera le suivant :
			
			Ouverture de l''assamblée générale par la présidente.
			
			Compte rendu moral de l''année 2022 par la présidente.
			Compte rendu financier de l''année 2022 par le trésorier.
			Compte rendu des différentes commissions.
			Approbation des comptes rendus.
			Quitus au trésorier.
			Question diverses.
			Clôture de l''assembée générale.
			
			Pour participer à l''assembée générale, il faut être à jour de cotisation et adhérent depuis plus de 9 mois.',
        NOW(),
        NULL
    ), (
        2,
        'Renouvellement Adhesion & Abonnement 2023',
        'Pensez a renouveller votre adhesion. La numéro 1 - 2023 va bientôt paraître
     
     Vous trouverez les documents suivant pour votre inscription : 
        
          - <a href="lettre adhesion au club 2023.pdf" border="0" alt="">LETTRE DE RENOUVELEMENT</a>
          - <a href="../club/club-adhesion.html" border="0" alt="">BULLETIN ADHESION</a>
          - <a href="RIB Crédit Agricole CAB.pdf" border="0" alt="">RIB bancaire</a>
         
    ',
        DATE_ADD(NOW(), INTERVAL -2 DAY),
        NULL
    ), (
        3,
        'La surdité & l''hémophilie chez le beauceron',
        'La surdité et l''hémophilie chez le beauceron, le beauceron arlequin. Description et génétique.
     Bonjour,
      Message du Docteur Marie ABITBOL concernant ses travaux de recherche sur la surdité, en collaboration avec la Commission d''élevage du CAB :
      Nous sommes heureux d’annoncer que grâce à la collaboration des amoureux du Beauceron, nous avons identifié la mutation de surdité !
      Un test ADN de dépistage vient juste d’être lancé : TEST ADN.

      Cordialement, Marie Abitbol.

      Marie ABITBOL : 
      Pr en génétique Département des Sciences Fondamentales
      VetAgro Sup, Campus vétérinaire de Lyon
      1 avenue Bourgelat, 69280 Marcy l''Etoile
      
      Mail : marie.abitbol@vetagro-sup.fr
      Tel : 0478872566
      et
      INMG-Institut NeuroMyoGène
      Equipe MNCA
      CNRS UMR 5310 - INSERM U1217 - UCBL1 Université de Lyon
      8 avenue Rockefeller, 69008 Lyon 
    ',
    DATE_ADD(NOW(), INTERVAL -5 DAY),
    NULL
  ),
  (
    4,
    'Titre de champion international de beaute',
    'TITRES DE CHAMPION INTERNATIONAL DE BEAUTE JEUNE & VETERAN DE LA FCI C.I.B.-J & C.I.B.-V.

    Mesdames, Messieurs les Présidents,

    Le Comité Général de la FCI a décidé de créer deux nouveaux titres de Champion International de Beauté
    pour tous les chiens de races (soumises à épreuves de travail ou non) inscrits en classe Jeunes
    (de 9 à 18 mois) ou Vétérans (à partir de 8 ans) lors d’Expositions Internationales de la FCI avec
    octroi du CACIB conformément au Règlement des Expositions Canines de la FCI.
    
    C.I.B.-J Champion International de Beauté Jeune
    C.I.B.-V Champion International de Beauté Vétéran
    
    Les conditions DE BASE exigées pour TOUS les chiens avec pedigree sont les suivantes :
    
    C.I.B.-J Champion International de Beauté Jeune

    Pour les chiens avec pedigree de races reconnues à titre définitif par la FCI selon la Nomenclature des
    Races de la FCI, inscrits dans le livre des origines reconnu par la FCI (cela signifie que les inscriptions
    dans des annexes aux livres des origines ne sont pas valables) (conformément au Règlement du
    Championnat International de la FCI, Introduction)

    • 3 certificats « Jeune » internationaux (c.-à-d. trois « 1er EXCELLENT » en classe Jeunes) obtenus
    dans des Expositions Internationales de la FCI avec octroi du CACIB à partir du 1er août 2022
    • Dans 3 pays différents
    • Sous 3 juges différents

    C.I.B.-V Champion International de Beauté Vétéran
    Pour les chiens avec pedigree de races reconnues à titre définitif par la FCI selon la Nomenclature des
    Races de la FCI, inscrits dans le livre des origines reconnu par la FCI (cela signifie que les inscriptions
    ',
    NOW(),
    NULL
  ),
  (
    5,
    'Postes a pourvoir appel a candidature',
    'DELEGATIONS : 
      - ZONE 19 Départements 18-36-45. 
      - ZONE 24 Départements 11-30-34-48-66
    
    Adresser votre candidature à : 
    Madame RENAUX Danièle
    Résidence Les Fontaines de Caudéran 
    Appt 510 - 166, avenue Pasteur
    33200 BORDEAUX
    ',
    DATE_ADD(NOW(), INTERVAL -8 DAY),
    NULL
  );
-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 mai 2024 à 15:26
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `spring_users_iam_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `enabled`, `password`, `username`, `email`) VALUES
(1, b'1', '$2a$10$SEpkeU3mCqbG34BAO.bzdOWRSfkk7IJhIs.BVNRlSZ8CqZTPrhbVW', 'admin', 'admin@example.com'),
(2, b'1', '$2a$10$HwBVdLyVcIxQofxMWBfmLuBZVyvoPoqYKCMYHIJVWYkR7xRoFDDe.', 'charles', 'charles@example.com'),
(3, b'1', '$2a$10$nIwYEy8Uaaju7CJsl.LJbOMgkkSL5gSGs.XWUsrno68vrk7VuWC0G', 'henri', 'henri@example.com'),
(9, b'0', '$2a$10$wJva/.CgqljpQhp8c8xWaO72Rnw2AFeYasuXxlHVp0F6OTFCWPK6.', 'charlenry', 'charlenry@example.com'),
(10, b'0', '$2a$10$uTBXNXs2v4QJGzi5TW3/AuXeTDYCm9QtQ1gclylpzTzPhkKvhvcwi', 'demo1', 'demo1@example.com'),
(21, b'0', '$2a$10$/0AC5KB6YlyI6PzcZnoe1.OFNErevFw1vvkB2QOnVenYt3z3dY.02', 'demo2', 'demo2@example.com'),
(25, b'1', '$2a$10$OAJn5sdNcAO3U/z0HYNns.AxOn.SphxGF61oZhtpSayqOrlrTNb9O', 'demo3', 'demo3@example.com'),
(26, b'0', '$2a$10$8KjEydJZlikg6idDYu.lKO7Dokd8lS0NChdrdLqfErw5HzpqkdkZe', 'demo4', 'demo4@example.com'),
(27, b'0', '$2a$10$FIPBNbNcmNytC0Eknqdye.Pt/63p1Gr4zUSpZvqhL08x.aSzLG/xS', 'demo5', 'demo5@example.com'),
(29, b'1', '$2a$10$9E9IZLgIg5Y3iC9Th8l1V.xwmhPw2FnnSST4mfIv8pQuvLO2BOPMK', 'demo6', 'demo6@example.com'),
(30, b'1', '$2a$10$y8wRTAbNLq.tffCK.FiM2eSh6OWVSPXXukpfTT0vhnmrmu0pCGAOO', 'demo7', 'demo7@example.com'),
(31, b'1', '$2a$10$JqvlnNis.IuxUWnOb08NbOYCJzQZ3iNyK64UhBrCEUtnVqpNkwuve', 'demo8', 'demo8@example.com'),
(32, b'1', '$2a$10$zjguFbREtge0bZDX.784Qe/eLKdbbPWnur8Dk9vgt0rR0isql49yO', 'demo9', 'demo9@example.com'),
(33, b'1', '$2a$10$jHwTRSfz6Yu0dg653p58O.I5ZhgRY2gteJdMyLfhbUcoizGHKZZ9W', 'demo10', 'demo10@example.com'),
(34, b'1', '$2a$10$2B6oNvSgNsIkRdNnVXgxLufn2m1qLH3PZZ/GwWSbRbLM.HLQzZKWq', 'demo11', 'demo11@example.com'),
(35, b'1', '$2a$10$th1TZJpijq2pw7LuUnttnO7qFnjBogaM5LbFuS3L1LO0J8KdufUyy', 'demo12', 'demo12@example.com'),
(36, b'1', '$2a$10$z6JNGxKjPOOwR3y5xioqyOUE8tAAO8qz1KHV1ee8tlyqNxNx27z96', 'demo13', 'demo13@example.com'),
(41, b'1', '$2a$10$E3K4BRD04U0Loesipt9OuO/1Opej7cJwjNniNPfUbiS2Hz9kRX4uW', 'demo14', 'demo14@example.com');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(9, 2),
(10, 2),
(21, 2),
(25, 2),
(26, 2),
(27, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(41, 2);

-- --------------------------------------------------------

--
-- Structure de la table `verification_token`
--

CREATE TABLE `verification_token` (
  `id` bigint(20) NOT NULL,
  `expiration_time` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `verification_token`
--

INSERT INTO `verification_token` (`id`, `expiration_time`, `token`, `user_id`) VALUES
(1, '2024-04-24 17:36:52.000000', '558174', 10),
(7, '2024-04-28 17:28:13.000000', '426668', 21),
(11, '2024-04-28 17:55:04.000000', '555580', 25),
(12, '2024-04-28 19:24:15.000000', '324785', 26),
(13, '2024-04-28 19:25:10.000000', '166823', 27),
(15, '2024-04-28 19:56:30.000000', '466995', 29),
(16, '2024-04-28 23:01:06.000000', '233902', 30),
(17, '2024-04-28 23:13:12.000000', '447141', 31),
(18, '2024-04-29 19:09:59.000000', '650174', 32),
(19, '2024-04-29 20:11:00.000000', '177969', 33),
(20, '2024-04-29 20:16:02.000000', '343856', 34),
(21, '2024-04-29 20:22:47.000000', '866595', 35),
(22, '2024-04-29 20:37:41.000000', '909257', 36),
(26, '2024-05-10 21:38:59.000000', '200735', 41);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- Index pour la table `verification_token`
--
ALTER TABLE `verification_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_q6jibbenp7o9v6tq178xg88hg` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `verification_token`
--
ALTER TABLE `verification_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Contraintes pour la table `verification_token`
--
ALTER TABLE `verification_token`
  ADD CONSTRAINT `FKrdn0mss276m9jdobfhhn2qogw` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

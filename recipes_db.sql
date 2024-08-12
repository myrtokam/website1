-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 08:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `recipe_id`, `comment`, `created_at`) VALUES
(1, 1, 2, 'This Chicken Alfredo recipe is amazing! My family loved it.', '2024-01-07 16:00:00'),
(2, 2, 1, 'Tried the Spaghetti Carbonara last night. So delicious!', '2024-01-08 17:00:00'),
(3, 3, 3, 'The Beef Tacos were a hit at my dinner party.', '2024-01-09 18:00:00'),
(4, 4, 5, 'qwe', '2024-05-25 18:29:41'),
(5, 4, 5, 'ee', '2024-05-25 18:29:47'),
(6, 4, 6, 'αα', '2024-05-25 18:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `recipe_id`, `created_at`) VALUES
(1, 1, 3, '2024-01-10 19:00:00'),
(2, 2, 1, '2024-01-11 20:00:00'),
(3, 3, 2, '2024-01-12 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `instructions` text NOT NULL,
  `ingredients` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `title`, `description`, `instructions`, `ingredients`, `image_path`, `created_at`) VALUES
(1, 1, 'Spaghetti Carbonara', 'A classic Italian pasta dish with eggs, cheese, pancetta, and pepper.', '', '', 'images/carbonara.jpg', '2024-01-04 13:00:00'),
(2, 2, 'Chicken Alfredo', 'A creamy pasta dish made with fettuccine and a rich Alfredo sauce.', '', '', 'images/alfredo.jpg', '2024-01-05 14:00:00'),
(3, 3, 'Beef Tacos', 'Delicious beef tacos served with fresh salsa and guacamole.', '', '', 'images/tacos.jpg', '2024-01-06 15:00:00'),
(4, 1, 'Κέικ Σοκολάτας', 'Ένα υγρό και νόστιμο κέικ σοκολάτας', '1. Προθερμαίνουμε τον φούρνο στους 180°C. 2. Ανακατεύουμε το αλεύρι, το κακάο, το αλάτι και τη μαγειρική σόδα. 3. Σε άλλο μπολ, χτυπάμε τα αυγά και προσθέτουμε τη ζάχαρη, το λάδι και το εκχύλισμα βανίλιας. 4. Προσθέτουμε τα στεγνά υλικά στα υγρά και ανακατεύουμε μέχρι να ομογενοποιηθούν. 5. Προσθέτουμε το γάλα και ανακατεύουμε. 6. Ρίχνουμε το μείγμα σε ένα λαδωμένο ταψί και ψήνουμε για 25-30 λεπτά.', '• 1 1/2 φλιτζάνι αλεύρι • 1 φλιτζάνι κακάο • 1 κουταλάκι του γλυκού αλάτι • 1 κουταλάκι του γλυκού μαγειρική σόδα • 2 αυγά • 1 φλιτζάνι ζάχαρη • 1/2 φλιτζάνι φυτικό λάδι • 1 κουταλάκι του γλυκού εκχύλισμα βανίλιας • 1 φλιτζάνι γάλα', 'images/chocolate_cake.jpg', '2024-05-25 08:37:14'),
(5, 2, 'Μουσακάς', 'Παραδοσιακός ελληνικός μουσακάς', '1. Κόβουμε τις μελιτζάνες σε φέτες και τις τηγανίζουμε. 2. Σε μια κατσαρόλα, σοτάρουμε το κρεμμύδι και το σκόρδο. Προσθέτουμε τον κιμά και μαγειρεύουμε μέχρι να ροδίσει. 3. Προσθέτουμε την ντομάτα, τον μαϊντανό, το αλάτι και το πιπέρι και μαγειρεύουμε για 30 λεπτά. 4. Σε ένα ταψί, στρώνουμε τις τηγανισμένες μελιτζάνες και από πάνω το μείγμα του κιμά. 5. Ετοιμάζουμε τη μπεσαμέλ και την απλώνουμε πάνω από τον κιμά. 6. Ψήνουμε στους 180°C για 45 λεπτά.', '• 2 μελιτζάνες • 1 κρεμμύδι • 2 σκελίδες σκόρδο • 500 γρ. κιμά • 1 φλιτζάνι ντομάτα τριμμένη • 1 κουταλιά της σούπας μαϊντανό • αλάτι και πιπέρι • για τη μπεσαμέλ: 100 γρ. βούτυρο, 100 γρ. αλεύρι, 1 λίτρο γάλα, 2 αυγά', 'images/moussaka.jpg', '2024-05-25 08:37:14'),
(6, 3, 'Σπανακόπιτα', 'Ελληνική παραδοσιακή σπανακόπιτα με φύλλο κρούστας', '1. Σοτάρουμε το σπανάκι σε ένα μεγάλο τηγάνι μέχρι να μαραθεί. 2. Προσθέτουμε το κρεμμύδι και το σκόρδο και συνεχίζουμε το σοτάρισμα. 3. Σε ένα μπολ, ανακατεύουμε το σπανάκι με τη φέτα, τα αυγά, τον άνηθο, το αλάτι και το πιπέρι. 4. Στρώνουμε τα μισά φύλλα κρούστας σε ένα λαδωμένο ταψί, λαδώνοντας κάθε φύλλο. 5. Απλώνουμε τη γέμιση του σπανακιού πάνω από τα φύλλα. 6. Καλύπτουμε με τα υπόλοιπα φύλλα κρούστας, λαδώνοντας κάθε φύλλο. 7. Ψήνουμε στους 180°C για 45-50 λεπτά μέχρι να ροδίσει.', '• 1 κιλό σπανάκι • 1 κρεμμύδι • 2 σκελίδες σκόρδο • 200 γρ. φέτα • 2 αυγά • 1 κουταλιά της σούπας άνηθο • αλάτι και πιπέρι • 1 πακέτο φύλλο κρούστας • ελαιόλαδο', 'images/spanakopita.jpg', '2024-05-25 08:37:14'),
(7, 4, 'Γαλακτομπούρεκο', 'Γλυκό με φύλλο κρούστας και κρέμα', '1. Ετοιμάζουμε την κρέμα: Ζεσταίνουμε το γάλα σε μια κατσαρόλα. Ανακατεύουμε το σιμιγδάλι, τη ζάχαρη και το βούτυρο. Προσθέτουμε τα αυγά και τη βανίλια και μαγειρεύουμε μέχρι να πήξει η κρέμα. 2. Σε ένα ταψί, στρώνουμε τα μισά φύλλα κρούστας, λαδώνοντας κάθε φύλλο. 3. Ρίχνουμε την κρέμα πάνω από τα φύλλα και καλύπτουμε με τα υπόλοιπα φύλλα κρούστας, λαδώνοντας κάθε φύλλο. 4. Ψήνουμε στους 180°C για 40-45 λεπτά. 5. Ετοιμάζουμε το σιρόπι: Βράζουμε τη ζάχαρη, το νερό και το λεμόνι για 10 λεπτά. Ρίχνουμε το σιρόπι πάνω από το γαλακτομπούρεκο μόλις βγει από τον φούρνο.', '• για την κρέμα: 1 λίτρο γάλα, 100 γρ. σιμιγδάλι, 200 γρ. ζάχαρη, 100 γρ. βούτυρο, 3 αυγά, 1 κουταλάκι του γλυκού βανίλια • για το σιρόπι: 500 γρ. ζάχαρη, 250 ml νερό, 1 λεμόνι • 1 πακέτο φύλλο κρούστας • ελαιόλαδο', 'images/galaktoboureko.jpg', '2024-05-25 08:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'john_doe', '$2y$10$eJds7bQYz3a6RhM5q0M1x.WFyVz.OuIerQVoKl3EsJDaGn8WmZ0Oq', 'john_doe@example.com', '2024-01-01 10:00:00'),
(2, 'jane_doe', '$2y$10$R5ud7K8Q3zI2rRg.Qtd2eOGPx2HfQ1YfPTD0RV9/k8vB3yIbhQYeW', 'jane_doe@example.com', '2024-01-02 11:00:00'),
(3, 'chef_mike', '$2y$10$scfXbVwsa5XsQGp/VxMY7OQvPM9nPT4.yWcWspzTnZFmV8P.uJxVu', 'chef_mike@example.com', '2024-01-03 12:00:00'),
(4, 'maria', '$2y$10$EuP9tvqSE5e9F3TWgOMtI.wUK5QwkCIB5cBl6H5tRKY85UGcdzp5e', 'maraki@gmail.com', '2024-05-25 07:51:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

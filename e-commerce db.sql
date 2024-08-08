-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 06:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `journifly`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CarBookingID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `receive_offers` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CarBookingID`, `UserID`, `name`, `email`, `phone`, `arrival_date`, `departure_date`, `gender`, `nationality`, `message`, `receive_offers`) VALUES
(55, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(56, 2, '', '', '', NULL, NULL, 'male', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `UserID`, `product_image`, `product_name`, `price`, `quantity`, `total`) VALUES
(5, 2, '/images/shop/shop1.jpg', 'Trekking Wood Sticks\r\n', 150.00, 3, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `car_list`
--

CREATE TABLE `car_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `madeIn` varchar(255) DEFAULT NULL,
  `carType` varchar(255) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_list`
--

INSERT INTO `car_list` (`id`, `name`, `madeIn`, `carType`, `distance`, `price`, `photo`) VALUES
(1, 'Ferrari 458 MM Speciale', 'Maranello', 'Sport', 50, 500.00, '/images/cars/3.jpg\r\n'),
(2, 'Pininfarina Sergio', 'Cambiano, Italy\r\n', 'Sport', 100, 1000.00, '/images/cars/5.jpg\r\n'),
(3, 'Bentley Contitental', 'England', 'Luxury', 70, 800.00, '/images/cars/4.jpg\r\n'),
(4, 'Mercedes Benz 2024\r\n', 'Germany', 'sport', 352, 650.00, '/images/cars/2.jpg\r\n'),
(5, 'Ferrari 458 MM', 'Italy', 'Luxury', 75, 545.00, '/images/cars/6.jpg\r\n'),
(6, 'Ferrari F12 TRS', 'Sicily', 'Sport', 90, 768.00, '/images/cars/5.jpg\r\n'),
(7, 'Sukuki Skoda 458 MM', 'Japan', 'Bussiness', 55, 600.00, '/images/cars/7.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `checkoutdetails`
--

CREATE TABLE `checkoutdetails` (
  `CheckoutID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `StreetAddress` varchar(255) NOT NULL,
  `Postcode` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CardNumber` int(11) DEFAULT NULL,
  `CVV` varchar(5) DEFAULT NULL,
  `ExpiryMonth` int(11) DEFAULT NULL,
  `ExpiryYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkoutdetails`
--

INSERT INTO `checkoutdetails` (`CheckoutID`, `UserID`, `FirstName`, `LastName`, `Country`, `City`, `StreetAddress`, `Postcode`, `Phone`, `Email`, `CardNumber`, `CVV`, `ExpiryMonth`, `ExpiryYear`) VALUES
(4, 2, 'Farah', 'Natsheh', 'Argentina', 'Adapazarı', 'sakarya-adapazari-maltepe-orhangazi cd - 54 no apt- essen marketi yanina - eruomaster araç bakım binasında', '', '5345289135', 'natsheh969@gmail.com', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `receive_offers` tinyint(1) DEFAULT NULL,
  `cartName` varchar(255) DEFAULT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `expiry_date` varchar(10) DEFAULT NULL,
  `card_type` enum('MasterCard','Paypal','Visa','Discover') DEFAULT NULL,
  `conEmail` varchar(255) DEFAULT NULL,
  `agree_terms` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `FlightBookingID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `receive_offers` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightBookingID`, `userID`, `name`, `email`, `phone`, `gender`, `nationality`, `message`, `receive_offers`) VALUES
(7, 2, '', '', '', 'male', '', '', 0),
(8, 2, '', '', '', 'male', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flight_list`
--

CREATE TABLE `flight_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `madeIn` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight_list`
--

INSERT INTO `flight_list` (`id`, `name`, `madeIn`, `photo`) VALUES
(1, 'Qatar Airlines', 'Qatar', '/images/flights/flight2.jpg'),
(2, 'Emirates Airlines ', 'United Arab Emirates', '/images/flights/flight4.jpg'),
(3, 'Turkish Airlines', 'Türkiye', '/images/flights/flight1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `HotelBookingID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `receive_offers` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`HotelBookingID`, `userID`, `name`, `email`, `phone`, `arrival_date`, `departure_date`, `gender`, `nationality`, `message`, `receive_offers`) VALUES
(13, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(14, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(15, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(16, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(17, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotels_list`
--

CREATE TABLE `hotels_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `hotelRate` varchar(255) DEFAULT NULL,
  `hotelChain` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels_list`
--

INSERT INTO `hotels_list` (`id`, `name`, `place`, `hotelRate`, `hotelChain`, `price`, `photo`) VALUES
(1, 'The Ritz', 'London, UK', '5-star', 'Independent', 500.00, '/images/rooms/list1.jpg'),
(2, 'Hotel Ritz Paris', 'Paris, France', '5-star', 'Ritz-Carlton', 700.00, '/images/rooms/list8.jpg'),
(3, 'Hotel Adlon Kempinski', 'Berlin, Germany', '5-star', 'Kempinski', 600.00, '/images/rooms/list3.jpg'),
(4, 'Hotel de Russie', 'Rome, Italy', '5-star', 'Rocco Forte Hotels', 550.00, '/images/rooms/list4.jpg'),
(5, 'The Savoy', 'London, UK', '5-star', 'Fairmont Hotels & Resorts', 650.00, '/images/rooms/list5.jpg'),
(6, 'Hotel Danieli', 'Venice, Italy', '5-star', 'Marriott International', 700.00, '/images/rooms/list6.jpg'),
(7, 'The Peninsula Paris', 'Paris, France', '5-star', 'The Peninsula Hotels', 750.00, '/images/rooms/list7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `CarBookingID` int(11) DEFAULT NULL,
  `TrainBookingID` int(11) DEFAULT NULL,
  `HotelBookingID` int(11) DEFAULT NULL,
  `FlightBookingID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cartName` varchar(255) NOT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `expiry_date` varchar(10) DEFAULT NULL,
  `card_type` varchar(20) DEFAULT NULL,
  `conEmail` varchar(255) DEFAULT NULL,
  `agree_terms` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `CarBookingID`, `TrainBookingID`, `HotelBookingID`, `FlightBookingID`, `name`, `cartName`, `card_number`, `expiry_date`, `card_type`, `conEmail`, `agree_terms`) VALUES
(47, NULL, NULL, 17, NULL, '0', '', '', '', 'MasterCard', NULL, NULL),
(48, NULL, 17, NULL, NULL, '0', '', '', '', 'MasterCard', NULL, NULL),
(49, 55, NULL, NULL, NULL, '0', '', '', '', 'MasterCard', NULL, NULL),
(50, NULL, NULL, NULL, 8, '0', '', '', '', 'MasterCard', NULL, NULL),
(51, NULL, 18, NULL, NULL, '0', '', '', '', 'MasterCard', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `itemID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`itemID`, `UserID`, `name`, `photo`, `price`) VALUES
(1, 2, 'Trekking Wood Sticks\r\n', '/images/shop/shop1.jpg', 150.00),
(2, 2, 'Adventure X Bag\r\n', '/images/shop/shop2.jpg', 250.00),
(3, 2, 'Fashion Trek Shoes\r\n', '/images/shop/shop3.jpg', 80.00),
(4, 2, 'Gadget Tools\r\n', '/images/shop/shop4.jpg', 50.00),
(5, 2, 'Perfect Trek Axe\r\n', '/images/shop/shop5.jpg', 350.00),
(6, 2, 'Trekking Tracks', '/images/shop/shop6.jpg', 180.00),
(7, 2, 'Trek Pumpa Cap\r\n', '/images/shop/shop7.jpg', 50.00),
(8, 2, 'Kingcamp Tents', '/images/shop/shop8.jpg', 850.00),
(9, 2, 'Nylong Trek Rope\r\n', '/images/shop/shop9.jpg', 120.00);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `TrainBookingID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `receive_offers` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainBookingID`, `UserID`, `name`, `email`, `phone`, `arrival_date`, `departure_date`, `gender`, `nationality`, `message`, `receive_offers`) VALUES
(13, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(14, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(15, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(16, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(17, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0),
(18, 2, '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `madeIn` varchar(255) DEFAULT NULL,
  `trainType` varchar(255) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`id`, `name`, `madeIn`, `trainType`, `distance`, `price`, `photo`) VALUES
(1, 'Tokyo Serviced Apartment', 'Japan', 'Economy', 200, 50.00, '/images/trains/3.jpg'),
(2, 'Vex Torel Palace ', 'England', 'Bussiness', 75, 60.00, '/images/trains/1.jpg'),
(3, '\r\nForlic Around Frieburg', 'Germany', 'Economy', 56, 30.00, '/images/trains/4.jpg'),
(4, 'Madrid Puerta de Atocha', 'Spain', 'Premium Ekonomy', 45, 80.00, '/images/trains/2.jpg'),
(5, 'Rome Termini ', 'Italy', 'Luxury', 90, 100.00, '/images/trains/6.jpg'),
(6, 'Amsterdam Centraal ', 'Netherlands', 'First class', 30, 40.00, '/images/trains/5.jpg'),
(7, 'Zurich Hauptbahnhof ', 'Switzerland', 'Economy', 33, 50.00, '/images/trains/7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `full_name`, `email`, `password`) VALUES
(2, 'farah', 'natsheh969@gmail.com', '$2y$10$bTty2PQdkzQU/noXlfhrIOf5SWlxCEo9SDKWNb6N38KYBmp1rPpRW');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlistID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlistID`, `itemID`, `name`, `photo`, `price`) VALUES
(74, 2, 'Adventure X Bag\r\n', '/images/shop/shop2.jpg', 250.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarBookingID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `car_list`
--
ALTER TABLE `car_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkoutdetails`
--
ALTER TABLE `checkoutdetails`
  ADD PRIMARY KEY (`CheckoutID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`FlightBookingID`),
  ADD KEY `fk_flights_users` (`userID`);

--
-- Indexes for table `flight_list`
--
ALTER TABLE `flight_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`HotelBookingID`),
  ADD KEY `fk_hotels_users` (`userID`);

--
-- Indexes for table `hotels_list`
--
ALTER TABLE `hotels_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FlightBookingID` (`FlightBookingID`),
  ADD KEY `TrainBookingID` (`TrainBookingID`),
  ADD KEY `HotelBookingID` (`HotelBookingID`),
  ADD KEY `idx_CarBookingID` (`CarBookingID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`TrainBookingID`),
  ADD KEY `fk_trains_users` (`UserID`);

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlistID`),
  ADD KEY `id` (`itemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CarBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `checkoutdetails`
--
ALTER TABLE `checkoutdetails`
  MODIFY `CheckoutID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `confirmation`
--
ALTER TABLE `confirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `FlightBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flight_list`
--
ALTER TABLE `flight_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `HotelBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hotels_list`
--
ALTER TABLE `hotels_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `TrainBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `train_list`
--
ALTER TABLE `train_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_cars_users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `checkoutdetails`
--
ALTER TABLE `checkoutdetails`
  ADD CONSTRAINT `checkoutdetails_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `fk_flights_users` FOREIGN KEY (`userID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `fk_hotels_users` FOREIGN KEY (`userID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_CarBookingID` FOREIGN KEY (`CarBookingID`) REFERENCES `cars` (`CarBookingID`),
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`FlightBookingID`) REFERENCES `flight` (`FlightBookingID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`TrainBookingID`) REFERENCES `train` (`TrainBookingID`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`HotelBookingID`) REFERENCES `hotels` (`HotelBookingID`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `train`
--
ALTER TABLE `train`
  ADD CONSTRAINT `fk_trains_users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `shop` (`itemID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

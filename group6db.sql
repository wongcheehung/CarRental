-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 01:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group6db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(20) NOT NULL,
  `adminName` varchar(30) NOT NULL,
  `adminPassword` varchar(30) NOT NULL,
  `adminFirstName` varchar(30) NOT NULL,
  `adminMobile` varchar(20) NOT NULL,
  `adminIc` varchar(20) NOT NULL,
  `adminAge` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `adminPassword`, `adminFirstName`, `adminMobile`, `adminIc`, `adminAge`) VALUES
(6, 'admin', '123', 'Car Owner', '01123828365', '981020080000', 23);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingId` varchar(30) NOT NULL,
  `bookingDate` varchar(30) NOT NULL,
  `bookingTime` varchar(30) NOT NULL,
  `bookingDuration` int(11) NOT NULL,
  `bookingPrice` int(20) NOT NULL,
  `rating` int(30) NOT NULL,
  `carId` int(20) NOT NULL,
  `userId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingId`, `bookingDate`, `bookingTime`, `bookingDuration`, `bookingPrice`, `rating`, `carId`, `userId`) VALUES
('5311GAP9', '2021/11/27', '2.00pm', 5, 15, 0, 3, 2),
('89Z5RE6I', '2021/11/24', '2.00pm', 5, 30, 0, 1, 2),
('IF6OW2OA', '2020/07/24', '1.00pm', 2, 16, 0, 2, 4),
('OOEEX7ZM', '2020/07/24', '3.00pm', 10, 50, 0, 3, 6),
('W1L8WN43', '2021/11/26', '2.00pm', 5, 25, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carId` int(20) NOT NULL,
  `carName` varchar(30) NOT NULL,
  `carPrice` int(20) NOT NULL,
  `carDesc` varchar(200) NOT NULL,
  `carImage` longblob NOT NULL,
  `carImageName` varchar(250) NOT NULL,
  `adminId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carId`, `carName`, `carPrice`, `carDesc`, `carImage`, `carImageName`, `adminId`) VALUES
(1, 'Car 1', 1, '\"Car 1 Description\"', 0x89504e470d0a1a0a0000000d49484452000000ba0000006e08020000001fc39e9f000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000031749444154785eedda6172aa301440e1ae8b05b91e56e366584c1b28d55c4c420e8e5867cef7ab7d4874b8c7687d7e7d4bddcc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622e0037399a6eb781986e1eb4ffaf9325ea7f570d1f572bf79325caeeb81479b9be63aeea86acad71dc6638bbcdd67e532a54ed62b5e9022a84ce17a596f7253ed651a1bf7b0aadf51d192f77aea2f7379bdc6d3fea65cc1632df589f5e4326bec4fb9b0a9dc98cb8b6da738642f0abfaf4eeb3f3fcea112406564e1d67913dbc1778cbc1ab8b9bcd466e2c567f632cec291ecdcd458b6507966d55c66619bdadd5fee4bcd6f79c6ec5c7379a5304278a9432d5358aab8523397d0cbee035996babd3946a7fe579f904b784e3f574bcca1b4567f2ebbbb4b92ad6f2ee708037cb696dd5e9ab93c3372733947d85c7a9ed277855af67aa9e592de4f8737aeec8124e6728ee3b9146ba917b108076b5a1ff3d598cb390ee7929d18e7d3ea652f97c39feb9acb398ee652ada5d9cbeeee7274d4e6728e30c0fe0b1d2a6b0abd144bdabc6f39346d7339c9a1eda5bf96b8666de389bb4eefa3c898cb49e2a4fa2e35a9a59e45a8221ce1033797d3c4e1572ef63ccebf43d909b5d18435ef5dd473d9644b371873394f9c54badee1ef9387ff62cc47531d6be8e536c0462ed5c4ba98cba9c2a86a963934279e29f6d23eb99c584dd74386d5bdd7e7e492b4bf1d357f7836cfafb796f2f077ce0e87f7466d2eefb7fdea651af4f2d2747ba6675f5218c6bd793eb491fe665e7faf9c9e37b0b3bff4e4b2bb45fd2b9f978bdec85c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602eeaf6fdfd033f54d11db348180d0000000049454e44ae426082, 'Car 1.png', 6),
(2, 'Car 2', 2, '\"Car 2 Description\"', 0x89504e470d0a1a0a0000000d49484452000000ba0000006e08020000001fc39e9f0000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000034349444154785eeddae1759b301440e1ccc5409ec7d3781986496597243c21095ddc9e23c8fd7eb5b19129ef223b693e3ea56ee622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908183597797edc6fd3347d7c497fbedd1ff3f270d1e3f6f3f464ba3d9607b6b2a7ae75bc50c172becb1ac9a1558637602e73baeecb352f48115486f0b82d4ff956ed65be375e61517fa1ccdc68ef63ba5f2a99d172695dfa2fe50ab6b5d487d593cb53637f5a74acb4bfc8790c954b7eeda7d576fe77b75fbebc8da032b64a2fe1d9eb71e63bc5eee6b044ba7ae749e7999dca8576988172c9265ebc295fe32c3cb23a3635b65aa83caa6a2e4f619bdadb1ad24adb77adec5fb2bbc8798c934bb8c6f0860cb5cc61a9e24ae1b536c35cf7726c67c87a31977f2edcd3efd512c7555aab3f9763933697ff2c5ce0776bd9eda599cbfb9b4b6cffe822231a25977081d9dd58a865af975a2ee9f374f8a87b705b88b55c676fb9422ec55aea45bc84076b5a3fe66bb9ecd6929c3e97d5817132ad5ef67279e327b2578ee5fcb9546b69f6b2bbbb1c1c73b6eed56239fd47dd782fb7845e8a25659f5bf0ac2fdf4a324a2ec7b697fe5ae29ac55c9238f1deb37889a772f473cfe886c9254eaaefd624b5d4b308930d8f746f10bfa39564985c36d7bc3caae738bf1e5a1d501b6c58f3678af55cb26c7b061f8fe83ae4b406ca25bfeed9f7279bff625ca7509d51e8e53baa462ed5c4ca7e532bc948b924615435afa93727be52eca57d7039b1a2aef34ddaab9cc760b924eddf8e7a7e30785ef9de5acac3df393a6e19add5cd6508f9af5ea60bfe7a6bfabee8ab5f5298eead5a9e23ddb491be675efe5e397c9d416bd431ac3a73d12f642e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602e02cc4580b908301701e622c05c04988b007311602eeaf6f9f907650e9b441387c46a0000000049454e44ae426082, 'Car 2.png', 6),
(3, 'Car 3', 3, '\"Car 3 Description\"', 0x89504e470d0a1a0a0000000d49484452000000ba0000006e08020000001fc39e9f0000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000044449444154785eeddd3172da40004661c859c085c7271027b0dda4729b0e4abb4997d29d1b284d97d6951bc30d38812785a5bb900516b42badc4fe30935994f735510212327ada95c033e9afd7eb1e10e79bfd1388402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40241dab914c57236198d46fd3db33c992d0bfb70d072523edd184d96f681baca535d112f14b0db5dbb09e3b4ada46c9da87c3aceec2e0664e3456e9f58b118dba71c8c17f6a1aa7cdaf20a56f30b55e48b96fdcda6711b495e9ab9b4bdf57be10aeab5341fac985c361a7b3b38bea58e0493e06454cc4677f395fd8b914dcb133ccf17fb51e7f3ab3ec817b3e7b95d74acde3e8ecf076e13959162fe3c8b9c4f366391dd57b3a3ee36564f2fcd93e205d9fd70e9a89ca8c1337b7b38038f38eb9ac69c0d85cf6defa5aa9bf386a963e38bd95268d692b6711152cbc53b84e208eed5927b9b0a6ea93517ef589f3895742f97c426a3e5cb53390d650ff703bb18a3f878dbafbb5d7370ff70c8216a3e6a7673a5ecc85ef1f569978cf1f75bbb74c9d2cac57b83cfaca5775e2fcbf7f22a28bb1edaa55845616ed28765fad9f467176a49ecdae58cd1bb3213d5fe3130a1344d46e67adabbd48ddc116fe71dd9f8b4a92c455df954b73eb66c78e34bfbbdc9fcce7eb4d6ef0f87ce9d99b9847d8d1a18bc91b1948d6faeafec7207d86cd270f2e8e2ace88f226d97b3de6301665888fc8c6eab6974d93af1623935dd185d9c0b8dca158f3bbef4e6efd2671fabcfde50b87aba7db5efe946f9f9d0ceea69d8f26dc4e5b03f5e1abcf33dfe846c3daf3ddef8121c792ad72d678d0a95e1ab03234c5aa3cbe0eac62e19ab3fb95d3ac2bd8939e2f8f832b87dfded1ce5b33e8df58636e1074a576293d1f0da797f233f7c176a899b8f068f6e30f15f01fc0712cb65f0f8cb9958564f3fc287aa988dfa23fb907bddd230dabb9355d4f58b372c9c3ec038b76b1bfac737e9b1ef683aaaf72bfefd49790969db705368bc97f22e6e0e5105af5df6bc551a37bcb379aed94db39fce8ed67e03e3c8462e427ab918dea16ab23deaad47dc11eca57de570624131fbdb855852fd7d97cda1ac9c9b3efbfd6f6c2de1837f646defe1d6adfbcfac8bfe1dabe4a59acbd676e6c9dc43916da7a6c37beffc9242366d3f7dbdfbe3ddb137f7ccf6ef0dabbb8db58f2fbb7dadedacbfb71dc07f3b0e4157be33c23f412e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e40201b940402e10900b04e48268bdde5fe67a8755d81e8f2a0000000049454e44ae426082, 'Car 3.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceId` varchar(30) NOT NULL,
  `invoiceDate` date NOT NULL,
  `bookingId` varchar(20) NOT NULL,
  `paymentId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceId`, `invoiceDate`, `bookingId`, `paymentId`) VALUES
('4I6I9T', '2020-07-24', 'IF6OW2OA', 'GB23631'),
('4PCHI9', '2021-11-27', '5311GAP9', 'RWQP25T'),
('6SDY95', '2021-11-26', 'W1L8WN43', 'DGT6EQZ'),
('8RAH8H', '2020-07-24', 'OOEEX7ZM', 'MLPEXKO'),
('8U2DZ7', '2021-11-24', '89Z5RE6I', '7WEC7RO');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` varchar(30) NOT NULL,
  `paymentAmount` int(20) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `paymentDesc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `paymentAmount`, `paymentMethod`, `paymentDesc`) VALUES
('7WEC7RO', 30, 'Credit Card', 'Successfully'),
('8KK7ZHE', 42, 'Credit Card', 'Successfully'),
('DGT6EQZ', 25, 'Credit Card', 'Successfully'),
('FKYGSHK', 12, 'Credit Card', 'Successfully'),
('GB23631', 16, 'Credit Card', 'Successfully'),
('ISSILRR', 24, 'Credit Card', 'Successfully'),
('L8SNFJF', 8, 'Credit Card', 'Successfully'),
('MLPEXKO', 50, 'Credit Card', 'Successfully'),
('RWQP25T', 15, 'Credit Card', 'Successfully');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `replyId` bigint(20) NOT NULL,
  `replyContent` varchar(30) NOT NULL,
  `replyDate` date NOT NULL,
  `topicId` int(20) NOT NULL,
  `adminId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`replyId`, `replyContent`, `replyDate`, `topicId`, `adminId`) VALUES
(7, 'asdegr', '2020-07-23', 9, 6),
(8, '32165', '2020-07-23', 9, 6),
(9, 'I have no idea what is this to', '2020-07-24', 9, 6),
(10, 'Reply 1', '2020-07-24', 10, 6),
(11, 'Reply 2', '2020-07-24', 10, 6),
(12, 'I am good thanks.', '2020-07-24', 11, 6),
(13, 'Testing Comment', '2021-11-27', 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topicId` int(20) NOT NULL,
  `topicTitle` varchar(250) NOT NULL,
  `topicSubject` varchar(30) NOT NULL,
  `topicDate` varchar(30) NOT NULL,
  `adminId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topicId`, `topicTitle`, `topicSubject`, `topicDate`, `adminId`) VALUES
(8, 'hello', 'ghy', '2020/07/23', 6),
(9, 'pppp', 'hi', '2020/07/23', 6),
(10, 'How are you today.', 'xD', '2020/07/24', 6),
(11, 'How old are you?', 'Hehe', '2020/07/24', 6),
(12, 'Testing Title', 'Testing Comment', '2021/11/27', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(20) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userPassword` varchar(30) NOT NULL,
  `userFirstName` varchar(30) NOT NULL,
  `userMobile` varchar(30) NOT NULL,
  `userIc` varchar(30) NOT NULL,
  `userAge` int(30) NOT NULL,
  `userLicense` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userPassword`, `userFirstName`, `userMobile`, `userIc`, `userAge`, `userLicense`) VALUES
(2, 'user2', '123', 'User2', '0128963451', '222222332222', 20, '16/09/2022'),
(3, 'user3', '123', 'User3', '0138740562', '333333443333', 30, '16/09/2022'),
(4, 'user4', '123', 'User4', '0148954268', '444444554444', 40, '11/11/2022'),
(5, 'user5', '123', 'User5', '0152402398', '555555665555', 50, '11/12/2022'),
(6, 'user6', '123', 'User6', '0168920143', '666666776666', 60, '11/10/2022'),
(7, 'user7', '123', 'User7', '0170326587', '777777887777', 70, '25/11/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `booking_car` (`carId`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carId`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceId`),
  ADD KEY `bookingId` (`bookingId`),
  ADD KEY `paymentId` (`paymentId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`replyId`),
  ADD KEY `adminId` (`adminId`),
  ADD KEY `topicId` (`topicId`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topicId`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `carId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `replyId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topicId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_car` FOREIGN KEY (`carId`) REFERENCES `car` (`carId`),
  ADD CONSTRAINT `booking_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `admin_car` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_booking` FOREIGN KEY (`bookingId`) REFERENCES `booking` (`bookingId`),
  ADD CONSTRAINT `invoice_payment` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`paymentId`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_admin` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`),
  ADD CONSTRAINT `reply_topic` FOREIGN KEY (`topicId`) REFERENCES `topic` (`topicId`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_admin` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 11:59 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `poruductID` int(11) NOT NULL,
  `price` double(11,2) NOT NULL,
  `total` double(11,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_code` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orderid` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` double(11,2) NOT NULL,
  `productID` int(11) NOT NULL,
  `total` double(11,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `modeofpayment` varchar(100) NOT NULL,
  `transaction_code` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderid`, `memberID`, `qty`, `price`, `productID`, `total`, `status`, `modeofpayment`, `transaction_code`) VALUES
(4, 17, 4, 1000.00, 11, 100000.00, 'Delivered', 'Paypal', ''),
(5, 17, 3, 3000.00, 12, 300000.00, 'Delivered', 'Paypal', ''),
(6, 18, 1, 1000.00, 30, 1000.00, 'Delivered', 'Paypal', ''),
(7, 19, 1, 1200.00, 95, 1200.00, 'Delivered', 'Paypal', ''),
(8, 19, 4, 1200.00, 76, 4800.00, 'Delivered', 'Paypal', ''),
(12, 19, 1, 1399.00, 34, 1399.00, 'Pending', '', ''),
(58, 1, 2, 900.00, 94, 1800.00, 'Pending', '', ''),
(56, 1, 1, 900.00, 78, 900.00, 'Pending', '', ''),
(55, 20, 9, 600.00, 92, 5400.00, 'Delivered', 'Paypal', ''),
(39, 20, 4, 900.00, 90, 3600.00, 'Pending', '', ''),
(40, 20, 1, 900.00, 90, 900.00, 'Pending', '', ''),
(41, 20, 1, 1399.00, 83, 1399.00, 'Pending', '', ''),
(42, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(43, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(44, 20, 5, 1000.00, 82, 5000.00, 'Pending', '', ''),
(45, 20, 4, 1000.00, 82, 4000.00, 'Pending', '', ''),
(46, 20, 4, 1000.00, 82, 4000.00, 'Pending', '', ''),
(47, 20, 2, 1000.00, 82, 2000.00, 'Pending', '', ''),
(48, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(49, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(50, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(51, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', ''),
(52, 20, 1, 1000.00, 82, 1000.00, 'Pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE `tb_member` (
  `memberID` int(25) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Contact_Number` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_member`
--

INSERT INTO `tb_member` (`memberID`, `Firstname`, `Lastname`, `Email`, `Password`, `Contact_Number`, `address`) VALUES
(20, 'Asm', 'Shiam', 'abc@xyz.com', '1234', '01917654567', 'Khulna'),
(18, 'Abdullah al', 'Shiam', 'asmshiam@yahoo.com', '143143', '01912346421', 'rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(200) NOT NULL,
  `originated` varchar(500) NOT NULL,
  `price` double(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`productID`, `name`, `description`, `category`, `originated`, `price`, `quantity`, `location`) VALUES
(11, 'c21-college', 'gray & blue', 'School', 'USA', 1000.00, 100, 'upload/C21-COLLEGE-AND-SCHOOL-BAG-SDL129446205-1-935a9.JPG'),
(10, 'Louis-Vuitton', 'Leather brown & peach', 'Hand', 'USA', 12000.00, 100, 'upload/Louis-Vuitton-Neverfull-GM.jpg'),
(12, '40L', 'Hiking Bag Red & Black', 'Travelling', 'USA', 3000.00, 100, 'upload/40L-brand-hiking-backpacks-High-quality-waterproof-Nylon-men-travel-bags-sports-shoulder-bags-Laptop-rucksack.jpg'),
(13, 'Ladies Hand Bag', 'Black', 'Hand', 'Bangladesh', 1200.00, 4, 'upload/black.jpg'),
(14, 'Buddha-Handbag', 'Golden', 'Hand', 'Bangladesh', 699.00, 4, 'upload/Buddha-Handbag-New-Design-2011.jpg'),
(15, 'Chee', 'Original Leather', 'Hand', 'Malayasia', 1399.00, 4, 'upload/chee.jpg'),
(16, 'Cute Leather', 'Blue and Golden', 'Hand', 'London', 2499.00, 4, 'upload/cute.jpg'),
(17, 'Dior-Diorissimo', 'Blue', 'Hand', 'London', 1399.00, 4, 'upload/Dior-Diorissimo.jpg'),
(76, 'Girls School Bag', 'Pink', 'School', 'USA', 1200.00, 4, 'upload/download (1).jpg'),
(19, 'Green Leather', 'Green', 'Hand', 'Bangladesh', 1200.00, 4, 'upload/green.jpg'),
(20, 'Tan Polyurethane (Pu) Handbag', 'Tan', 'Hand', 'Bangladesh', 0.00, 4, 'upload/Leather.jpg'),
(21, 'Narciso', 'Red', 'Hand', 'Malayasia', 1200.00, 4, 'upload/Narciso.jpg'),
(22, 'Pinkish', 'Pink', 'Hand', 'London', 1399.00, 5, 'upload/pinkish.jpg'),
(23, 'Polyurethane (Pu) Handbag', 'Yellow and Gray', 'Hand', 'USA', 3000.00, 2, 'upload/re.jpg'),
(30, 'Girls School Bag', 'PInk and White', 'School', 'Bangladesh', 1000.00, 4, 'upload/girls.jpg'),
(31, 'Girls School Bag', 'Green and Gray', 'School', 'Bangladesh', 1200.00, 4, 'upload/College-Bags-for-Girls-2015-2.jpg'),
(34, 'School Travel Bag', 'Red and Pink', 'School', 'Bangladesh', 1399.00, 4, 'upload/Trolley-School-Bag-Travel-Bag-Backpack-With-Wheels-Back-To-School-Backpack-For-Girls-And-Boys.jpg'),
(35, 'Girls School Bag', 'PInk and White', 'School', 'Bangladesh', 1000.00, 5, 'upload/N226-888-A.jpg'),
(36, 'Boys School bag', 'Blue', 'School', 'Bangladesh', 1200.00, 5, 'upload/SCHOOL.jpg'),
(92, 'Jack & Jones Men Grey T-shirt-M', 'Yellow ', 'T-Shirt', 'Bangladesh', 600.00, 9, 'upload/tshirt10.jpg'),
(77, 'Ladies Hand Bag', 'Original Leather,Orange', 'Hand', 'USA', 1400.00, 5, 'upload/orange.jpg'),
(78, 'Jack & Jones Men Grey T-shirt-M', 'white', 'T-Shirt', 'Bangladesh', 900.00, 8, 'upload/tshirt1.jpg'),
(44, 'Teenagers School Bag', 'Red', 'School', 'Bangladesh', 1200.00, 2, 'upload/nike-backpack-laptop-bag-school-bag-travel-bag-aeioumall-1412-22-aeioumall@1.jpg'),
(43, 'Teenagers School Bag', 'Red and Violet', 'School', 'Bangladesh', 1000.00, 5, 'upload/41ikjGcs-BL._AC_UL320_SR270,320_.jpg'),
(45, 'Trolley School Bag', 'Blue', 'School', 'Bangladesh', 1399.00, 4, 'upload/kid (3).jpg'),
(46, 'Kids School bag', 'Yellow Orange', 'School', 'Bangladesh', 700.00, 5, 'upload/kid (2).jpg'),
(48, 'Kids School bag', 'Black', 'School', 'Bangladesh', 700.00, 4, 'upload/kid (1).jpg'),
(49, '71Audi-Travel-Bag', 'Black', 'Travelling', 'USA', 3000.00, 4, 'upload/71Audi-Travel-Bag.jpg'),
(50, 'Trolley Travel', 'Black', 'Travelling', 'USA', 2499.00, 4, 'upload/bagT2.jpg'),
(51, 'Luggage Bag', 'Golden', 'Travelling', 'London', 3400.00, 4, 'upload/che.jpg'),
(52, 'Luggage Bag', 'Golden Leather', 'Travelling', 'Malayasia', 2499.00, 4, 'upload/il_340x270.503088905_78c6.jpg'),
(53, 'Trolley Travel', 'Red Black and Blue', 'Travelling', 'Malayasia', 3000.00, 4, 'upload/pic2.jpg'),
(54, 'Shoulder Travel Bag', 'Hiking Bag Black', 'Travelling', 'USA', 3200.00, 4, 'upload/Travel-bag-waterproof-mountaineering-bag-outside-sport-backpack-large-capacity-casual-travel-backpack-60l.jpg'),
(55, 'Twister Travel', 'white', 'Travelling', 'China', 4000.00, 50, 'upload/twinster travel.jpg'),
(56, 'President Chase Small Travel Bag', 'Small travel bag Blue', 'Travelling', 'USA', 5500.00, 60, 'upload/president chase small travel.jpeg'),
(57, 'President Chase Small Travel Bag', 'Small Travel Bag - Red', 'Travelling', 'London', 3000.00, 30, 'upload/President Chase Small Travel Bag - Large.jpeg'),
(58, 'One Up DB300008 Expandable', 'Small,Yellow', 'Travelling', 'USA', 3000.00, 45, 'upload/One Up DB300008 Expandable Small Travel Bag - Large.jpeg'),
(59, 'President Foldin (L) Expandable ', 'Black,Small', 'Travelling', 'USA', 4000.00, 80, 'upload/foldinlyellow-president-foldin-l-400x400-imadu8yf66ahhnhg.jpeg'),
(94, 'Jack & Jones Men Grey T-shirt-M', 'Blue', 'T-Shirt', 'Bangladesh', 900.00, 9, 'upload/tshirt12.jpg'),
(93, 'Jack & Jones Men Grey T-shirt-M', 'Gray', 'T-Shirt', 'Bangladesh', 1000.00, 10, 'upload/tshirt11.jpg'),
(87, 'Jack & Jones Men Grey T-shirt-M', 'Black', 'T-Shirt', 'Bangladesh', 600.00, 10, 'upload/tshirt9.jpg'),
(91, 'Jack & Jones Men Grey T-shirt-M', 'Red', 'T-Shirt', 'Bangladesh', 500.00, 10, 'upload/tshirt8.jpg'),
(80, 'Jack & Jones Men Grey T-shirt-M', 'Red', 'T-Shirt', 'Bangladesh', 1200.00, 5, 'upload/tshirt2.jpg'),
(81, 'Jack & Jones Men Grey T-shirt-M', 'Black', 'T-Shirt', 'Bangladesh', 600.00, 50, 'upload/tshirt3.jpg'),
(82, 'Jack & Jones Men Grey T-shirt-M', 'Red', 'T-Shirt', 'Bangladesh', 1000.00, 9, 'upload/tshirt4.jpg'),
(83, 'Jack & Jones Men Grey T-shirt-M', 'Orange', 'T-Shirt', 'Bangladesh', 1399.00, 9, 'upload/tshirt5.jpg'),
(90, 'Jack & Jones Men Grey T-shirt-M', 'Red', 'T-Shirt', 'Bangladesh', 900.00, 9, 'upload/tshirt6.jpg'),
(85, 'Jack & Jones Men Grey T-shirt-M', 'Black', 'T-Shirt', 'Bangladesh', 900.00, 10, 'upload/tshirt7.jpg'),
(95, 'Celio-Blue-Solid', 'Slim-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1200.00, 9, 'upload/Celio-Blue-Solid-Slim-Fit-Casual-Shirt-8602-9311691-1-catalog_s.jpg'),
(96, 'Celio-Light-Blue', 'Regular-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1399.00, 10, 'upload/Celio-Light-Blue-Regular-Fit-Casual-Shirt-0811-3488921-1-catalog_s.jpg'),
(97, 'Incult-Purple', 'Slim-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Incult-Purple-Slim-Fit-Casual-Shirt-1003-1914151-1-catalog_s.jpg'),
(98, 'Mens Navy Check ', 'Casula Shirt', 'Casual_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Mens Navy Check Casula Shirt.jpg'),
(99, 'Pepe-Jeans-Blue-Checks', 'Regular-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Pepe-Jeans-Blue-Checks-Regular-Fit-Casual-Shirt-1466-8657261-1-catalog_s.jpg'),
(100, 'Pepe-Jeans-White-Solid', 'Regular-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Pepe-Jeans-White-Solid-Regular-Fit-Casual-Shirt-1536-1296881-1-catalog_s.jpg'),
(101, 'Phosphorus-Maroon-Acid', 'Slim-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Phosphorus-Maroon-Acid-Washed-Slim-Fit-Casual-Shirt-0118-5690751-1-catalog_s.jpg'),
(102, 'Tommy-Hilfiger-Grey', 'Regular-Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Tommy-Hilfiger-Grey-Regular-Fit-Casual-Shirt-0623-5576471-1-catalog_s.jpg'),
(103, 'Tom-Tailor-Navy-Blue-', 'Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1399.00, 10, 'upload/Tom-Tailor-Navy-Blue-Fit-Casual-Shirt-7202-1136861-1-catalog_s.jpg'),
(104, 'Tom-Tailor-Navy-Blueirt', 'Fit-Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1000.00, 10, 'upload/U.S.-Polo-Assn.-White-Solid-Regular-Fit-Casual-Shirt-2507-7610881-1-catalog_s.jpg'),
(105, 'United-Colors-of-Benetton', 'Navy-Blue-Solid-Slim-Fit-Casual-Shirt', 'Casual_Shirt', 'USA', 1200.00, 10, 'upload/United-Colors-of-Benetton-Navy-Blue-Solid-Slim-Fit-Casual-Shirt-2723-0402661-1-catalog_s.jpg'),
(106, 'Wrangler-Blue', 'Casual-Shirt', 'Casual_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Wrangler-Blue-Casual-Shirt-2018-6705771-1-catalog_s.jpg'),
(107, 'Arrow-Navy-Blue', 'Slim-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Arrow-Navy-Blue-Slim-Fit-Formal-Shirt-4598-1650061-1-catalog_s_lr.jpg'),
(108, 'Park-Avenue-Blue-Checked', 'Slim-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Park-Avenue-Blue-Checked-Slim-Fit-Formal-Shirt-1941-7557661-1-catalog_s_lr.jpg'),
(109, 'Peter-England-Light-Blue', 'Solid-Slim-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1399.00, 10, 'upload/Peter-England-Light-Blue-Solid-Slim-Fit-Formal-Shirt-5085-9240471-1-catalog_s_lr.jpg'),
(110, 'Raymond-Blue-Solid', 'Regular-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Raymond-Blue-Solid-Regular-Fit-Formal-Shirt-4724-4636061-1-catalog_s_lr.jpg'),
(111, 'Turtle-Blue-Solid', 'Slim-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1000.00, 10, 'upload/Turtle-Blue-Solid-Slim-Fit-Formal-Shirt-6633-1959481-1-catalog_s_lr.jpg'),
(112, 'Van-Heusen-Blue-Printed', 'Regular-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1399.00, 10, 'upload/Van-Heusen-Blue-Printed-Regular-Fit-Formal-Shirt-2039-0931361-1-catalog_s_lr.jpg'),
(113, 'Van-Heusen-Blue', 'Solid-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1200.00, 10, 'upload/Van-Heusen-Blue-Solid-Formal-Shirt-7010-8602951-1-catalog_s_lr.jpg'),
(114, 'Van-Heusen-Light-Blue', 'Striper-Regular-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1350.00, 10, 'upload/Van-Heusen-Light-Blue-Striper-Regular-Fit-Formal-Shirt-9606-1931361-1-catalog_s_lr.jpg'),
(115, 'Van-Heusen-Light-Blue', 'Striper-Regular-Fit-Formal-Shirt', 'Men_Formal_Shirt', 'Bangladesh', 1350.00, 10, 'upload/Van-Heusen-Light-Blue-Striper-Regular-Fit-Formal-Shirt-9606-1931361-1-catalog_s_lr.jpg'),
(116, 'Adidas-Yellow-Printed', 'V-Neck-T-Shirts', 'Men_Polos_And_Tees', 'USA', 1200.00, 10, 'upload/Adidas-Yellow-Printed-V-Neck-T-Shirts-1175-073373-1-catalog_s_lr.jpg'),
(117, 'Flying-Machine-Black', 'Printed-Round-Neck-T-Shirt-', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/Flying-Machine-Black-Printed-Round-Neck-T-Shirt-2508-8049091-1-catalog_s_lr.jpg'),
(118, 'Incult-Multicoloured', 'Printed-Round-Neck-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1200.00, 10, 'upload/Incult-Multicoloured-Printed-Round-Neck-T-Shirt-4629-3870291-1-catalog_s_lr.jpg'),
(119, 'Nike-Black-Solid', 'Round-Neck-T-Shirts', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/Nike-Black-Solid-Round-Neck-T-Shirts-3478-845293-1-catalog_s_lr.jpg'),
(120, 'Phosphorus-Blue', 'Round-Neck-Melange-T-Shirt-With-Printed-Patch-Pocket', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/Phosphorus-Blue-Round-Neck-Melange-T-Shirt-With-Printed-Patch-Pocket-2675-5551901-1-catalog_s_lr.jpg'),
(121, 'Phosphorus-Grey', 'Milange-Solid-Round-Neck-T-Shirts', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/Phosphorus-Grey-Milange-Solid-Round-Neck-T-Shirts-1194-388535-1-catalog_s_lr.jpg'),
(122, 'Phosphorus-White', 'Henley-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1200.00, 10, 'upload/Phosphorus-White-Henley-T-Shirt-5389-5841901-1-catalog_s_lr.jpg'),
(123, 'Puma-Summer', 'Graphic-Logo--Black-Tee', 'Men_Polos_And_Tees', 'USA', 1200.00, 10, 'upload/Puma-Summer-Graphic-Logo--Black-Tee-2175-5582451-1-catalog_s_lr.jpg'),
(124, 'Tagd-New-York', 'White-Printed-Round-Neck-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1399.00, 10, 'upload/Tagd-New-York-White-Printed-Round-Neck-T-Shirts-8229-1812641-1-catalog_s_lr.jpg'),
(125, 'Tagd-New-York', 'White-Printed-Round-Neck-T-Shirts', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/Tagd-New-York-White-Printed-Round-Neck-T-Shirts-9339-8612641-1-catalog_s_lr.jpg'),
(126, 'United-Colors-of-Benetton', 'Black-Solid-Round-Neck-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1200.00, 10, 'upload/United-Colors-of-Benetton-Black-Solid-Round-Neck-T-Shirt-1212-8491661-1-catalog_s_lr.jpg'),
(127, 'United-Colors-of-Benetton', 'Blue-Striped-Henley-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/United-Colors-of-Benetton-Blue-Striped-Henley-T-Shirt-6015-4464191-1-catalog_s_lr.jpg'),
(128, 'United-Colors-of-Benetton', 'Blue-Striped-Henley-T-Shirt', 'Men_Polos_And_Tees', 'USA', 1000.00, 10, 'upload/United-Colors-of-Benetton-Blue-Striped-Henley-T-Shirt-6015-4464191-1-catalog_s_lr.jpg'),
(129, 'The-Indian-Garage-Co', 'Dark-Grey-Solid-Blazer', 'Blazers', 'India', 5000.00, 10, 'upload/The-Indian-Garage-Co.-Dark-Grey-Solid-Blazer-9428-8474391-1-catalog_s.jpg'),
(130, 'The-Indian-Garage-Co', 'Navy-Blue-Solid-Blazer', 'Blazers', 'India', 4999.00, 10, 'upload/The-Indian-Garage-Co.-Navy-Blue-Solid-Blazer-7618-1574391-1-catalog_s.jpg'),
(131, 'The-Indian-Garage-Co', 'Red-Solid-Blazer', 'Blazers', 'India', 5000.00, 10, 'upload/The-Indian-Garage-Co.-Red-Solid-Blazer-8818-5574391-1-catalog_s.jpg'),
(132, 'Wintage-Beige', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Beige-Solid-Blazer-5602-4153691-1-catalog_s.jpg'),
(133, 'Wintage-Blue', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Blue-Solid-Blazer-5719-5812181-1-catalog_s.jpg'),
(134, 'Wintage-Cream', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Cream-Solid-Blazer-7836-2612181-1-catalog_s.jpg'),
(135, 'Wintage-Green', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Green-Solid-Blazer-4629-1712181-1-catalog_s.jpg'),
(136, 'Wintage-Peach', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Peach-Solid-Blazer-9524-3712181-1-catalog_s.jpg'),
(137, 'Wintage-Purple', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Purple-Solid-Blazer-6309-6712181-1-catalog_s.jpg'),
(138, 'Wintage-Silver', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Silver-Solid-Blazer-6367-0812181-1-catalog_s.jpg'),
(139, 'Wintage-Silver', 'Solid-Blazer', 'Blazers', 'USA', 7000.00, 10, 'upload/Wintage-Silver-Solid-Blazer-6367-0812181-1-catalog_s.jpg'),
(140, 'Adidas-Wo-Vest', 'Green-Bomber-Jacket', 'Jacket', 'USA', 2400.00, 10, 'upload/Adidas-Wo-Vest-Green-Bomber-Jacket-2302-8199571-1-catalog_s.jpg'),
(141, 'Flying-Machine', 'Khaki-Cotton-Bomber-Jacket', 'Jacket', 'USA', 2500.00, 10, 'upload/Flying-Machine-Khaki-Cotton-Bomber-Jacket-8735-941624-1-catalog_s.jpg'),
(142, 'Lee-Black', 'Quilted-Jacket', 'Jacket', 'USA', 3000.00, 10, 'upload/Lee-Black-Quilted-Jacket-6438-369837-1-catalog_s.jpg'),
(143, 'Nike-Alliance-Vest-Flip', 'Navy-Blue-Bomber-Jacket', 'Jacket', 'USA', 2300.00, 10, 'upload/Nike-Alliance-Vest-Flip-It-Navy-Blue-Bomber-Jacket-1725-9827751-1-catalog_s.jpg'),
(144, 'Nike-As-Mfill-Lng', 'Black-Bomber-Jacket', 'Jacket', 'USA', 2299.00, 10, 'upload/Nike-As-Mfill-Lng-Black-Bomber-Jacket-9303-7391871-1-catalog_s.jpg'),
(145, 'Puma-Active-600', 'Packlight-Down-Navy-Blue-Bomber-Jacket', 'Jacket', 'USA', 2300.00, 10, 'upload/Puma-Active-600-Packlight-Down-Navy-Blue-Bomber-Jacket-6902-0858381-1-catalog_s.jpg'),
(146, 'Puma-Blue', 'Casual-Jacket', 'Jacket', 'USA', 2500.00, 10, 'upload/Puma-Blue-Casual-Jacket-6143-9272471-1-catalog_s.jpg'),
(147, 'TOPMAN-Black', 'Solid-Casual-Jacket', 'Jacket', 'USA', 2500.00, 10, 'upload/TOPMAN-Black-Solid-Casual-Jacket-3519-1445061-1-catalog_s.jpg'),
(148, 'United-Colors-of-Benetton', 'Black-Solid-Bomber-Jacket', 'Jacket', 'USA', 3000.00, 10, 'upload/United-Colors-of-Benetton-Black-Solid-Bomber-Jacket-6308-6788771-1-catalog_s.jpg'),
(149, 'Denim Jeans', 'Black ', 'Jeans', 'Bangladesh', 1499.00, 10, 'upload/black jeans.jpg'),
(150, 'Gas-Blue-Slim-Fit-Jeans', 'Gas-Blue-Slim-Fit-Jeans', 'Jeans', 'Bangladesh', 1800.00, 10, 'upload/Gas-Blue-Slim-Fit-Jeans-7508-9762921-1-catalog_s.jpg'),
(151, 'Gas-Blue-Washed', 'Skinny-Fit-Jeans', 'Jeans', 'Bangladesh', 1800.00, 10, 'upload/Gas-Blue-Washed-Skinny-Fit-Jeans-0265-631706-1-catalog_s.jpg'),
(152, 'Incult-Blue-Skinny', 'Fit-Denim-Jeans', 'Jeans', 'Bangladesh', 2000.00, 10, 'upload/Incult-Blue-Skinny-Fit-Denim-Jeans-7699-3770201-1-catalog_s.jpg'),
(153, 'KILLER-Blue', 'Slim-Fit-Jeans', 'Jeans', 'Bangladesh', 2000.00, 10, 'upload/KILLER-Blue--Slim-Fit-Jeans-8300-1373011-1-catalog_s.jpg'),
(154, 'Levi27s-Blue', 'Mid-Rise-Regular-Fit-Jeans', 'Jeans', 'Bangladesh', 1500.00, 10, 'upload/Levi27s-Blue-Mid-Rise-Regular-Fit-Jeans-6927-8693881-1-catalog_s.jpg'),
(155, 'Pepe-Jeans-Blue', 'Skinny-Fit-Jeans', 'Jeans', 'Bangladesh', 1399.00, 10, 'upload/Pepe-Jeans-Blue-Skinny-Fit-Jeans-28Soho29-6113-9096881-1-catalog_s.jpg'),
(156, 'Phosphorus-Blue', 'Skinny-Fit-Jeans', 'Jeans', 'Bangladesh', 1500.00, 10, 'upload/Phosphorus-Blue-Skinny-Fit-Jeans-4622-3360031-1-catalog_s.jpg'),
(157, 'United-Colors-of-Benetton', 'Cross-Pocket-Skinny-Fit-Jeans-Blue', 'Jeans', 'Bangladesh', 1400.00, 10, 'upload/United-Colors-of-Benetton-Blue-Cross-Pocket-Skinny-Fit-Jeans-5802-0877051-1-catalog_s.jpg'),
(158, 'Firetrap Rom Straight ', 'Firetrap Rom Straight Mens Jeans', 'Jeans', 'USA', 2000.00, 10, 'upload/64404990_xxl.jpg'),
(159, 'Diesel Larkee 8Xr ', 'Straight Fit Jeans', 'Jeans', 'USA', 2000.00, 10, 'upload/Diesel Larkee 8Xr Straight Fit Jeans.jpg'),
(160, 'New Arrival Design', ' Slim Fit Good Quality Blue Black ', 'Jeans', 'Bangladesh', 1500.00, 10, 'upload/Fashion Men Jeans New Arrival Design Slim Fit Fashion Jeans For Men Good Quality Blue Black Y2031.jpg'),
(161, 'Arrow-Sports', 'Navy-Blue-Solid-Slim-Fit-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 10, 'upload/Arrow-Sports-Navy-Blue-Solid-Slim-Fit-Chinos-5904-2612391-1-catalog_s.jpg'),
(162, 'Basics-Grey', 'Regular-Fit-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1399.00, 10, 'upload/Basics-Grey-Regular-Fit-Chinos-1258-139979-1-catalog_s.jpg'),
(163, 'Incult-Navy-Blue', 'Skinny-Fit-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 15, 'upload/Incult-Navy-Blue-Skinny-Fit-Chinos-9312-4700051-1-catalog_s.jpg'),
(164, 'Levi27s-Blue', 'Slim-Fit-Chino', 'Men_Casual_Trouser', 'USA', 1200.00, 10, 'upload/Levi27s-Blue-Slim-Fit-Chino-2851129-6334-3542151-1-catalog_s.jpg'),
(165, 'Phosphorus-Khaki', 'Slim-Fit-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1000.00, 10, 'upload/Phosphorus-Khaki-Slim-Fit-Chinos-6904-1149521-1-catalog_s.jpg'),
(166, 'Tom-Tailor', 'Beige-Solid-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 10, 'upload/Tom-Tailor-Beige-Solid-Chinos-5045-6519271-1-catalog_s.jpg'),
(167, 'Tom-Tailor', 'Blue-Solid-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 10, 'upload/Tom-Tailor-Blue-Solid-Chinos-8116-7598271-1-catalog_s.jpg'),
(168, 'TOPMAN', 'Black-Solid-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 10, 'upload/TOPMAN-Black-Solid-Chinos-2316-5945061-1-catalog_s.jpg'),
(169, 'TOPMAN', 'Blue-Chinos', 'Men_Casual_Trouser', 'Bangladesh', 1200.00, 10, 'upload/TOPMAN-Blue-Chinos-7313-2270881-1-catalog_s.jpg'),
(170, 'TOPMAN', 'Grey-Mid-Rise-Chinos', 'Men_Casual_Trouser', 'USA', 1400.00, 15, 'upload/TOPMAN-Grey-Mid-Rise-Chinos-3811-6055061-1-catalog_s.jpg'),
(171, 'U.S.-Polo-Assn', 'Red-Solid-Slim-Fit-Chinos', 'Men_Casual_Trouser', 'USA', 2000.00, 15, 'upload/U.S.-Polo-Assn.-Red-Solid-Slim-Fit-Chinos-9809-8956981-1-catalog_s.jpg'),
(172, 'United-Colors-of-Benetton', 'Grey-Chinos', 'Men_Casual_Trouser', 'USA', 1500.00, 10, 'upload/United-Colors-of-Benetton-Grey-Chinos-9316-7488771-1-catalog_s.jpg'),
(173, 'United-Colors-of-Benetton', 'Grey-Chinos', 'Men_Casual_Trouser', 'USA', 1500.00, 10, 'upload/United-Colors-of-Benetton-Grey-Chinos-9316-7488771-1-catalog_s.jpg'),
(174, 'Athena-Black-Colored', 'Printed-Shift-Dress', 'Women Dress', 'Bangladesh', 3000.00, 15, 'upload/Athena-Black-Colored-Printed-Shift-Dress-1235-9286021-1-catalog_s_lr.jpg'),
(175, 'Harpa-Orange', 'Colored-Solid-Skater', 'Women Dress', 'Bangladesh', 3000.00, 10, 'upload/Harpa-Orange-Colored-Solid-Skater-Dress-7546-6806831-1-catalog_s_lr.jpg'),
(176, 'Lara-Karen', 'Blue-Dresses', 'Women Dress', 'USA', 3500.00, 10, 'upload/Lara-Karen-Blue-Dresses-1817-3472701-1-catalog_s_lr.jpg'),
(177, 'Lara-Karen', 'Off-White-Dress', 'Women Dress', 'USA', 5000.00, 10, 'upload/Lara-Karen-Off-White-Dress-5902-1406601-1-catalog_s_lr.jpg'),
(178, 'MIAMINX-Black', 'Colored-Printed-Skater-Dress', 'Women Dress', 'Bangladesh', 3000.00, 15, 'upload/MIAMINX-Black-Colored-Printed-Skater-Dress-2602-5984491-1-catalog_s_lr.jpg'),
(179, 'Miss-Bennett', 'London-Strap-Back-Swing-Dress', 'Women Dress', 'USA', 4000.00, 15, 'upload/Miss-Bennett-London-Strap-Back-Swing-Dress-1928-3316301-1-catalog_s_lr.jpg'),
(180, 'Next-Black', 'Frill-Sleeve-Dress', 'Women Dress', 'Bangladesh', 3000.00, 10, 'upload/Next-Black-Frill-Sleeve-Dress-6224-0038191-1-catalog_s_lr.jpg'),
(181, 'TOPSHOP-Floral', 'Crochet-Bodycon-Dress', 'Women Dress', 'Bangladesh', 3000.00, 10, 'upload/TOPSHOP-Floral-Crochet-Bodycon-Dress-2713-3378291-1-catalog_s_lr.jpg'),
(183, 'Mango-Red', 'Solid-Sweatshirt', 'Women Sweet Shirt', 'Bangladesh', 2000.00, 10, 'upload/Mango-Red-Solid-Sweatshirt-2319-9493251-1-catalog_s_lr.jpg'),
(184, 'Mango-White', 'Printed-Sweatshirt', 'Women Sweet Shirt', 'Bangladesh', 2000.00, 10, 'upload/Mango-White-Printed-Sweatshirt-6420-5541491-1-catalog_s_lr.jpg'),
(185, 'Miss-Bennett-London', 'Sleeve-Hoody-With-Solid', 'Women Sweet Shirt', 'USA', 3000.00, 10, 'upload/Miss-Bennett-London-Wide-Sleeve-Hoody-With-Solid-0715-3374151-1-catalog_s_lr.jpg'),
(186, 'Next-Blue', 'Long-Sleeve-Sweater', 'Women Sweet Shirt', 'Bangladesh', 2500.00, 10, 'upload/Next-Blue-Long-Sleeve-Sweater-7102-2936681-1-catalog_s_lr.jpg'),
(187, 'United-Colors-of-Benetton ', 'Blue-Printed-Sweatshirt', 'Women Sweet Shirt', 'USA', 1500.00, 10, 'upload/United-Colors-of-Benetton-Blue-Printed-Sweatshirt-2010-3141191-1-catalog_s_lr.jpg'),
(188, 'United-Colors-of-Benetton', ' Blue-Printed-Sweatshirt', 'Women Sweet Shirt', 'USA', 1400.00, 10, 'upload/United-Colors-of-Benetton-Blue-Printed-Sweatshirt-3240-5493371-1-catalog_s_lr.jpg'),
(189, 'United-Colors-of-Benetton-', 'Grey-Solid-Sweatshirt', 'Women Sweet Shirt', 'USA', 1500.00, 10, 'upload/United-Colors-of-Benetton-Grey-Solid-Sweatshirt-2910-0241191-1-catalog_s_lr.jpg'),
(190, 'Chanel sweatshirt ', 'Slouchy CC women sweatshirt ', 'Women Sweet Shirt', 'USA', 3000.00, 10, 'upload/10cf51e935568fedd522969c8fa9db8f.jpg'),
(191, 'Fashion-Brand-New-Ladies', 'Cute-Birds-Embroidery-Print-Long-Sleeve', 'Women Sweet Shirt', 'USA', 2500.00, 15, 'upload/Fashion-Brand-New-Ladies-Cute-Birds-Embroidery-Print-Long-Sleeve-Autumn-Hoodies-Sweatshirt-Sweatshirts-Women-casual.jpg_640x640.jpg'),
(192, 'casual Mickey printed', 'casual Mickey printed sweatshirt', 'Women Sweet Shirt', 'USA', 1500.00, 10, 'upload/casual Mickey printed sweatshirt,.jpg'),
(193, 'O-Neck-Sport-Sweatshirts', 'For-Women-Fashion-Patchwork-Women-Pullovers-Girls-Casual-Wear-Long-Sleeve', 'Women Sweet Shirt', 'USA', 2000.00, 10, 'upload/O-Neck-Sport-Sweatshirts-For-Women-Fashion-Patchwork-Women-Pullovers-Girls-Casual-Wear-Long-Sleeve-Women.jpg_50x50.jpg'),
(194, 'women-s-nike-sweatshirt', 'An embroidered Nike logo on the front chest', 'Women Sweet Shirt', 'Bangladesh', 2000.00, 10, 'upload/women-s-nike-sweatshirt-484171-064-x6-pack-a-11.95-9626-p.jpg'),
(198, 'Alia-Bhatt-For-Jabong', 'Aw15-Hot-Look-Denim-Blue-Shirt', 'Women Tops,Tees & Shirt', 'Bangladesh', 2500.00, 10, 'upload/Alia-Bhatt-For-Jabong-Aw15-Hot-Look-Denim-Blue-Shirt-5877-2925551-4-catalog_s.jpg'),
(199, 'Alia-Bhatt-For', 'Jabong-Denim-Blue-Jeans', 'Women Jeens', 'Bangladesh', 1800.00, 10, 'upload/Alia-Bhatt-For-Jabong-Denim-Blue-Jeans-0707-0226671-1-catalog_s_lr.jpg'),
(200, 'Alia-Bhatt-For', 'Jabong-Green-Shirts', 'Women Tops,Tees & Shirt', 'Bangladesh', 1800.00, 10, 'upload/Alia-Bhatt-For-Jabong-Green-Shirts-9323-7308361-4-catalog_s.jpg'),
(201, 'Dorothy-Perkins', 'Black2FWhite-Stripe-2-In-1-Top', 'Women Tops,Tees & Shirt', 'Bangladesh', 1700.00, 15, 'upload/Dorothy-Perkins-Black2FWhite-Stripe-2-In-1-Top-0505-5320391-1-catalog_s.jpg'),
(202, 'Dorothy-Perkins', 'Black-Striped-Shirt', 'Women Tops,Tees & Shirt', 'Bangladesh', 1900.00, 10, 'upload/Dorothy-Perkins-Black-Striped-Shirt-7698-4928151-1-catalog_s.jpg'),
(203, 'Dorothy-Perkins', 'Stripe-Cold-Shoulder-Top', 'Women Tops,Tees & Shirt', 'Bangladesh', 2000.00, 20, 'upload/Dorothy-Perkins-Stripe-Cold-Shoulder-Top-0503-5120391-1-catalog_s.jpg'),
(204, 'MANGO-Outlet', ' Pink-Solid-Blouse', 'Women Tops,Tees & Shirt', 'Bangladesh', 1500.00, 10, 'upload/MANGO-Outlet-Pink-Solid-Blouse-9766-1207511-1-catalog_s.jpg'),
(205, 'Mango-Off-White', 'Printed-Shirt', 'Women Tops,Tees & Shirt', 'Bangladesh', 1500.00, 10, 'upload/Mango-Off-White-Printed-Shirt-6152-5073251-1-catalog_s.jpg'),
(206, 'Vero-Moda-Grey-Solid', 'Vero-Moda-Grey-Solid-Shirt', 'Women Tops,Tees & Shirt', 'Bangladesh', 1500.00, 15, 'upload/Vero-Moda-Grey-Solid-Shirt-7195-6529861-1-catalog_s.jpg'),
(209, 'Next-Denim-Mid-Blue', 'Plaited-Waist-Flare-Jeans', 'Women Jeens', 'USA', 2200.00, 10, 'upload/Next-Denim-Mid-Blue-Plaited-Waist-Flare-Jeans-0003-8526591-1-catalog_s_lr.jpg'),
(210, 'Only-Black-Mid-Rise', 'Regular-Jeans', 'Women Jeens', 'USA', 2300.00, 10, 'upload/Only-Black-Mid-Rise-Regular-Jeans-9780-7176081-1-catalog_s_lr.jpg'),
(211, 'Only-Pink-Solid-Chinos', 'Only-Pink-Solid-Chinos', 'Women Jeens', 'USA', 1800.00, 10, 'upload/Only-Pink-Solid-Chinos-8326-227417-1-catalog_s_lr.jpg'),
(214, 'Wrangler-Blue-Mid-Rise', 'Slim-Jeans', 'Women Jeens', 'USA', 2300.00, 10, 'upload/Wrangler-Blue-Mid-Rise-Slim-Jeans-2583-1447091-1-catalog_s_lr.jpg'),
(215, 'X27Pose', 'Blue-Solid-Jeans', 'Women Jeens', 'USA', 2400.00, 10, 'upload/X27Pose-Blue-Solid-Jeans-7394-5195231-1-catalog_s_lr.jpg'),
(216, 'Designer Skinny Jeens', 'Lucky Brokee Skinny', 'Women Jeens', 'USA', 2499.00, 10, 'upload/7W12102_410_1.jpg'),
(217, 'Designer Skinny Jeens', 'Lucky Brokee Skinny', 'Women Jeens', 'USA', 2500.00, 10, 'upload/LUCKY BROOKE SKINNY.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Abdullah Al ', 'Shiam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `memberID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

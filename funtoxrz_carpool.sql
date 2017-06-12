-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2016 at 05:17 AM
-- Server version: 5.6.29-76.2-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `funtoxrz_carpool`
--

-- --------------------------------------------------------

--
-- Table structure for table `push_history`
--

CREATE TABLE IF NOT EXISTS `push_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` varchar(900) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `push_history`
--

INSERT INTO `push_history` (`id`, `user_id`, `message`, `created_at`) VALUES
(5, 23, 'You have recieved new request from  for route Bengaluru to Mumbai', '2016-05-17 07:03:58'),
(6, 23, 'You have recieved new request from Utpal for route Bengaluru to Mumbai', '2016-05-17 07:06:22'),
(7, 23, 'Utpal has cancelled the request for route Bengaluru to Mumbai', '2016-05-17 07:53:22'),
(8, 22, 'You have recieved new request from mayuri for route Surat to Vadodara', '2016-05-17 10:13:43'),
(9, 23, 'You have recieved new request from Utpal for route Bengaluru to Mumbai', '2016-05-17 11:28:54'),
(10, 23, 'utpal has accepted your request for route bang-mum', '2016-05-17 11:59:52'),
(11, 22, 'You have recieved new request from mayuri for route Palanpur Jakatnaka to Millenium', '2016-05-18 04:57:03'),
(12, 22, 'You have recieved new request from mayuri for route Palanpur Jakatnaka to Millenium', '2016-05-18 04:57:54'),
(13, 22, 'You have recieved new request from mayuri for route Palanpur Jakatnaka to Millenium', '2016-05-18 05:03:38'),
(14, 22, 'You have recieved new request from mayuri for route Palanpur Jakatnaka to Millenium', '2016-05-18 05:08:50'),
(15, 49, 'Joseh has accepted your request for route ', '2016-05-31 19:01:47'),
(16, 74, ' has accepted your request for route ', '2016-06-01 12:34:31'),
(17, 74, ' has accepted your request for route ', '2016-06-01 12:34:36'),
(18, 74, 'PA to no terms has cancelled the request for route Kurnool to Hyderabad', '2016-06-02 01:16:54'),
(19, 86, 'You have recieved new request from Shefali Tandel for route Vapi to Mumbai', '2016-06-03 07:13:15'),
(20, 86, 'You have recieved new request from mayuri for route Surat to Vapi', '2016-06-03 07:13:28'),
(21, 86, 'Utpal Ruparel has accepted your request for route ', '2016-06-03 07:15:59'),
(22, 22, 'You have recieved new request from mayuri for route Bengaluru to Chennai', '2016-06-04 05:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE IF NOT EXISTS `tbl_address` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `trip_id` int(150) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `weight` int(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `admin_password` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `admin_name` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_mobile` varchar(255) DEFAULT NULL,
  `admin_img` varchar(255) DEFAULT NULL,
  `access` varchar(12) NOT NULL DEFAULT 'Admin',
  `admin_createddate` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_email`, `admin_password`, `admin_name`, `first_name`, `last_name`, `company_name`, `company_email`, `company_mobile`, `admin_img`, `access`, `admin_createddate`) VALUES
(1, 'admin@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'admin', NULL, NULL, NULL, NULL, NULL, 'admin1_cover_1446097298.jpg', 'Admin', NULL),
(8, 'admin@carpooling.com', 'admin@123', 'Admin', 'Admin', NULL, NULL, NULL, NULL, NULL, 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amenities`
--

CREATE TABLE IF NOT EXISTS `tbl_amenities` (
  `amenities_id` int(11) NOT NULL AUTO_INCREMENT,
  `amenities_name` varchar(40) DEFAULT NULL,
  `created_on` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`amenities_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` int(6) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(120) DEFAULT NULL,
  `country_code` varchar(15) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`, `country_code`, `currency`, `is_active`, `created_date`) VALUES
(1, 'India', 'IN', '', 1, NULL),
(2, 'Malaysia', 'MAL', '', 1, NULL),
(3, 'united state', 'us', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE IF NOT EXISTS `tbl_currency` (
  `currency_id` int(6) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(120) DEFAULT NULL,
  `currency_symbol` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`currency_id`, `currency_name`, `currency_symbol`, `created_date`) VALUES
(1, 'Euro', 'ERU', '2015-09-14 09:21:47'),
(2, 'Tollers', '$', '2015-09-18 08:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquires`
--

CREATE TABLE IF NOT EXISTS `tbl_enquires` (
  `enquiry_id` int(16) NOT NULL AUTO_INCREMENT,
  `enquiry_passanger_id` varchar(40) DEFAULT NULL,
  `enquiry_trip_id` varchar(40) DEFAULT NULL,
  `enquire_travel_id` varchar(255) DEFAULT NULL,
  `enquiry_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`enquiry_id`),
  KEY `tbl_trips_tbl_enquires` (`enquiry_trip_id`),
  KEY `tbl_passengers_tbl_enquires` (`enquiry_passanger_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_enquires`
--

INSERT INTO `tbl_enquires` (`enquiry_id`, `enquiry_passanger_id`, `enquiry_trip_id`, `enquire_travel_id`, `enquiry_date_time`) VALUES
(1, '478', '264', '466', '2015-09-18 11:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(44) NOT NULL,
  `feedback` varchar(444) NOT NULL,
  `page` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follows`
--

CREATE TABLE IF NOT EXISTS `tbl_follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_follows`
--

INSERT INTO `tbl_follows` (`id`, `user_id`, `follower_id`) VALUES
(1, 4, 3),
(2, 22, 23),
(3, 23, 22),
(4, 24, 22),
(5, 26, 22),
(6, 33, 22),
(7, 36, 22),
(8, 44, 22),
(9, 51, 22),
(10, 54, 22),
(11, 66, 22),
(12, 68, 49),
(13, 70, 49),
(14, 78, 74),
(15, 80, 74),
(16, 23, 86);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gcm`
--

CREATE TABLE IF NOT EXISTS `tbl_gcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_type` varchar(10) NOT NULL,
  `gcmid` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `tbl_gcm`
--

INSERT INTO `tbl_gcm` (`id`, `user_id`, `device_type`, `gcmid`) VALUES
(1, 3, 'android', 'cugrpEO9HGs:APA91bEg7WqxAKGcDFxrbhYNpiLQPneEYsZzxExXVTMjJr4_XZxnr9r_DGtYHssarTdKAMTL-Gb5XESJkQajuuvKBYL0_jkHoItIBfgqDGSo-DMH3TPZA31IZcW7u5xzq86cMnEUkEP9'),
(4, 22, 'android', 'cCNaU528mTw:APA91bH1t4nmwNjJfSUXzUrAiB2pRWDkf9ZgW9Y08-5sCh8EDMEdwEhqNDAzV-m5QAjGK8xIKHVZxV2RikwgvuCMfXY_22mTkc2YvXbRezfqVfMyBSgMQzFySHKL91IJ6buyZkVTjRSs'),
(5, 23, 'android', 'cCNaU528mTw:APA91bH1t4nmwNjJfSUXzUrAiB2pRWDkf9ZgW9Y08-5sCh8EDMEdwEhqNDAzV-m5QAjGK8xIKHVZxV2RikwgvuCMfXY_22mTkc2YvXbRezfqVfMyBSgMQzFySHKL91IJ6buyZkVTjRSs'),
(6, 24, 'android', 'cvDGjw9-KhQ:APA91bFkYy8aKNE_INgrehSUDnpMKYPuat4yJL9CfmF_wW82uX0Ro8hh7P1JUqmzm3HgzFsnpAxFzo7ax5emjr_9yw9v4u4yMPSLDjkC7OH6WDhDYtpVUqNknTBGY6pmi899wXTDHkl7'),
(7, 25, 'android', 'du_DnCo4yeA:APA91bGBi2SVn_FbmccBIn_LT2kdFfVUdt6kkRgdh7io1NV63UNl3EhfunQa4-XrlQO56tZRx8QS9V_CvDz3xpF4h7z1QMoT4-D5YlIcQbeezDrrDvF0LcY9FFeaiNsWx5OO3eJO6LOg'),
(8, 26, 'android', 'ctyw0FmvBiY:APA91bHwc6f7uQXq05dGrMZDH10NUCkzgKGn1MRu2zlQjMk2qQPbN5SVBC04LqzZozDNlEqrOj5gDi4lnKdF4B7YWDwhBgaHjzVlT0RRnwfqTZwBXsn_fteV4anLxnVcUTYly5vNHCVj'),
(9, 27, 'android', 'eS8RG65un8w:APA91bHmzV54nwwMfVdMq3UXcKYGUBF79hv0U8JiQoDmS40836uduB1yYc7J3A5NdwQCyGRr2yD3APjl3C_HED0QEeShVTd__IH6Jy-vgrdcsxZEzH0afbeedw5_3hOw_of8VljpTcNb'),
(10, 28, 'android', 'co7C14mQVbk:APA91bFQHnNHKM6YODiWAE2GrzWI05BadBGjLTCrltD6EchTfaHYKORWcBwOzfHnrDTjVQxEiMl1UDox_WwPfbh0xs0pD1qkjwhCjInqYpL-u8mcE-z5C63OwqbwRolNC_ifvthm12a7'),
(11, 29, 'android', 'dkZJsSE3Gso:APA91bGL49Ba0FAI-ePbJ0YtwnYjSOZjF1twWDbw71JiaAPqRemHUEUohZXRdBTR98iwsWK2ETykBTT9uLNT5UQWL0IRS9_2FcN17fEXOrbvt0_56SLiGqg8EQmfjloTeT6lEIW6EsMa'),
(12, 31, 'android', 'fPgiy6l36lk:APA91bE7PchUGU4eECcaaTZO_cmr3nlrI1IVN-iyTgQ1WYCQETxTLBYAImPnNtGHqwUR9lAfr5oQMzQEpKOfwcx1718NUelDABHcPejaSlmOJFpmuw58lbJ6zU9FlJxYFPHXlTUbTFrF'),
(13, 30, 'android', 'eh9K4N2Z1VQ:APA91bGJLXjhZsfpNcN741w21MvaTbFKUe_zpEUnWCUsCtwF9aTJ12xPPWPBuHFV-rikCOKsHJHI7riJsJ-YDaGUEw6lQAh6hXOycMARlbc72ZUJU0SIA95A-58cIZZAu8PignEhohqr'),
(14, 32, 'android', 'fJtbRAZpSO4:APA91bHLZDbA0WjAHNrgj74yWjPZ5z4IhsHN-axAxbfcD7wZJZfrLtggN6ibbT1o2tt4-GCmSApkgt1HEcA5tvf1G_lisLBL0kQwB7qxnYtRCo8sXG64q2GUiCXkZu9-F42_woiFKvFs'),
(15, 33, 'android', 'djbHzpvRDP4:APA91bGFev_uV5ptsSo7c_7EJydDOMWFUaj6NZKsDXXnEPWi2hX0Wl7fedRC11KAq0-CrJi2qZtJpF968Mqctv6eWEOJfXyUwCumELH-mmwfVU-TQxxV1-0MclRdSHxaG-pZHaR9Nqju'),
(16, 34, 'android', 'd9w3KwI8fr0:APA91bEjKkvh5JABY1piT_knHXQkyCF0dKylMhftS9DN1W8ufWKgeejHTE5jnEAJG6taM9PMFlSPxP9F1NUpRi0qs6O9SInTskW8Cs_pbgUxkMpxpcWNiq75byT_EheVXPee1x1jt2jB'),
(17, 35, 'android', 'ei0vy-KNHf4:APA91bFOAKJJz4-CBBGQYjOskq0pwvv5aastM1Q5cRFD5IBhJn-KowxaAkchfMOATiJlk1Jxo7nsOS3q1SokP3KI98sxueh7fiqZer-RGZNP0zPqKtCYi7-S9mWECj55cyWZTJ2BdjGQ'),
(18, 36, 'android', 'eQfkHGuA-x0:APA91bFUIjcGjgWTBprZ6afGqd36tvQOtLeNJU1sPWjwXEfYMtswql6I50brtbVce2Wr6UNh0dlHERUw6oZNdu3ABL9GJFMx036kalPdJ0I_gQ-BRROBVQEjrL7W46PjE8s9m3yEWmYX'),
(19, 37, 'android', 'dW9PrPxUpos:APA91bGqC6nftraslzBmH2df0yvsJtd-bk12fHFt3Fdc2p7vh691Q8eosVtplJwyINEfjWYiob5RAtEwel4kuFwyCoFivk70oem5zolIIHthWiDZbz7CCduSyv0EJNODcE85KA0N_jF5'),
(20, 38, 'android', 'e9A5G9FR7O0:APA91bEg6D80Dldg5QnfPKgZRb2EPs_0g5uYRRZTLNvugG57qXntccfpnYq9f6oTmT_Vr6vzLrpdBHAa-iJYjpFau0qGrqoXzgtfNjSDFxWj95ftdns8rCphJbRSuE8mYx0ndpkXJpB1'),
(21, 39, 'android', 'crerglW-5K0:APA91bG1UF1jdw7Kn9s1_qRMKKyhmCoa8jdta1bxxt8EurLKPsK1urXXE3L8t9e7Opr3ZF-QAD9dZ1EyHlNvktut1WaavZFPss42pR80fN_F1CHks_j4myToYITg9xECNF6cTxDwyouj'),
(22, 41, 'android', 'co5naxrupbg:APA91bE5EZC1yuxoqXhy99gPT8CakntMc7g2nx1xwywp7SzlmPYO_XNvCbcOoHMGjBfN11-vuuXqoOTqNkYT3JnvgewtjzxJroJZGKjGHnO-5rIXEcgBTI50Wyve_H8ENz0LY3k0BBV_'),
(23, 42, 'android', 'fWfwbDH6TL8:APA91bH9TFC49Q43G3Zhh8VCUa1xD2bHyM8p4XSm6tZYwNyOMjDMhnb2k8ZzKOqVsWNoPxOVBxp0rcyLv5zWdymHpWNgWt2TgZveqBYEy9Vbrs7SWjO0d8COtsoRMpEdDUIRx8N6G5Kz'),
(24, 43, 'android', 'eUyesUfmjJY:APA91bHwQQlCcbMgh7S5KL3MoE3BfWgs1gL8ARs-VcAFZTVuE12e1Acpscm-b1P8_lgs1s--GiE09NaA2WgL9trTKE6qfxVnS4h-G_wwZnEJX6rVDe-kNE1B5M8DeMNqb09U53334lY3'),
(25, 44, 'android', 'fgr2x-nyl5E:APA91bFK0Q6ZHFkGRxqL1SzEv38qV_YYmLQ0Hu9gbR906uAL7gLzMjO_B14hRRXvmiRAEExou2UcD9UDkkDpw7SzMZDZqGipESho7jaQrzI-rF36zYaf3eKV9NVXY9AfF1-tVULSt2LM'),
(26, 45, 'android', 'cRPIOSvLgIA:APA91bGRXvZ9G86l8ZGmoqbefC-TUsGeMqabHnF_kz_yvXB0IcmoJWibFrYRF_LGYEnKVzlOsIK1kq40mmSssQdLYdEDDc6Odlk-zoU262CFHvcEBj6H1GE4u3t4y37weR39csiYSRCY'),
(27, 46, 'android', 'eXuC_AhRnZM:APA91bHLgPQwkwlJgBOBFPi46A1av2Uerm8D3qzLi2gNLfRiuEDptbtJvZF3bML8jZbwcUezk_xFkZSNkl7UCCozeHrIdbvK6c5wGWqxRxYZ4cW_pMP7c5_o4FlCgHA-s5WnXq62Bv-G'),
(28, 47, 'android', 'eQfkHGuA-x0:APA91bFUIjcGjgWTBprZ6afGqd36tvQOtLeNJU1sPWjwXEfYMtswql6I50brtbVce2Wr6UNh0dlHERUw6oZNdu3ABL9GJFMx036kalPdJ0I_gQ-BRROBVQEjrL7W46PjE8s9m3yEWmYX'),
(29, 48, 'android', 'dFHRGNLS6Kw:APA91bEx05i5CTBsKMFpFxXcawcjC-yQLnOwy_eSTMWHzBA4SIcplcERXKMwJ4mM0ywcHmy8K05FTenImuYsXKehwcuyS3VY9-VnyisdUNkEvc8zD4gqKcVLD5ilQghZLOCvzYUbMgAb'),
(30, 49, 'android', 'dgVpuOU-ki4:APA91bHBXjNzNoryf6Vi47HbSsrAdkCsYmg2aOH8NIGSRpX1b9BVaKABl-KzVNRAiaaM99nwCIHqiyDQwLAw6Dv-6RtLvroeoehYhIwwSJYnjoW1TDeVkF5ImyFmqpIkn1IPb-HA_y9I'),
(31, 50, 'android', 'eCyhemibPJY:APA91bGYfYn8cr9GfovV8XbBeUISTv9-QqYyIBcNK4h3EfyP0TlUunLHF0f8Tl_34a7xB2HWPgvSnX_aQpgl93E5nk56DqCwLkxfC15y2WJrZmBHkvY_Db_r2IPxWhRiwXlolH0Qhwku'),
(32, 51, 'android', 'e7JwuFdQp84:APA91bETl2zbtt_nCfupcX79BaXB47IjkQjpei0G7jcYp4GLhPF9Ux-Ub3DPOaTFHnvAjrmH115FKrmuqNh9qG4Mp1jqK4LIqzV5Y8B7VW61uLlimqpd6DXVmmSxkFzuhtzZ6GX7YyN8'),
(33, 52, 'android', 'fSZ_4wu__Mw:APA91bGGeEePv0p5VRY-awIuKtqymyPeXNLhiATEZq9m0BCJv1ufBqNvEwudS15Mh8O6SBaZkYHW26wiZuFPTgruJvD1VbqF8DMON6-AVyx3mFRogvsL8Km8IWNseO2p6f1A6QvCQUPE'),
(34, 53, 'android', 'e4dmMbI4HYw:APA91bFPU0nennPrK6_Gt6fyMtQq0J_zVCZk_O41TJYqnCxYmKCk-FbzCWLoMaqpytrgjTed3EuOW4liPhtfwLCa1MSE93mpUpLnZM5pol6EfSR7Rx3xz4joFbzYh4oE_VdKm4eINuEp'),
(35, 55, 'android', 'dfUSdgaiyBo:APA91bFo3c5-YHHljaLiA5ZysSNzV2LTYhP5oB7iV9uiQuWcC_LFPkRw8f3uum10Tc6Bc74BNMx-_x8qzxcHxpUnnnJwMPnEEYqZAERjPtsaSge2Fozv-DL1vjzjWj7tqzsQfi_7HP0Y'),
(36, 54, 'android', 'cfvu0FdOuQk:APA91bH2vuBVtKcYNrmPMe1gRsYX9HxEq3s94MeA53ALVj5cP15cWwkzHUla7IL7PIhjnXlEZtWx0s-TZSwlu4ht_eTqNjPuZEXeCF9t0XhUoM_evE7j9xss2aPtP4kpQckc3YDmIgt6'),
(37, 56, 'android', 'cwMTCPl1vaU:APA91bExjqXyY8tNXNHxTF1bdmQrESnCUDxEmsiWsQ160zqUQBqlmwM43zfqg8SUf99oViIDUSoD0pHrry_v9m1AaAqWdfcJA0DXZM3lvRP3qeA-pQPYhe2MARE22Yo2kClGszoOa-oi'),
(38, 57, 'android', 'fNv2-y_9YTY:APA91bFDytxUrgeyLa4ILws9fDMlK0SSgbrD20uQmVUqMtSVexSuJE08yIZwCZ-u2C0ISFv4tqMUW2C1VG2TqXFGNea7A63_uxpFalLEZ2pf7X6leWMKUr_E1Qb4wNf5rDC7Nu9gmPlP'),
(39, 58, 'android', 'fmbxWffLGf0:APA91bE4luGRYJwRr5VFiVZBQCev-rHsAf-ywbnHbzyCY1TezwlPRFdARwIzqzSXBzJLkAnwV5CHYpkW_BayukGxf4Xg2iwWMRYObZjPBECJEZUc6JjU8TVTZpPUB8EWud5xKcPvzkCq'),
(40, 60, 'android', 'fky77cKc2zw:APA91bG6xhayvprTtIAYSfaRR4IwAkzjCnm1TYa6-tjI1NdB8nmXCjCAomSzOYyXCyf41ToyJn57sPHSdSH_f-Ae0WtcWt7xVuZVZbdUY8rxnU3nrsPM0mTqsEyt33YGd5eNrOpQ8E5p'),
(41, 59, 'android', 'dwnW0507C8o:APA91bHPwf7pX9FinyQRCU2PYJqrCEToB-naqTONM_LyC1M3kUcDyMYXQWlibR3SVtj5fbGT9etP5kqbL_MTEHKydNWAN8r8Rnwoube1HwwlM9nez3nwHovpl7ZaZJMmS64mIcowvRUe'),
(42, 61, 'android', 'dZNM0mLBWeQ:APA91bFvYkAz6Ac1qSRks4CtsgCR9MbsojuzXCLRKqAmkIBdSz115nS8aoqmoQS3M4zvSOAmJ3NoRiKxtr6Jkt-q_fKvVZ-56lXUcgNbX-gUBxNEIa3DdxG8oztP3WxaWehOLDfqBZwO'),
(43, 62, 'android', 'dZNM0mLBWeQ:APA91bFvYkAz6Ac1qSRks4CtsgCR9MbsojuzXCLRKqAmkIBdSz115nS8aoqmoQS3M4zvSOAmJ3NoRiKxtr6Jkt-q_fKvVZ-56lXUcgNbX-gUBxNEIa3DdxG8oztP3WxaWehOLDfqBZwO'),
(44, 64, 'android', 'cg5hTF4LWso:APA91bHDziBPT6YddtuFgCayLGh-HAfFdZ69Ki2qM4I5hxzRsC9HRO1tw-e6DHHCctxgtTJ4NVUAIPfDfGtCF9mS5H8FZYGEBc89gyVZ0Tmy-in7L0Gi41mr3ylJsugUaFblSnhAWNBQ'),
(45, 65, 'android', 'cg5hTF4LWso:APA91bHDziBPT6YddtuFgCayLGh-HAfFdZ69Ki2qM4I5hxzRsC9HRO1tw-e6DHHCctxgtTJ4NVUAIPfDfGtCF9mS5H8FZYGEBc89gyVZ0Tmy-in7L0Gi41mr3ylJsugUaFblSnhAWNBQ'),
(46, 66, 'android', 'ddQVRp6qbjA:APA91bFPo2PqMqZEN4Fly8dMs7ICuAkyYAlJKJGmAWUpYRThQWEkzBgzc4W-3J5FQAtR4q0W0KCUcHKuO0OLgY04dRMVBcF8-ebI39I08hIahqg9Huw1weEi_r6NNA1k2VAHjLixtW3Z'),
(47, 67, 'android', 'cwp_EroZ97c:APA91bFfOKJqQmSSrBAeoODzSU0FSYdhVv6VbhLCxjlYsYLBejH3Io-gQM8DsRLDYiiRnHfLDQ-Ja-H_HasEXeM2d6rMXww26pKzLXRBolvjPGEpd7DwZzeXiHiKikiJ4Lt-h-h1_WVk'),
(48, 68, 'android', 'dgVpuOU-ki4:APA91bHBXjNzNoryf6Vi47HbSsrAdkCsYmg2aOH8NIGSRpX1b9BVaKABl-KzVNRAiaaM99nwCIHqiyDQwLAw6Dv-6RtLvroeoehYhIwwSJYnjoW1TDeVkF5ImyFmqpIkn1IPb-HA_y9I'),
(49, 69, 'android', 'dnWGGXOZ22Q:APA91bFXDGu2ZCYeIQJUZp5T7YRGUUrFKwdyTeDR5nZwzBiLx_tYhAWmCAk-BUvj8fIvYgSJSgGkwIYQB5GUxNXsYUe_PgCcaboBWQ3O1cICdefIlcvAAkhPxRF8ewHV-ZHLtVfXYyRf'),
(50, 70, 'android', 'cge9FBAEKuI:APA91bHePgyJo91Q-a_Lr8pxu83Ynz9lIqROD5kpantRXv0bc16X505Op5XF1pUV8wOe67w1mS-d61zHZAISrQcwvZNrgbatc-wXYpjhxwkOnEmRRbph8Y5eiKlFH9OPI9Ho08JPPoJk'),
(51, 71, 'android', 'f3-eK_Y8o0Y:APA91bFhOgaJHLAmzLzxuj5jrVOsHm-qNt-sxJfWzlSZX2xiw55MzbFsTyxNXiO4xNj9fRiWOMzZl_EXUChde8pNOy3L3knno8YWEFiRje-l1LpJ4_FDA7rJlY8ErxitS0NEw2Je6MuH'),
(52, 72, 'android', 'ey7Ym2rDQxQ:APA91bEzVBBGs4gf7XDgj5C5S1cIglVLW2gMAmWKmodas4OqPZJSCvqT6_66AnM1NIODrrYRB-DissvdYDysEhRx-Hx_vtX3_vT28g9YXVsMfOPqnWFNrAY9LJih4NhE94OS7NEujH8r'),
(53, 73, 'android', 'e9kKy6LX-Ss:APA91bH-r1eXpq-OKCLToqJsJo2ntwecMtzkS2P0KplW_XYlbkGDr4jXeymLHQV8g6n45G65DE0AIgG3dzP1COpnreTdNZF5hWcfNqFUPjNFANpKuH5WcL2kMAWEFo2wURiEbYHg0T0r'),
(54, 74, 'android', 'fbIsI_HaHZk:APA91bGRiPFvvvtHfjucZaG2h4OUFlmramyTlB0BfEeldHEHfmr4CeanTq53sxJHCZIF7jgXtpooAyea1LIQyBDFajvMYXWHINyUijywWFTfawBtlDhYz3pkQLztXyLA0Um9wWpTVXWh'),
(55, 75, 'android', 'f4HzwR2hduM:APA91bGeZj55PjEcNyDAKxAnRB-IEZN4uHXV8pLHr1aElD8DMx8Z_mcHljOoStQInCDf-_xQJgM47ajRD3cL8TS9pPbKbukwaLBxghX75RVSE3eroDs-UJmC_WLpzCuS4qih5YsLNmSG'),
(56, 76, 'android', 'fQ35gRt-QDk:APA91bF5O4GXIC-2TSGe2OEVYtuABE26mYAgoBmq8a4J7qyiI1fhCD_lxsWUquVT8FscHSfVbbGfJGlfBiK1bNL3UDO4sI3L2xy68gNuAq0VH-eDUuynbVtL-57IDsv-JgQpSEmiRNyK'),
(57, 78, 'android', 'fMHId2KFwek:APA91bGGbbaYdUD96m6Odf5wgcOomhPVa2pBq3GLydygVB3tzeSydfwFFbIWAtAqRhRDw9PoEH3gBJHncn825p0zgRVrpuZKA4x47c9XddtZy-ilV_DxFPxobKayILJaURPi471C9hqm'),
(58, 79, 'android', 'eJ64Y-TUcqA:APA91bE-lvKEpo-fU2diPsLAwwb48X2gP1MT9RB6CsQitKS7jbLGlQ8ODSI0h-zpK3KqDqmzGKXm21Q6EB_fHCKvM5L3bjbm8zfbjiMLDbMIlTyOZCxJfssWVodFHU41qQs2GjdOM1Ww'),
(59, 80, 'android', 'e3tJ9ZgLaHg:APA91bHiRNUBArEMFPLlA0_b6dAosXuSxBjiWxbLwr1AZqLwSJymwHDKmqMANXOGIrHLm3f6DevM6zcAnk2Ir_HPGTuSaeNAIRT3HMt4McQMl4_18cB6CeeB0-EKse6_9rvBcyaCQtT9'),
(60, 81, 'android', 'ey7Ym2rDQxQ:APA91bEzVBBGs4gf7XDgj5C5S1cIglVLW2gMAmWKmodas4OqPZJSCvqT6_66AnM1NIODrrYRB-DissvdYDysEhRx-Hx_vtX3_vT28g9YXVsMfOPqnWFNrAY9LJih4NhE94OS7NEujH8r'),
(61, 82, 'android', 'fWHjIS1BvwA:APA91bHkWNps19ybuMiln6MJ3jAIvlziBWkj5yUbxwWMuVp7DY6sC9W9AZ4kOHxKth4dRtGswYviZJLkVycs-Vf24mb_r2f4THkJmM1edcb-nqrfAix5IfNJ3fZRSTbPzz2KgXqXnMQt'),
(62, 83, 'android', 'fo8sXT5JMKA:APA91bGN3ymYlz30ZljrOtwrmBLCwYJTI3EUcquDXu5J4DY30rYM1nZX7dHbW1oDTBLsbZFlioVoFuJNbJ0DVrNrHw6xusLB6uTYsCjo3xdoDuJqv75GpFtFJt2VsIE0H2jADyNWqiPQ'),
(63, 84, 'android', 'fCxncEXcG-g:APA91bG-Z_Ds2vBvmbykbWYsx6e5HsipgfsL6hQT5Ls5EsvbLGKpYFx1U2QEBf4fOO9oJwA3osOmp_G5OPRad-O6p3Xw3GKDTkAdMuiAEVxfEVBYabjzuJWFMhKucv6JBX6BwU1f-9ok'),
(64, 85, 'android', 'fS4vP3odA4g:APA91bG4I9o32-vLmKYHYLpGOWUgEESyjPRAUd0rnmeL1xQK496C3cPli5xuVk3YBeueXQl3uQmlI4lykOy5Imoxc29xFMRCWK0Xu-ypy0DWjSpU273IfUQBdBsD6Z_ZhtcY4pc5VL2n'),
(65, 86, 'android', 'ey7Ym2rDQxQ:APA91bEzVBBGs4gf7XDgj5C5S1cIglVLW2gMAmWKmodas4OqPZJSCvqT6_66AnM1NIODrrYRB-DissvdYDysEhRx-Hx_vtX3_vT28g9YXVsMfOPqnWFNrAY9LJih4NhE94OS7NEujH8r'),
(66, 87, 'android', 'f_exCHE8C00:APA91bGd7YKyObczItb7_1zakOk2EdinVt696DM4QEYdJooHOaq6eJ3GF1_GFttHhrMPzZeODzLdZj2dVl_k37GvymLFnaKX6g-1aOKNBWA1WpksasW0Ke9Afn1VHnI1sXJh2U1H1JzX'),
(67, 88, 'android', 'cZz06e5FdmU:APA91bH6CjLotNGOizuzxBTvcC40IRK-tgrPZxy352WuW-51dhlb58UWnHlg6UYBi7Y5Cnfj1f8JcGTEJ0l-xdo9axI9fc03Anh6AfMEJbd1w70bVwJPfu-FsE6_1UaApyFhw3UHPTXp'),
(68, 89, 'android', 'dgwGfnKUW6o:APA91bFgBNF7-kxa4YNE_xf0ewWmLhWNNsPWNGlXdUQYCqp73WRCFVAp591eBq-wLhZ9zqTeseqkHGb1j_cAnkLiVPYKLVSRcm75C8Ouc2MKpXoH5ic1el1WYHXU5Zp67OD1rakqaRm-'),
(69, 91, 'android', 'cU-mhUTXbCk:APA91bE6-W5HX9RNTynz68ZYOVeSoDl-Y3SAejeLd-XYAQHAbhzRKSF2nZEMCoIs7FI8m9sevwz3R8f9x4R_lTaW6-sqJL7qGwLziGIgO9bSlbXsHvXWqUaLiZwoT6KijKqq6CMJL3p8'),
(70, 92, 'android', 'cCNaU528mTw:APA91bH1t4nmwNjJfSUXzUrAiB2pRWDkf9ZgW9Y08-5sCh8EDMEdwEhqNDAzV-m5QAjGK8xIKHVZxV2RikwgvuCMfXY_22mTkc2YvXbRezfqVfMyBSgMQzFySHKL91IJ6buyZkVTjRSs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_route`
--

CREATE TABLE IF NOT EXISTS `tbl_route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_id` int(20) NOT NULL,
  `route_name` varchar(150) NOT NULL,
  `route_lat` varchar(50) NOT NULL,
  `route_long` varchar(50) NOT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE IF NOT EXISTS `tbl_testimonials` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `isactive` int(2) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `name`, `image`, `description`, `isactive`, `created_date`) VALUES
(6, 'carpoolingscript', 'user1_testimonials_1446103870.jpg', 'Carpooling is great, I have never again travelled alone to my city on weekends. And it''s much cheaper way to travel !', 1, '2015-04-03 17:20:39'),
(7, 'carpool', 'user1_testimonials_1446103780.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ille, ut dixi, vitiose. Non laboro, inquit, de nomine. Duo Reges', 1, '2015-04-10 15:32:43'),
(8, 'carpool', 'user1_testimonials_1446103838.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ille, ut dixi, vitiose. Non laboro, inquit, de nomine. Duo Reges', 1, '2015-04-10 15:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trips`
--

CREATE TABLE IF NOT EXISTS `tbl_trips` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_vehicle_id` varchar(40) DEFAULT NULL,
  `source` varchar(150) NOT NULL,
  `source_lat` varchar(50) NOT NULL,
  `source_long` varchar(50) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `destination_lat` varchar(50) NOT NULL,
  `destination_long` varchar(50) NOT NULL,
  `depature_date` date NOT NULL,
  `trip_depature_time` time DEFAULT NULL,
  `return_date` date NOT NULL,
  `trip_return_time` time DEFAULT NULL,
  `trip_type` varchar(30) NOT NULL,
  `trip_frequncy` varchar(40) DEFAULT NULL,
  `trip_avilable_seat` varchar(40) DEFAULT NULL,
  `passenger_type` varchar(255) DEFAULT NULL COMMENT '1->male 2->female 3->both',
  `trip_rate_details` varchar(40) DEFAULT NULL,
  `trip_comments` text,
  `trip_user_id` int(20) DEFAULT NULL,
  `trip_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trip_status` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ac` varchar(2) CHARACTER SET utf8 NOT NULL,
  `smoking` varchar(2) CHARACTER SET utf8 NOT NULL,
  `extra` varchar(100) CHARACTER SET utf8 NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`trip_id`),
  KEY `tbl_users_tbl_trips` (`trip_user_id`),
  KEY `tbl_vehicle_tbl_trips` (`trip_vehicle_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_trips`
--

INSERT INTO `tbl_trips` (`trip_id`, `trip_vehicle_id`, `source`, `source_lat`, `source_long`, `destination`, `destination_lat`, `destination_long`, `depature_date`, `trip_depature_time`, `return_date`, `trip_return_time`, `trip_type`, `trip_frequncy`, `trip_avilable_seat`, `passenger_type`, `trip_rate_details`, `trip_comments`, `trip_user_id`, `trip_created_date`, `trip_status`, `ac`, `smoking`, `extra`, `updated_at`) VALUES
(1, '2', 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '2016-04-21', '16:45:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Female', '4', NULL, 3, '2016-04-16 11:23:36', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(2, '3', 'Surat', '21.170240099999997', '72.83106070000001', 'Navsari', '20.9467019', '72.95203479999999', '2016-04-20', '16:30:00', '0000-00-00', '00:00:00', 'One Way', '', '3', 'Both', '3', NULL, 4, '2016-04-18 11:04:37', 'CREATED', '1', '0', '', '0000-00-00 00:00:00'),
(3, '3', 'Bilimora', '20.769026399999998', '72.9777738', 'Mumbai', '19.0759837', '72.8776559', '2016-04-29', '09:00:00', '2016-04-30', '06:00:00', 'Round Trip', '', '3', 'Both', '5', NULL, 4, '2016-04-21 04:32:56', 'CREATED', '1', '0', 'Pet Not Allow. Small Language Allow .', '0000-00-00 00:00:00'),
(4, '4', 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '2016-05-01', '09:05:00', '2016-05-01', '15:00:00', 'Round Trip', '', '2', 'Male', '5', NULL, 4, '2016-04-21 07:48:37', 'CREATED', '1', '0', '', '0000-00-00 00:00:00'),
(5, '6', 'Surat', '21.170240099999997', '72.83106070000001', 'New Delhi', '28.6139391', '77.2090212', '2016-05-05', '18:16:00', '0000-00-00', '00:00:00', 'One Way', '', '3', 'Both', '5', NULL, 22, '2016-05-05 08:48:58', 'COMPLETED', '1', '0', 'Music', '0000-00-00 00:00:00'),
(6, '6', 'Mumbai', '19.0759837', '72.8776559', 'Bengaluru', '12.971598699999998', '77.5945627', '2016-05-09', '22:03:00', '0000-00-00', '00:00:00', 'One Way', '', '3', 'Both', '7', NULL, 22, '2016-05-05 11:36:28', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(7, '6', 'Surat', '21.170240099999997', '72.83106070000001', 'New Delhi', '28.6139391', '77.2090212', '2016-05-18', '17:19:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Both', '5', NULL, 22, '2016-05-16 11:50:31', 'FILLING', '0', '1', 'Music', '0000-00-00 00:00:00'),
(8, '7', 'Bengaluru', '12.971598699999998', '77.5945627', 'Mumbai', '19.0759837', '72.8776559', '2016-05-19', '23:25:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Both', '13', NULL, 23, '2016-05-17 04:56:55', 'FILLING', '1', '0', 'Music', '0000-00-00 00:00:00'),
(9, '6', 'Palanpur Jakatnaka', '21.209466199999994', '72.78101989999999', 'Millennium Textile Market 2', '21.1841317', '72.84632920000001', '2016-05-18', '05:56:00', '0000-00-00', '00:00:00', 'One Way', '', '3', 'Male', '10', NULL, 22, '2016-05-18 04:27:20', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(10, '6', 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '2016-05-23', '06:00:00', '0000-00-00', '00:00:00', 'One Way', '', '4', 'Both', '5', NULL, 22, '2016-05-19 05:18:41', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(11, '7', 'New Delhi', '28.6139391', '77.2090212', 'Ahmedabad', '23.022505', '72.5713621', '2016-05-20', '10:49:00', '0000-00-00', '00:00:00', 'One Way', '', '3', 'Both', '10', NULL, 23, '2016-05-19 05:21:46', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(12, '6', 'Surat', '21.170240099999997', '72.83106070000001', 'Bengaluru', '12.971598699999998', '77.5945627', '2016-05-25', '18:36:00', '0000-00-00', '00:00:00', 'One Way', '', '1', 'Both', '5', NULL, 22, '2016-05-24 08:07:42', 'COMPLETED', '1', '0', '', '0000-00-00 00:00:00'),
(13, '8', 'BahÃ§elievler', '41.008545', '28.824721999999994', 'AltÄ±noluk Belediyesi', '39.605417900000006', '26.737858500000005', '2016-05-29', '05:00:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Female', '400', NULL, 27, '2016-05-27 23:02:21', 'CREATED', '0', '1', '', '0000-00-00 00:00:00'),
(14, '6', 'Surat', '21.170240099999997', '72.83106070000001', 'Borivali', '19.237187699999996', '72.8441358', '2016-05-31', '06:05:00', '0000-00-00', '00:00:00', 'One Way', '', '1', 'Male', '', NULL, 22, '2016-05-28 05:11:46', 'FILLING', '1', '1', '', '0000-00-00 00:00:00'),
(15, '6', 'Borivali', '19.237187699999996', '72.8441358', 'Ahmedabad', '23.022505', '72.5713621', '2016-06-01', '00:42:00', '0000-00-00', '00:00:00', 'One Way', '', '0', 'Male', '', NULL, 22, '2016-05-28 05:12:52', 'FILLING', '1', '1', '', '0000-00-00 00:00:00'),
(16, '11', 'Daoudabougou', '12.6027769', '-7.9838097', 'Niarela', '12.6426524', '-7.9838097', '2016-05-31', '16:59:00', '0000-00-00', '00:00:00', 'One Way', '', '1', 'Both', '1', NULL, 26, '2016-05-31 12:00:53', 'CREATED', '0', '0', '', '0000-00-00 00:00:00'),
(17, '9', 'Langata Road', '-1.3363067999999998', '36.7757238', 'Nairobi Upper Hill', '-1.3010899999999999', '36.8169524', '2016-06-01', '06:50:00', '0000-00-00', '00:00:00', 'One Way', '', '1', 'Both', '50', NULL, 49, '2016-05-31 18:53:02', 'FILLING', '0', '1', '', '0000-00-00 00:00:00'),
(18, '14', 'Tirupati', '13.628755700000001', '79.4191795', 'Hyderabad', '17.385044', '78.486671', '2016-06-02', '05:52:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Both', '15', NULL, 74, '2016-06-01 12:24:31', 'CANCEL', '1', '0', '', '0000-00-00 00:00:00'),
(19, '17', 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '2016-06-03', '12:08:00', '0000-00-00', '00:00:00', 'One Way', '', '0', 'Both', '3', NULL, 86, '2016-06-03 06:44:25', 'CANCEL', '1', '0', '', '0000-00-00 00:00:00'),
(20, '2', 'New Delhi', '28.6139391', '77.2090212', 'Jaipur', '26.9124336', '75.7872709', '2016-06-02', '12:47:00', '0000-00-00', '00:00:00', 'One Way', '', '1', 'Male', '5', NULL, 3, '2016-06-03 07:18:25', 'CANCEL', '0', '1', '', '0000-00-00 00:00:00'),
(21, '6', 'Bengaluru', '12.971598699999998', '77.5945627', 'Chennai', '13.082680199999997', '80.2707184', '2016-06-08', '03:20:00', '0000-00-00', '00:00:00', 'One Way', '', '2', 'Both', '10', NULL, 22, '2016-06-04 04:51:18', 'CREATED', '1', '1', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trip_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_trip_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `rider_id` int(20) NOT NULL,
  `pickup_point` varchar(150) CHARACTER SET utf8 NOT NULL,
  `drop_point` varchar(150) CHARACTER SET utf8 NOT NULL,
  `seats` int(5) NOT NULL,
  `comment` varchar(500) CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `trip_depature_time` datetime NOT NULL,
  `pickup_time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `tbl_trip_detail`
--

INSERT INTO `tbl_trip_detail` (`id`, `trip_id`, `user_id`, `rider_id`, `pickup_point`, `drop_point`, `seats`, `comment`, `status`, `created_at`, `updated_at`, `trip_depature_time`, `pickup_time`) VALUES
(1, 1, 4, 3, 'Surat', 'Mumbai', 1, '', 'Cancel', '2016-04-18 11:27:13', '2016-04-22 11:11:07', '2016-04-21 16:45:00', ''),
(2, 1, 4, 3, 'Surat', 'Mumbai', 1, '', 'Pending', '2016-04-18 11:28:34', '2016-04-18 11:28:34', '2016-04-21 16:45:00', ''),
(3, 1, 4, 3, 'Surat', 'Mumbai', 1, 'hhh', 'Pending', '2016-04-20 04:09:55', '2016-04-20 04:09:55', '2016-04-21 16:45:00', ''),
(4, 4, 3, 4, 'Valsad', 'Mumbai', 1, '', 'Pending', '2016-04-26 05:25:49', '2016-04-26 05:25:49', '2016-05-01 09:05:00', ''),
(5, 3, 3, 4, 'Valsad', 'Mumbai', 1, '', 'Pending', '2016-04-26 05:33:17', '2016-04-26 05:33:17', '2016-04-29 09:00:00', ''),
(6, 7, 23, 22, 'Surat', 'Vadodara', 2, '', 'Cancel', '2016-05-17 04:33:32', '2016-05-17 04:54:35', '2016-05-18 17:19:00', ''),
(7, 7, 23, 22, 'Surat', 'Vadodara', 2, 'yes?', 'Cancel', '2016-05-17 04:45:13', '2016-05-17 05:59:52', '2016-05-18 17:19:00', ''),
(8, 8, 22, 23, 'Bengaluru', 'Mumbai', 2, 'may I join', 'Cancel', '2016-05-17 04:57:24', '2016-05-30 05:16:57', '2016-05-19 23:25:00', ''),
(9, 8, 22, 23, 'Bengaluru', 'Mumbai', 1, 'jh', 'Pending', '2016-05-17 07:03:58', '2016-05-17 07:03:58', '2016-05-19 23:25:00', ''),
(10, 8, 22, 23, 'Bengaluru', 'Mumbai', 1, '', 'Cancel', '2016-05-17 07:06:22', '2016-05-17 07:53:22', '2016-05-19 23:25:00', ''),
(11, 7, 23, 22, 'Surat', 'Vadodara', 1, '', 'Accept', '2016-05-17 10:13:38', '2016-05-17 10:15:58', '2016-05-18 17:19:00', '18 May 2016 5:19 pm'),
(12, 8, 22, 23, 'Bengaluru', 'Mumbai', 1, '', 'Accept', '2016-05-17 11:28:53', '2016-05-17 11:55:25', '2016-05-19 23:25:00', '18 May 2016 5:19 pm'),
(13, 9, 23, 22, 'Palanpur Jakatnaka', 'Millenium', 1, 'accept me', 'Accept', '2016-05-18 04:57:03', '2016-05-28 05:13:26', '2016-05-18 17:19:00', '18 May 2016 5:56 am'),
(14, 9, 23, 22, 'Palanpur Jakatnaka', 'Millenium', 1, 'accept me', 'Reject', '2016-05-18 04:57:54', '2016-05-28 05:14:52', '2016-05-18 17:19:00', ''),
(15, 9, 23, 22, 'Palanpur Jakatnaka', 'Millenium', 1, 'accept me', 'Reject', '2016-05-18 05:03:37', '2016-05-28 05:14:56', '2016-05-18 17:19:00', ''),
(16, 9, 23, 22, 'Palanpur Jakatnaka', 'Millenium', 1, 'accept me', 'Reject', '2016-05-18 05:08:50', '2016-05-28 05:14:58', '2016-05-18 17:19:00', ''),
(17, 13, 26, 27, 'BahÃ§elievler', 'AltÄ±noluk Belediyesi', 1, 'test', 'Cancel', '2016-05-28 00:28:39', '2016-05-29 07:20:27', '2016-05-29 05:00:00', ''),
(18, 14, 28, 22, 'Surat', 'Borivali', 1, '', 'Accept', '2016-05-28 06:40:56', '2016-05-28 20:09:24', '2016-05-31 06:05:00', '31 May 2016 6:05 am'),
(19, 14, 28, 22, 'Surat', 'Borivali', 1, 'hhhh', 'Accept', '2016-05-28 06:41:26', '2016-05-30 06:13:33', '2016-05-31 06:05:00', '31 May 2016 6:05 am'),
(20, 15, 26, 22, 'Borivali', 'Valsad', 1, '', 'Accept', '2016-05-28 08:17:01', '2016-05-30 06:14:44', '2016-06-01 00:42:00', '01 Jun 2016 12:42 am'),
(39, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:20:10', '2016-05-30 07:20:10', '2016-05-31 06:05:00', ''),
(40, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:20:23', '2016-05-30 07:20:23', '2016-05-31 06:05:00', ''),
(41, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:37:04', '2016-05-30 07:37:04', '2016-05-31 06:05:00', ''),
(42, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:38:40', '2016-05-30 07:38:40', '2016-05-31 06:05:00', ''),
(43, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:50:48', '2016-05-30 07:50:48', '2016-05-31 06:05:00', ''),
(44, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:52:25', '2016-05-30 07:52:25', '2016-05-31 06:05:00', ''),
(45, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:52:55', '2016-05-30 07:52:55', '2016-05-31 06:05:00', ''),
(46, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:53:12', '2016-05-30 07:53:12', '2016-05-31 06:05:00', ''),
(47, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:54:25', '2016-05-30 07:54:25', '2016-05-31 06:05:00', ''),
(48, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:57:25', '2016-05-30 07:57:25', '2016-05-31 06:05:00', ''),
(49, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:58:09', '2016-05-30 07:58:09', '2016-05-31 06:05:00', ''),
(50, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 07:58:44', '2016-05-30 07:58:44', '2016-05-31 06:05:00', ''),
(51, 14, 45, 22, 'Surat', 'Borivali', 2, 'hello', 'Pending', '2016-05-30 08:03:29', '2016-05-30 08:03:29', '2016-05-31 06:05:00', ''),
(52, 14, 48, 22, 'Surat', 'Borivali', 1, 'je sii intÃ©ressÃ©', 'Pending', '2016-05-31 09:05:36', '2016-05-31 09:05:36', '2016-05-31 06:05:00', ''),
(53, 14, 56, 22, 'Surat', 'Borivali', 1, '', 'Pending', '2016-05-31 09:25:37', '2016-05-31 09:25:37', '2016-05-31 06:05:00', ''),
(54, 14, 56, 22, 'Surat', 'Borivali', 1, '', 'Pending', '2016-05-31 09:27:09', '2016-05-31 09:27:09', '2016-05-31 06:05:00', ''),
(55, 14, 54, 22, 'Surat', 'Borivali', 1, '', 'Pending', '2016-05-31 11:51:11', '2016-05-31 11:51:11', '2016-05-31 06:05:00', ''),
(56, 16, 58, 26, 'Daoudabougou', 'Niarela', 1, '', 'Pending', '2016-05-31 12:06:26', '2016-05-31 12:06:26', '2016-05-31 16:59:00', ''),
(57, 16, 58, 26, 'Daoudabougou', 'Niarela', 1, '', 'Pending', '2016-05-31 12:06:50', '2016-05-31 12:06:50', '2016-05-31 16:59:00', ''),
(58, 17, 68, 49, 'Langata Road', 'Nairobi Upper Hill', 2, 'Please pick me', 'Accept', '2016-05-31 18:59:08', '2016-05-31 19:01:47', '2016-06-01 06:50:00', '01 Jun 2016 6:50 am'),
(59, 18, 75, 74, 'Tirupati', 'Kurnool', 1, 'hi hello', 'Cancel', '2016-06-01 12:33:24', '2016-06-01 12:37:16', '2016-06-02 05:52:00', '02 Jun 2016 5:52 am'),
(60, 18, 75, 74, 'Tirupati', 'Kurnool', 1, '', 'Cancel', '2016-06-01 12:33:45', '2016-06-01 12:37:16', '2016-06-02 05:52:00', ''),
(61, 18, 75, 74, 'Kurnool', 'Hyderabad', 1, '', 'Pending', '2016-06-01 16:01:21', '2016-06-01 16:01:21', '2016-06-02 05:52:00', ''),
(62, 18, 24, 74, 'Kurnool', 'Hyderabad', 2, '', 'Cancel', '2016-06-02 01:02:19', '2016-06-02 01:16:54', '2016-06-02 05:52:00', ''),
(63, 18, 78, 74, 'Tirupati', 'Kurnool', 1, 'hh', 'Pending', '2016-06-02 05:46:41', '2016-06-02 05:46:41', '2016-06-02 05:52:00', ''),
(64, 18, 80, 74, 'Tirupati', 'Hyderabad', 1, 'please pick me up here', 'Pending', '2016-06-02 08:33:49', '2016-06-02 08:33:49', '2016-06-02 05:52:00', ''),
(65, 18, 81, 74, 'Tirupati', 'Kurnool', 1, '', 'Pending', '2016-06-02 09:09:41', '2016-06-02 09:09:41', '2016-06-02 05:52:00', ''),
(66, 18, 82, 74, 'Tirupati', 'Kurnool', 1, '', 'Pending', '2016-06-02 11:05:25', '2016-06-02 11:05:25', '2016-06-02 05:52:00', ''),
(67, 19, 23, 86, 'Surat', 'Vapi', 1, '', 'Accept', '2016-06-03 07:10:40', '2016-06-03 07:15:59', '2016-06-03 12:08:00', '03 Jun 2016 12:08 pm'),
(68, 19, 3, 86, 'Vapi', 'Mumbai', 1, '', 'Reject', '2016-06-03 07:13:15', '2016-06-03 07:16:08', '2016-06-03 12:08:00', ''),
(69, 19, 23, 86, 'Surat', 'Vapi', 1, '', 'Pending', '2016-06-03 07:13:28', '2016-06-03 07:13:28', '2016-06-03 12:08:00', ''),
(70, 21, 23, 22, 'Bengaluru', 'Chennai', 2, '', 'Pending', '2016-06-04 05:01:15', '2016-06-04 05:01:15', '2016-06-08 03:20:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_trip_legs`
--

CREATE TABLE IF NOT EXISTS `tbl_t_trip_legs` (
  `trip_led_id` int(150) NOT NULL AUTO_INCREMENT,
  `source_leg` text NOT NULL,
  `source_latitude` varchar(255) NOT NULL,
  `source_longitude` varchar(255) NOT NULL,
  `destination_leg` text NOT NULL,
  `destination_latitude` varchar(255) NOT NULL,
  `destination_longitude` varchar(255) NOT NULL,
  `expected_time` varchar(50) NOT NULL,
  `trip_return` int(10) NOT NULL,
  `route_rate` int(150) NOT NULL DEFAULT '0',
  `trip_id` int(150) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`trip_led_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `tbl_t_trip_legs`
--

INSERT INTO `tbl_t_trip_legs` (`trip_led_id`, `source_leg`, `source_latitude`, `source_longitude`, `destination_leg`, `destination_latitude`, `destination_longitude`, `expected_time`, `trip_return`, `route_rate`, `trip_id`, `created_time`) VALUES
(1, 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '', 0, 932, 1, '2016-04-16 11:23:36'),
(2, 'Surat', '21.170240099999997', '72.83106070000001', 'Navsari', '20.9467019', '72.95203479999999', '', 0, 84, 2, '2016-04-18 11:04:37'),
(3, 'Bilimora', '20.769026399999998', '72.9777738', 'Valsad', '20.599234900000003', '72.9342451', '', 0, 95, 3, '2016-04-21 04:32:56'),
(4, 'Bilimora', '20.769026399999998', '72.9777738', 'Vapi', '20.3893155', '72.9106202', '', 0, 215, 3, '2016-04-21 04:32:56'),
(5, 'Bilimora', '20.769026399999998', '72.9777738', 'Mumbai', '19.0759837', '72.8776559', '', 0, 945, 3, '2016-04-21 04:32:56'),
(6, 'Valsad', '20.599234900000003', '72.9342451', 'Vapi', '20.3893155', '72.9106202', '', 0, 115, 3, '2016-04-21 04:32:56'),
(7, 'Valsad', '20.599234900000003', '72.9342451', 'Mumbai', '19.0759837', '72.8776559', '', 0, 845, 3, '2016-04-21 04:32:56'),
(8, 'Vapi', '20.3893155', '72.9106202', 'Mumbai', '19.0759837', '72.8776559', '', 0, 730, 3, '2016-04-21 04:32:56'),
(9, 'Mumbai', '19.0759837', '72.8776559', 'Vapi', '20.3893155', '72.9106202', '', 1, 730, 3, '2016-04-21 04:32:56'),
(10, 'Mumbai', '19.0759837', '72.8776559', 'Valsad', '20.599234900000003', '72.9342451', '', 1, 845, 3, '2016-04-21 04:32:56'),
(11, 'Mumbai', '19.0759837', '72.8776559', 'Bilimora', '20.769026399999998', '72.9777738', '', 1, 945, 3, '2016-04-21 04:32:56'),
(12, 'Vapi', '20.3893155', '72.9106202', 'Valsad', '20.599234900000003', '72.9342451', '', 1, 115, 3, '2016-04-21 04:32:56'),
(13, 'Vapi', '20.3893155', '72.9106202', 'Bilimora', '20.769026399999998', '72.9777738', '', 1, 215, 3, '2016-04-21 04:32:56'),
(14, 'Valsad', '20.599234900000003', '72.9342451', 'Bilimora', '20.769026399999998', '72.9777738', '', 1, 95, 3, '2016-04-21 04:32:56'),
(15, 'Surat', '21.170240099999997', '72.83106070000001', 'Valsad', '20.599234900000003', '72.9342451', '', 0, 320, 4, '2016-04-21 07:48:37'),
(16, 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '', 0, 1165, 4, '2016-04-21 07:48:37'),
(17, 'Valsad', '20.599234900000003', '72.9342451', 'Mumbai', '19.0759837', '72.8776559', '', 0, 845, 4, '2016-04-21 07:48:37'),
(18, 'Mumbai', '19.0759837', '72.8776559', 'Valsad', '20.599234900000003', '72.9342451', '', 1, 845, 4, '2016-04-21 07:48:37'),
(19, 'Mumbai', '19.0759837', '72.8776559', 'Surat', '21.170240099999997', '72.83106070000001', '', 1, 1165, 4, '2016-04-21 07:48:37'),
(20, 'Valsad', '20.599234900000003', '72.9342451', 'Surat', '21.170240099999997', '72.83106070000001', '', 1, 320, 4, '2016-04-21 07:48:37'),
(21, 'Surat', '21.170240099999997', '72.83106070000001', 'Vadodara', '22.307158799999996', '73.1812187', '', 0, 655, 5, '2016-05-05 08:48:58'),
(22, 'Surat', '21.170240099999997', '72.83106070000001', 'Jaipur', '26.9124336', '75.7872709', '', 0, 3525, 5, '2016-05-05 08:48:58'),
(23, 'Surat', '21.170240099999997', '72.83106070000001', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 1040, 5, '2016-05-05 08:48:58'),
(24, 'Surat', '21.170240099999997', '72.83106070000001', 'New Delhi', '28.6139391', '77.2090212', '', 0, 4690, 5, '2016-05-05 08:48:58'),
(25, 'Vadodara', '22.307158799999996', '73.1812187', 'Jaipur', '26.9124336', '75.7872709', '', 0, 2880, 5, '2016-05-05 08:48:58'),
(26, 'Vadodara', '22.307158799999996', '73.1812187', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 505, 5, '2016-05-05 08:48:58'),
(27, 'Vadodara', '22.307158799999996', '73.1812187', 'New Delhi', '28.6139391', '77.2090212', '', 0, 4045, 5, '2016-05-05 08:48:58'),
(28, 'Jaipur', '26.9124336', '75.7872709', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 2700, 5, '2016-05-05 08:48:58'),
(29, 'Jaipur', '26.9124336', '75.7872709', 'New Delhi', '28.6139391', '77.2090212', '', 0, 1175, 5, '2016-05-05 08:48:58'),
(30, 'Ahmedabad', '23.022505', '72.5713621', 'New Delhi', '28.6139391', '77.2090212', '', 0, 3880, 5, '2016-05-05 08:48:58'),
(31, 'Mumbai', '19.0759837', '72.8776559', 'Bengaluru', '12.971598699999998', '77.5945627', '', 0, 5915, 6, '2016-05-05 11:36:28'),
(32, 'Surat', '21.170240099999997', '72.83106070000001', 'Vadodara', '22.307158799999996', '73.1812187', '', 0, 655, 7, '2016-05-16 11:50:31'),
(33, 'Surat', '21.170240099999997', '72.83106070000001', 'New Delhi', '28.6139391', '77.2090212', '', 0, 4690, 7, '2016-05-16 11:50:31'),
(34, 'Vadodara', '22.307158799999996', '73.1812187', 'New Delhi', '28.6139391', '77.2090212', '', 0, 4045, 7, '2016-05-16 11:50:31'),
(35, 'Bengaluru', '12.971598699999998', '77.5945627', 'Mumbai', '19.0759837', '72.8776559', '', 0, 10985, 8, '2016-05-17 04:56:55'),
(36, 'Palanpur Jakatnaka', '21.209466199999994', '72.78101989999999', 'Millennium Textile Market 2', '21.1841317', '72.84632920000001', '', 0, 70, 9, '2016-05-18 04:27:20'),
(37, 'Surat', '21.170240099999997', '72.83106070000001', 'Vapi', '20.3893155', '72.9106202', '', 0, 435, 10, '2016-05-19 05:18:41'),
(38, 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '', 0, 1165, 10, '2016-05-19 05:18:41'),
(39, 'Vapi', '20.3893155', '72.9106202', 'Mumbai', '19.0759837', '72.8776559', '', 0, 730, 10, '2016-05-19 05:18:41'),
(40, 'New Delhi', '28.6139391', '77.2090212', 'Jaipur', '26.9124336', '75.7872709', '', 0, 2350, 11, '2016-05-19 05:21:46'),
(41, 'New Delhi', '28.6139391', '77.2090212', 'Udaipur', '24.585445', '73.712479', '', 0, 5670, 11, '2016-05-19 05:21:46'),
(42, 'New Delhi', '28.6139391', '77.2090212', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 7760, 11, '2016-05-19 05:21:46'),
(43, 'Jaipur', '26.9124336', '75.7872709', 'Udaipur', '24.585445', '73.712479', '', 0, 3320, 11, '2016-05-19 05:21:46'),
(44, 'Jaipur', '26.9124336', '75.7872709', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 5400, 11, '2016-05-19 05:21:46'),
(45, 'Udaipur', '24.585445', '73.712479', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 2090, 11, '2016-05-19 05:21:46'),
(46, 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '', 0, 1165, 12, '2016-05-24 08:07:42'),
(47, 'Surat', '21.170240099999997', '72.83106070000001', 'Pune', '18.520430299999997', '73.8567437', '', 0, 1570, 12, '2016-05-24 08:07:42'),
(48, 'Surat', '21.170240099999997', '72.83106070000001', 'Bengaluru', '12.971598699999998', '77.5945627', '', 0, 5210, 12, '2016-05-24 08:07:42'),
(49, 'Mumbai', '19.0759837', '72.8776559', 'Pune', '18.520430299999997', '73.8567437', '', 0, 600, 12, '2016-05-24 08:07:42'),
(50, 'Mumbai', '19.0759837', '72.8776559', 'Bengaluru', '12.971598699999998', '77.5945627', '', 0, 4225, 12, '2016-05-24 08:07:42'),
(51, 'Pune', '18.520430299999997', '73.8567437', 'Bengaluru', '12.971598699999998', '77.5945627', '', 0, 3675, 12, '2016-05-24 08:07:42'),
(52, 'BahÃ§elievler', '41.008545', '28.824721999999994', 'AltÄ±noluk Belediyesi', '39.605417900000006', '26.737858500000005', '', 0, 94400, 13, '2016-05-27 23:02:21'),
(53, 'Surat', '21.170240099999997', '72.83106070000001', 'Borivali', '19.237187699999996', '72.8441358', '', 0, 0, 14, '2016-05-28 05:11:46'),
(54, 'Borivali', '19.237187699999996', '72.8441358', 'Valsad', '20.599234900000003', '72.9342451', '', 0, 0, 15, '2016-05-28 05:12:52'),
(55, 'Borivali', '19.237187699999996', '72.8441358', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 0, 15, '2016-05-28 05:12:52'),
(56, 'Valsad', '20.599234900000003', '72.9342451', 'Ahmedabad', '23.022505', '72.5713621', '', 0, 0, 15, '2016-05-28 05:12:52'),
(57, 'Daoudabougou', '12.6027769', '', 'Niarela', '12.6426524', '7.9838097', '', 0, 866, 16, '2016-05-31 12:00:53'),
(58, 'Langata Road', '', '36.7757238', 'Mbagathi Way', '1.3363067999999998', '36.804665799999995', '', 0, 7450, 17, '2016-05-31 18:53:02'),
(59, 'Tirupati', '13.628755700000001', '79.4191795', 'Kurnool', '15.8281257', '78.0372792', '', 0, 4290, 18, '2016-06-01 12:24:31'),
(60, 'Tirupati', '13.628755700000001', '79.4191795', 'Hyderabad', '17.385044', '78.486671', '', 0, 6435, 18, '2016-06-01 12:24:31'),
(61, 'Kurnool', '15.8281257', '78.0372792', 'Hyderabad', '17.385044', '78.486671', '', 0, 2700, 18, '2016-06-01 12:24:31'),
(62, 'Surat', '21.170240099999997', '72.83106070000001', 'Vapi', '20.3893155', '72.9106202', '', 0, 261, 19, '2016-06-03 06:44:25'),
(63, 'Surat', '21.170240099999997', '72.83106070000001', 'Mumbai', '19.0759837', '72.8776559', '', 0, 699, 19, '2016-06-03 06:44:25'),
(64, 'Vapi', '20.3893155', '72.9106202', 'Mumbai', '19.0759837', '72.8776559', '', 0, 438, 19, '2016-06-03 06:44:25'),
(65, 'New Delhi', '28.6139391', '77.2090212', 'Jaipur', '26.9124336', '75.7872709', '', 0, 1175, 20, '2016-06-03 07:18:25'),
(66, 'Bengaluru', '12.971598699999998', '77.5945627', 'Ooty', '11.4064138', '76.69324379999999', '', 0, 2000, 21, '2016-06-04 04:51:18'),
(67, 'Bengaluru', '12.971598699999998', '77.5945627', 'Chennai', '13.082680199999997', '80.2707184', '', 0, 2900, 21, '2016-06-04 04:51:18'),
(68, 'Ooty', '11.4064138', '76.69324379999999', 'Chennai', '13.082680199999997', '80.2707184', '', 0, 4310, 21, '2016-06-04 04:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlocation`
--

CREATE TABLE IF NOT EXISTS `tbl_userlocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(40) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_type` varchar(40) DEFAULT NULL COMMENT '1->Travel  , 2->Individuals',
  `user_name` varchar(100) DEFAULT NULL,
  `user_about_us` text NOT NULL,
  `user_profile_img` varchar(255) NOT NULL,
  `user_identity_img` varchar(250) CHARACTER SET utf8 NOT NULL,
  `user_mobile` varchar(40) DEFAULT NULL,
  `user_secondary_phone` varchar(40) DEFAULT NULL,
  `user_city` varchar(40) DEFAULT NULL,
  `postal_code` int(50) DEFAULT NULL,
  `marital_status` varchar(40) DEFAULT NULL,
  `isverified` varchar(60) NOT NULL,
  `user_gender` varchar(40) DEFAULT NULL,
  `user_country` varchar(40) DEFAULT NULL,
  `user_dob` varchar(50) NOT NULL,
  `login_type` int(10) NOT NULL COMMENT '0-->normal ,1-->facebook',
  `isactive` int(2) NOT NULL,
  `user_admin_status` int(11) NOT NULL DEFAULT '0',
  `user_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lost_login` varchar(255) NOT NULL,
  `user_fb_id` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_password`, `user_type`, `user_name`, `user_about_us`, `user_profile_img`, `user_identity_img`, `user_mobile`, `user_secondary_phone`, `user_city`, `postal_code`, `marital_status`, `isverified`, `user_gender`, `user_country`, `user_dob`, `login_type`, `isactive`, `user_admin_status`, `user_created_date`, `user_lost_login`, `user_fb_id`) VALUES
(3, 'tandel_shefali@yahoo.com', NULL, NULL, 'Shefali Tandel', '', 'd859656a6a1f8ce6.jpg', 'b251c3cb01683a4b.jpg', '+918866364494', NULL, 'surat', 369321, NULL, 'yes', 'Female', 'India', '13 may 1992', 0, 0, 0, '2016-03-16 10:17:45', '', '916618215103892'),
(4, 'roshan@co.in', NULL, NULL, 'Roshan', '', '28b6eb966a882179.jpg', 'ad4da94c0b89b570.png', '+919825140904', NULL, 'Chikhli', 396321, NULL, 'yes', 'Male', 'India', '08 Apr 1990', 0, 0, 0, '2016-04-08 05:10:21', '', ''),
(22, 'utpalfacebook23@gmail.com', NULL, NULL, 'Utpal Ruparel', '', '3c6aead003b29078.jpg', '9ca2395b17a58eeb.jpg', '+919909777668', NULL, 'Surat', 395009, NULL, 'yes', 'Male', 'India', '05 May 2016', 0, 0, 0, '2016-05-05 03:44:44', '', '10153373600790496'),
(23, 'mayuri2411@gmail.com', NULL, NULL, 'mayuri', '', '', '', '+919727179599', NULL, 'Virar', 401303, NULL, 'No', 'Female', '0', '24 Nov 1986', 0, 0, 0, '2016-05-16 12:53:05', '', ''),
(24, '', NULL, NULL, 'PA to no terms', '', '', '', '+2348082501100', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-27 20:48:01', '', ''),
(25, 'test11111@gmail.com', NULL, NULL, 'test11111', '', '', '', '+660847045694', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-27 21:52:27', '', ''),
(26, 'sega@laposte.net', NULL, NULL, 'test', '', '', '', '+33651144440', NULL, 'Paris', 75001, NULL, 'No', 'Male', 'France', '17 mai 1992', 0, 0, 0, '2016-05-27 22:20:55', '', ''),
(27, 'info@medajans.com', NULL, NULL, 'Erdal Konca', '', 'c4830b1a20943cfb.jpeg', '', '+905064480448', NULL, 'Ä°stanbul', 34195, NULL, 'No', 'Male', '', '28 May 1985', 0, 0, 0, '2016-05-27 22:52:08', '', ''),
(28, '', NULL, NULL, 'trs', '', '', '', '+628123456789', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-28 06:39:36', '', ''),
(29, '', NULL, NULL, '', '', '', '', '+919979797950', NULL, 'Bhuj', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-28 09:24:42', '', ''),
(30, NULL, NULL, NULL, NULL, '', '', '', '+96176014446', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-28 13:11:13', '', ''),
(31, 'cife@globasure.net', NULL, NULL, 'Chris', '', '38707253f6345c29.jpg', '582441cdf02a865b.jpg', '+2348066951229', NULL, 'Lagos', 200183, NULL, 'No', 'Male', 'Nigeria', '28 May 1990', 0, 0, 0, '2016-05-28 13:11:56', '', ''),
(32, 'viral.sharma89@gmail.com', NULL, NULL, 'Sharma Viral ', '', '', '', '+256706343071', NULL, 'Kampala', 256, NULL, 'No', 'Male', 'Uganda ', '13 May 2016', 0, 0, 0, '2016-05-28 13:50:09', '', ''),
(33, '', NULL, NULL, 'Ahmed yousef', '', '', '', '+201027384713', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-28 16:54:22', '', ''),
(34, NULL, NULL, NULL, NULL, '', '', '', '+919444211700', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-28 16:56:19', '', ''),
(35, 'raulferreiradarocha@hotmail.com', NULL, NULL, 'Raul', '', '', '', '+5519994912072', NULL, 'Campinas', 13060223, NULL, 'No', 'Male', 'Brasil ', '04 jun 1973', 0, 0, 0, '2016-05-28 20:51:11', '', ''),
(36, 'novi.nuari2@gmail.com', NULL, NULL, 'novi', '', 'ce54a4a26a9b1eea.jpg', '', '+628115622890', NULL, 'Pontianak', 78124, NULL, 'No', 'Male', 'Indonesia', '25 Nov 1989', 0, 0, 0, '2016-05-29 00:50:52', '', ''),
(37, '', NULL, NULL, '', '', '', '', '+660880640834', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-29 05:06:28', '', ''),
(38, '', NULL, NULL, '', '', '', '', '+393274087306', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-29 13:33:11', '', ''),
(39, 'erus123@yahoo.com', NULL, NULL, 'Quest', '', '', '', '+2348037273356', NULL, 'Enugu', 3013, NULL, 'No', 'Male', 'Nigeria', '21 Dec 1998', 0, 0, 0, '2016-05-29 13:44:54', '', ''),
(40, NULL, NULL, NULL, NULL, '', '', '', '+38971716235', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-29 17:58:22', '', ''),
(41, 'text@text', NULL, NULL, 'test', '', '', '', '+911234567890', NULL, 'Thirty', 3568, NULL, 'No', 'Male', 'Ubff', '29 May 2016', 0, 0, 0, '2016-05-29 18:14:56', '', ''),
(42, '', NULL, NULL, '', '', '', '', '+50499999999', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-29 18:58:30', '', ''),
(43, NULL, NULL, NULL, NULL, '', '', '', '+5512988101019', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-29 19:04:56', '', ''),
(44, 'volkan@hotmail.com', NULL, NULL, 'volkan cicek', '', '', '', '+905462562574', NULL, 'Yozgat', 66100, NULL, 'No', 'Male', 'Turkey', '', 0, 0, 0, '2016-05-29 19:28:25', '', ''),
(45, '', NULL, NULL, '', '', '', '', '+919374711468', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-30 06:30:03', '', ''),
(46, '', NULL, NULL, 'Test', '', '', '', '+939910597779', NULL, 'Mumbai', 400022, NULL, 'No', 'Male', 'India', '', 0, 0, 0, '2016-05-30 12:50:15', '', ''),
(47, NULL, NULL, NULL, NULL, '', '', '', '+628565013288', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-30 13:04:43', '', ''),
(48, 'diopousman@gmail.com', NULL, NULL, 'ousmane', '', '', '', '+221776359560', NULL, 'Dakar', 99000, NULL, 'No', 'Male', 'SÃ©nÃ©gal', '13 janv. 1990', 0, 0, 0, '2016-05-30 14:56:55', '', ''),
(49, 'joseh@gmail.com', NULL, NULL, 'Joseh', '', '156e1d38ec54a7c8.jpg', '9231006d234d3259.jpg', '+254717954350', NULL, 'Nai', 50102, NULL, 'No', 'Male', '', '11 Jan 1995', 0, 0, 0, '2016-05-30 18:24:20', '', ''),
(50, NULL, NULL, NULL, NULL, '', '', '', '+919868026060', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-30 20:59:32', '', ''),
(51, '', NULL, NULL, 'agni', '', '', '', '+919094545656', NULL, 'Chennai', 0, NULL, 'No', 'Male', 'India', '30 May 1990', 0, 0, 0, '2016-05-31 03:51:01', '', ''),
(52, NULL, NULL, NULL, NULL, '', '', '', '+51989596444', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-31 04:57:06', '', ''),
(53, 'c@c.com', NULL, NULL, 'Ø§Ø­Ù…Ø¯', '', '', '', '+966556868124', NULL, 'Makkah', 12345, NULL, 'No', 'Male', 'Saudi', 'Ù£Ù¡ Ù…Ø§ÙŠÙˆ Ù¡Ù©Ù©Ù¡', 0, 0, 0, '2016-05-31 08:42:34', '', ''),
(54, 'irfandedy@gmail.com', NULL, NULL, 'irfan', '', '744d5d3198f7c178.jpg', 'a3663d7e60dc1638.jpg', '+628111593694', NULL, 'malang', 12780, NULL, 'No', 'Male', 'indonesia', '19 Feb 1975', 0, 0, 0, '2016-05-31 08:45:43', '', ''),
(55, '', NULL, NULL, '', '', '', '', '+32497700036', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 08:47:09', '', ''),
(56, 'pedromanuelsalas@outlook.com', NULL, NULL, 'Pedro Manuel salas galindo', '', '', '', '+524434579619', NULL, 'Morelia', 58000, NULL, 'No', 'Male', 'Mexico', '', 0, 0, 0, '2016-05-31 09:24:28', '', ''),
(57, '', NULL, NULL, '', '', '', '', '+34677888599', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 09:27:20', '', ''),
(58, '', NULL, NULL, 'test', '', '', '', '+91123456789', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 10:32:47', '', ''),
(59, NULL, NULL, NULL, NULL, '', '', '', '+22665330166', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-31 11:55:53', '', ''),
(60, 'haltout.sohaib@gmail.com', NULL, NULL, 'haltout', '', 'd4de5ea6804ae8c5.jpg', '', '+212656081031', NULL, 'Ravat', 11000, NULL, 'No', 'Male', 'Morocco', '31 mai 1986', 0, 0, 0, '2016-05-31 11:56:48', '', ''),
(61, '', NULL, NULL, 'tesrgg', '', '6862c607aaddaa1e.jpg', '09573bc887b52f84.jpg', '+916699988855', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 12:23:57', '', ''),
(62, '', NULL, NULL, 'test', '', '4e203301424253ba.jpg', '4e1405f77eaa9b1d.png', '+918976464646', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 12:34:04', '', ''),
(63, '', NULL, NULL, 'test 77', '', '039df39383e330fa.jpg', '3cf8597f3ae9d18b.jpg', '+9186686868', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 13:11:45', '', ''),
(64, '', NULL, NULL, 'gffg', '', '73b634fc19c6a0ad.png', '4534cac2df92ebb9.jpg', '+919908555855', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 13:20:30', '', ''),
(65, '', NULL, NULL, 'aaddf', '', 'de3bb3e01eb13b42.png', 'b9bb2152b5f26173.jpg', '+91868686868', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 13:28:47', '', ''),
(66, NULL, NULL, NULL, NULL, '', '', '', '+2540728110017', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-31 14:24:26', '', ''),
(67, 'ebi.okpongu@gmail.com', NULL, NULL, 'testing ', '', '', '', '+2347034428600', NULL, 'Abuja', 0, NULL, 'No', 'Male', 'Nigeria', '', 0, 0, 0, '2016-05-31 18:11:25', '', ''),
(68, 'ogm@mail.com', NULL, NULL, 'Ogm', '', '', '', '+254700216886', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-05-31 18:55:56', '', ''),
(69, NULL, NULL, NULL, NULL, '', '', '', '+3131999934', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-05-31 23:38:11', '', ''),
(70, 'devapp@gmail.com', NULL, NULL, 'app', '', '', '', '+6281239012201', NULL, 'Bangkok', 8856, NULL, 'No', 'Male', 'Thailand', '01 Jun 1986', 0, 0, 0, '2016-06-01 03:44:55', '', ''),
(71, 'ha@dd.com', NULL, NULL, 'kamran', '', '', '', '+989120257856', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-06-01 06:32:14', '', ''),
(72, 'utpalfacebook23@gmail.com', NULL, NULL, 'Utpal Ruparel', '', '', '', '+919717279599', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-06-01 10:30:52', '', '10153373600790496'),
(73, 'zooglelim@gmail.com', NULL, NULL, 'AL', '', '', '', '+6598878871', NULL, 'Johor', 0, NULL, 'No', 'Male', 'Malaysia', '01 Jun 1974', 0, 0, 0, '2016-06-01 10:52:56', '', ''),
(74, 'kiran9966687772@gmail.com', NULL, NULL, 'kiran', '', '76841eb2f2498742.jpg', '697dc89eae4743de.jpg', '+919959999332', NULL, 'Hyderabad', 500081, NULL, 'No', 'Male', 'India', '01 Jun 1991', 0, 0, 0, '2016-06-01 12:13:43', '', ''),
(75, 'kiran@gmail.com', NULL, NULL, 'senu', '', '80f5379327de1948.jpg', 'dc6a609f0d8cb747.jpg', '+919966687772', NULL, 'Tirupathi', 500089, NULL, 'No', 'Male', 'India', '01 Jun 1987', 0, 0, 0, '2016-06-01 12:29:59', '', ''),
(76, 'jarmoud@gmail.om', NULL, NULL, 'Jarmoud', '', '', '', '+33626775134', NULL, 'garges les gonesse', 95140, NULL, 'No', 'Male', 'france', '01 Jun 1987', 0, 0, 0, '2016-06-02 01:19:22', '', ''),
(77, NULL, NULL, NULL, NULL, '', '', '', '+79116790225', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-06-02 05:16:13', '', ''),
(78, 'thakkar.darshan1@gmail.com', NULL, NULL, 'darshan', '', '', '', '+919429040954', NULL, 'Bhuj', 370001, NULL, 'No', 'Male', 'India', '16 Jun 1991', 0, 0, 0, '2016-06-02 05:34:45', '', ''),
(79, 'jhon@jhon.com', NULL, NULL, 'jhon', '', '', '', '+4407415478054', NULL, 'London', 0, NULL, 'No', 'Male', 'UK', '', 0, 0, 0, '2016-06-02 07:40:06', '', ''),
(80, 'brizdd@gmail.com', NULL, NULL, 'Brio', '', '', '', '+254716848567', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-06-02 08:31:44', '', ''),
(81, NULL, NULL, NULL, NULL, '', '', '', '+9168686858', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-06-02 09:06:53', '', ''),
(82, 'teste@gmail.com', NULL, NULL, 'felipe', '', '', '', '+5521986642099', NULL, '', 0, NULL, 'No', 'Male', '', '', 0, 0, 0, '2016-06-02 11:00:28', '', ''),
(83, 'mayuri2411@gmail.com', NULL, NULL, 'Mayuri Rajani Ruparel', '', '', '', '+919727179559', NULL, '', 0, NULL, 'No', 'Female', '', '', 0, 0, 0, '2016-06-02 12:30:45', '', '10154250238858824'),
(84, 'chirag22@gmail.com', NULL, NULL, 'chirag', '', 'a6ebfae710eb6fd7.jpeg', '', '+6281553847048', NULL, 'Mumbai', 512547, NULL, 'No', 'Male', 'India', '02 Jun 1984', 0, 0, 0, '2016-06-02 13:12:11', '', ''),
(85, 'ktbvma@gmail.com', NULL, NULL, 'mary', '', '', '', '+4915773977337', NULL, 'New York City', 11181, NULL, 'No', 'Female', 'USA', '', 0, 0, 0, '2016-06-03 00:18:31', '', ''),
(86, 'utpalfacebook23@gmail.com', NULL, NULL, 'Utpal Ruparel', '', '', '', '+919727179566', NULL, '', 0, NULL, 'No', 'Male', 'India', '', 0, 0, 0, '2016-06-03 06:37:09', '', '10153373600790496'),
(87, NULL, NULL, NULL, NULL, '', '', '', '+8201051727701', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-06-03 15:25:51', '', ''),
(88, NULL, NULL, NULL, NULL, '', 'aa58eb94da0f1e8e.jpg', '042f5bb8b292c9bc.jpg', '+19178214377', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-06-03 15:58:43', '', ''),
(89, 'nanndiee@yahoo.com', NULL, NULL, 'Sunandi', '', '', '', '+6287887882328', NULL, 'jakarta', 11720, NULL, 'No', 'Male', 'indonesia', '18 May 1992', 0, 0, 0, '2016-06-03 18:34:18', '', ''),
(90, NULL, NULL, NULL, NULL, '', '', '', '+212656740526', NULL, NULL, NULL, NULL, 'No', NULL, '', '', 0, 0, 0, '2016-06-03 18:52:54', '', ''),
(91, 'amed lamrh@gmail.com', NULL, NULL, 'amed lamrh', '', '', '', '+212656740562', NULL, 'Rabat', 18130, NULL, 'No', 'Male', 'Morocco', '18 juin 2016', 0, 0, 0, '2016-06-03 18:53:33', '', ''),
(92, 'utpalfacebook23@gmail.com', NULL, NULL, 'Utpal Ruparel', '', '', '', '+919988888', NULL, 'Surat', 0, NULL, 'No', 'Male', 'India', '', 0, 0, 0, '2016-06-04 05:10:50', '', '10153373600790496');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_varifyotp`
--

CREATE TABLE IF NOT EXISTS `tbl_varifyotp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_no` varchar(20) NOT NULL,
  `smsid` varchar(100) NOT NULL,
  `verificationcode` varchar(20) NOT NULL,
  `verifystatus` varchar(5) NOT NULL COMMENT 'Yes/No',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `tbl_varifyotp`
--

INSERT INTO `tbl_varifyotp` (`id`, `mobile_no`, `smsid`, `verificationcode`, `verifystatus`, `createdat`) VALUES
(14, '+122322', '0', '990990', 'No', '2016-05-27 19:37:41'),
(15, '+2011111111111', '0', '990990', 'No', '2016-05-27 19:40:00'),
(18, '+212677125309', '0', '990990', 'No', '2016-05-27 22:08:02'),
(21, '+918767009222', '0', '990990', 'No', '2016-05-28 03:23:19'),
(23, '+919999899963', '0', '990990', 'No', '2016-05-28 05:56:24'),
(24, '+497776633', '0', '990990', 'No', '2016-05-28 06:07:33'),
(27, '+4901723059259', '0', '990990', 'No', '2016-05-28 09:44:42'),
(35, '+66880640834', '0', '990990', 'No', '2016-05-29 05:05:12'),
(39, '+995592100600', '0', '990990', 'No', '2016-05-29 17:37:37'),
(84, '+6285205123058', '0', '990990', 'No', '2016-06-01 03:42:45'),
(86, '+989191571589', '0', '990990', 'No', '2016-06-01 06:27:38'),
(107, '+491577397737', '0', '990990', 'No', '2016-06-03 00:15:24'),
(109, '+49015773977337', '0', '990990', 'No', '2016-06-03 00:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `vehicle_cat_id` int(15) NOT NULL,
  `model` varchar(50) CHARACTER SET utf8 NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `vehicle_image` varchar(150) NOT NULL,
  `avaliable_seats` int(5) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_vehicle`
--

INSERT INTO `tbl_vehicle` (`id`, `user_id`, `vehicle_cat_id`, `model`, `vehicle_number`, `vehicle_image`, `avaliable_seats`, `vehicle_type`, `created_at`) VALUES
(2, 3, 19, 'ford1', 'GJ-01-qw-123', '588662a382618b41.jpg', 3, 'CNG', '2016-04-16 11:13:54'),
(3, 4, 19, 'ECO sport', 'GJ-02-SD-9871', '2512f54905710030.jpg', 5, 'Diesel', '2016-04-21 04:47:10'),
(4, 4, 22, 'creta', 'MH-04-AA-3321', '44e30175aac4828c.jpg', 5, 'Petrol', '2016-04-18 10:40:19'),
(6, 22, 26, 'wagon r', '1766', 'b6de3c05603b033b.jpg', 4, 'Diesel', '2016-05-05 05:07:09'),
(7, 23, 21, 'honda city', 'GJ 05 CH 8899', '16e65b5a517b5e20.jpg', 3, 'Petrol', '2016-05-17 04:36:50'),
(8, 27, 13, 'Palio', '34HC7287', '7836be0a333508a5.jpeg', 4, 'Diesel', '2016-05-27 22:56:42'),
(9, 49, 33, 'Isuzu', 'KBC 103C', 'f2080a7d7706e7d8.jpg', 5, 'Petrol', '2016-05-30 20:09:18'),
(10, 58, 26, 'swift', '1766', 'b6fadc64f5d10a0c.jpg', 3, 'Petrol', '2016-05-31 11:12:58'),
(11, 26, 27, 'classe b', '12337', 'e9a8a023bcf0edf5.jpg', 2, 'Diesel', '2016-05-31 11:59:24'),
(12, 72, 26, 'wagon r', '123456', '3ff83f952fdb6c26.jpg', 23, 'Petrol', '2016-06-01 10:38:52'),
(13, 72, 22, 'city', 'T6778', '7e6e9badf0d13b98.jpg', 33, 'CNG', '2016-06-01 10:39:39'),
(14, 74, 15, 'x7', 'AP04AA9999', '3253663ef2aaaf37.jpg', 4, 'Diesel', '2016-06-01 12:22:35'),
(15, 83, 22, 'city', '6677', 'a84509f54a5c74d9.png', 66, 'Petrol', '2016-06-02 12:32:29'),
(16, 83, 26, 'zen', '56777', '9b8191042a970f49.png', 66, 'Petrol', '2016-06-02 12:33:10'),
(17, 86, 22, 'city', '68888', '', 55, 'Petrol', '2016-06-03 06:38:12'),
(18, 86, 26, 'swift', '6778', '', 33, 'Petrol', '2016-06-03 06:38:37'),
(19, 22, 26, 'maruti baleno', '1766', '', 4, 'Diesel', '2016-06-04 04:50:12'),
(20, 22, 25, 'hhh', '5555', '', 2, 'Petrol', '2016-06-04 04:55:42'),
(21, 22, 26, '1766', '777', '', 3, 'Diesel', '2016-06-04 04:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_category`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle_category` (
  `car_id` int(15) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(56) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` int(2) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `tbl_vehicle_category`
--

INSERT INTO `tbl_vehicle_category` (`car_id`, `car_name`, `created_date`, `is_active`) VALUES
(19, 'Ford', '2015-01-08 23:51:50', 1),
(18, 'Ferrari', '2015-01-08 23:51:37', 1),
(17, 'Datsun', '2015-01-08 23:51:29', 1),
(16, 'Chevrolet', '2015-01-08 23:51:19', 1),
(15, 'BMW', '2015-01-08 23:51:10', 1),
(13, 'Fiat', '2015-01-08 23:50:38', 1),
(14, 'Bentley', '2015-01-08 23:51:02', 1),
(20, 'Hindustan Motors', '2015-01-08 23:51:59', 1),
(21, 'Honda', '2015-01-08 23:52:07', 1),
(22, 'Hyundai', '2015-01-08 23:52:15', 1),
(23, 'Isuzu', '2015-01-08 23:52:26', 1),
(24, 'Jaguar', '2015-01-08 23:52:34', 1),
(25, 'Mahindra', '2015-01-08 23:52:50', 1),
(26, 'Maruti Suzuki', '2015-01-08 23:52:59', 1),
(27, 'Mercedes-Benz', '2015-01-08 23:53:08', 1),
(28, 'Mini', '2015-01-08 23:53:16', 1),
(29, 'Nissan', '2015-01-08 23:53:26', 1),
(30, 'Renault', '2015-01-08 23:53:39', 1),
(31, 'Skoda', '2015-01-08 23:53:49', 1),
(32, 'Tata', '2015-01-08 23:54:14', 1),
(33, 'Toyota', '2015-01-08 23:54:23', 1),
(34, 'Volkswagen', '2015-01-08 23:54:32', 1),
(35, 'Volvo', '2015-01-08 23:54:41', 1),
(36, 'Mitsubishi', '2015-01-09 00:47:37', 1),
(37, 'Tempo Travel', '2015-01-18 12:52:19', 1),
(42, 'Ibac', '2016-06-03 11:13:39', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

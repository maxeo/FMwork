-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
<<<<<<< HEAD
<<<<<<< HEAD
-- Creato il: Set 24, 2016 alle 11:54
=======
-- Creato il: Set 19, 2016 alle 17:36
>>>>>>> parent of 63d4bf6... minor update
=======
-- Creato il: Set 24, 2016 alle 11:41
>>>>>>> parent of ede7881... minor update
-- Versione del server: 5.7.11
-- Versione PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxeo_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `addresses`
--

CREATE TABLE `addresses` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) NOT NULL,
  `company_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `vat` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `address1` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `city` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `state_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(36) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type_address` varchar(36) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `default_address` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) DEFAULT NULL,
  `IDconnection` int(11) DEFAULT NULL,
  `IDorder` int(11) DEFAULT NULL,
  `product_type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `tax` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `server_note` text COLLATE utf8_unicode_ci,
  `public_note` text COLLATE utf8_unicode_ci NOT NULL,
  `dateInsertion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `chat`
--

CREATE TABLE `chat` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) DEFAULT NULL,
  `IDconnection` int(11) DEFAULT NULL,
  `IDmessage` int(11) DEFAULT NULL,
  `IDcart` int(11) DEFAULT NULL,
  `IDorders` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `timeSend` datetime NOT NULL,
  `Reading` datetime NOT NULL,
  `state` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `attached` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `connections`
--

CREATE TABLE `connections` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) NOT NULL,
  `keyConnection` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `clientIP` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `first_connection` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `browser_info` text COLLATE utf8_unicode_ci NOT NULL,
  `time_connection` datetime NOT NULL,
  `captcha_key` varchar(6) CHARACTER SET ascii COLLATE ascii_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `connections`
--

INSERT INTO `connections` (`ID`, `IDuser`, `keyConnection`, `clientIP`, `first_connection`, `lang`, `browser_info`, `time_connection`, `captcha_key`) VALUES
(1, 0, '7Z3Tb9Xn5sCJcwS0L2L3HPbxKqJP5daDlwWgWoPrpy9fIU7p8WrNwXmVeqzFMVV4', '127.0.0.1', 'maxeo', 'it', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0', '2016-09-19 12:14:09', ''),
(2, 0, 'gwffQuIcsIOAgH670KgySkglDc2YAD1gDi6BEl5d9Fk2FJddQ6450WDFdsXxsyMJ', '127.0.0.1', 'maxeo', 'it', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0', '2016-09-19 12:52:06', ''),
(3, 0, '11Z8IbN8kTHybzaYamlp0Zi6z2kWmcmZheG7eHmwyexe2OIJYG4F6y0mGKuwlk5e', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:54:21', ''),
(4, 0, 'YrZCOZXLzbBxzQdIINyIukFuBB6jXgcvCsgZke84nLreffL7ghy9j3xPiF0IXpEA', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:56:07', ''),
(5, 0, 'ufAiT9HBoIVxYiHR6oLBMvcWdWYVjKTRYGgfpc20c7LdeX50o3LrCUUrKaIvitvw', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:56:46', ''),
(6, 0, 'puaoyvRQd6OwXZKAz5zue2ZzFQfi8PjotU2luA6SraFdcoslXJ9kuFrUmupH7x47', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:56:47', ''),
(7, 0, '4IaUdTCgsyI8Vq53IQmnWQwchLLUGTa4p3H699AHgIZcBGwuFkmDmpOXOpVuGcCP', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:57:37', ''),
(8, 0, 'GW0AiRMwgF08U3r7QrZG5BTFJgshsXRGKwHWEwKxuqScAxAeo4ZWEalzqjcGrgsl', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:57:45', ''),
(9, 0, 'B4Bg5oWmvn887zvc974ZhmqhlaZTECHcFkicKUUnjXMbY5DnwM5pw4ICSeJ71kjH', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:59:06', ''),
(10, 0, 'xyB4Tmg0kVq8r6YlhTa7Z9NKMvg2PGyZbziiPSEdyfGb9G2WFoaiOW22u9qFPpZd', '127.0.0.1', 'maxeo', '', '', '2016-09-19 16:59:45', ''),
(11, 0, '7mcSYKqRz1j7qICuPvNl6I4Nop5SbL5vwN3OuqO7nM0aw9kFN5NB2HciW787atQ0', '127.0.0.1', 'maxeo', '', '', '2016-09-19 17:00:26', ''),
(12, 0, '5K1SSV7yGUrpYcN4L4126oHrD2Qo7GZ6gIb5JERgWPm34H2QYbWV0QXSm72bBFmn', '127.0.0.1', 'maxeo', 'de', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', '2016-09-19 17:00:40', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `files_list`
--

CREATE TABLE `files_list` (
  `ID` int(11) NOT NULL,
  `IDconnection` int(11) DEFAULT NULL,
  `IDuser` int(11) DEFAULT NULL,
  `IDcart` int(11) DEFAULT NULL,
  `name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(16) NOT NULL,
  `timeload` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `logs_data`
--

CREATE TABLE `logs_data` (
  `ID` int(11) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `notice` text COLLATE utf8_unicode_ci NOT NULL,
  `data_var` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `notices`
--

CREATE TABLE `notices` (
  `ID` int(11) NOT NULL,
  `code` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `functionality` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `notices`
--

INSERT INTO `notices` (`ID`, `code`, `description`, `subject`, `functionality`, `lang`) VALUES
(1, 'ADD-F0001', 'Impossibile modificare l\'elemento di Default a causa di un problema sconosciuto', 'Address', 'addNew', 'it'),
(2, 'ADD-F0002', 'Inserire l\'elemento nel database a causa di un problema sconosciuto', 'Address', 'addNew', 'it'),
(3, 'ADD-F0003', 'Non è possibile inserire l\'indirizzo in qunto il tipo di indirizzo non è valido', 'Address', 'addNew', 'it'),
(4, 'ADD-F0004', 'Non è possibile cancellare un indirizzo di default', 'Address', 'remove', 'it'),
(5, 'ADD-F0005', 'Non è possibile cancellarel\'indirizzo a causa di un problema sconosciuto', 'Address', 'remove', 'it'),
(6, 'ADD-F0006', 'Non è possibile cancellare un indirizzo che non sia dell\'utente attuale', 'Address', 'remove', 'it'),
(7, 'ADD-F0007', 'L\'indirizzo che si tenta di cancellare non esiste', 'Address', 'remove', 'it'),
(8, 'CAP-F0001', 'Impossibile aggiornare il captcha per una causa sconoscita', 'Captcha', 'update', 'it'),
(9, 'CAR-F0001', 'Sono stati inseriti troppi elementi nel carrello', 'Cart', 'insert', 'it'),
(10, 'CAR-F0002', 'Impossibile cancellare l\'elemento. Problema nella query', 'Cart', 'removeItem', 'it'),
(11, 'CAR-F0003', 'Impossibile cancellare l\'elemento per una causa sconosciuta', 'Cart', 'removeItem', 'it'),
(12, 'CAR-F0004', 'L\'utente non è autorizzato a cancellare l\'elemento', 'Cart', 'removeItem', 'it'),
(13, 'CAR-F0005', 'L\'elemento che si tenta di cancellare non esiste', 'Cart', 'removeItem', 'it'),
(14, 'CAR-F0006', 'Non è stato possibile svuotare il carrello per una causa sconosciuta', 'Cart', 'clear', 'it'),
(15, 'CAR-F0007', 'Non è stato possibile unire i due carrelli a causa di un errore sconosciuto', 'Cart', 'merge', 'it'),
(16, 'CAR-F0008', 'Non è stato possibile unire i due carrelli a causa di un eccessivo numero di oggetti', 'Cart', 'merge', 'it'),
(17, 'CON-F0001', 'Cookie non validi per la connessione', 'Connection', 'start', 'it'),
(18, 'CON-F0002', 'Sono state superate le connessioni massime da questo IP. La connessione più vecchia sarà cancellata.', 'Connection', 'tooManyConnections', 'it'),
(19, 'ORD-F0001', 'Non è possibile procedere con l\'ordine a causa di un problema sconosciuto', 'Order', 'moveCart', 'it'),
(20, 'ORD-F0002', 'Non è possibile procedere con l\'ordine in quanto l\'utente non è loggato', 'Order', 'moveCart', 'it'),
(21, 'ORD-F0003', 'Non è possibile procedere con l\'ordine in quanto il carrello è vuoto', 'Order', 'moveCart', 'it'),
(22, 'ORD-F0004', 'Non è possibile procedere con l\'ordine.Deve essere specificato un indirizzo di spedizione', 'Order', 'moveCart', 'it'),
(23, 'ORD-F0005', 'Non è possibile procedere con l\'ordine.Deve essere specificato un indirizzo di fatturazione', 'Order', 'moveCart', 'it'),
(24, 'ORD-F0006', 'Non è possibile contare gli ordini poichè l\'utente non è loggato', 'Order', 'count', 'it'),
(25, 'ORD-F0007', 'Impossibile aggiungere o modificare lo stato dell\'ordine a causa di un problema sconosciuto', 'Order', 'updateState', 'it'),
(26, 'ORD-F0008', 'Impossibile aggiungere o modificare lo stato dell\'ordine poichè l\'ordine non esiste', 'Order', 'updateState', 'it'),
(27, 'ORD-F0009', 'Impossibile aggiungere o modificare il tracking number a causa di un problema sconosciuto', 'Order', 'updateTrackingNumber', 'it'),
(28, 'ORD-F0010', 'Impossibile aggiungere o modificare il tracking number poichè l\'ordine non esiste', 'Order', 'updateTrackingNumber', 'it'),
(29, 'ORD-F0011', 'Impossibile selezionare l\'ordine selezionato a causa di un problema sconosciuto', 'Order', 'getData', 'it'),
(30, 'USE-F0001', 'Mail non valida. Impossibile procedere con il login', 'User', 'correctLogin', 'it'),
(31, 'USE-F0002', 'Mail già presente. Impossibile procedere con la registrazione', 'User', 'registerNewUser', 'it'),
(32, 'USE-F0003', 'Mail non valida. Impossibile procedere con la registrazione', 'User', 'registerNewUser', 'it'),
(33, 'USE-F0004', 'la mail non esiste', 'User', 'activeUser', 'it'),
(34, 'USE-F0005', 'mail non valida', 'User', 'activeUser', 'it'),
(35, 'USE-F0006', 'la mail è già stata attivata o la chiave di attivazione non è valida', 'User', 'activeUser', 'it'),
(36, 'USE-F0007', 'Non è stato possibile caricare l\'utente in quanto non esiste', 'User', 'loadUser', 'it'),
<<<<<<< HEAD
(37, 'n_login_done', 'Login effettuato', '_login', 'notification', 'it'),
<<<<<<< HEAD
(38, 'n_mistake_name_or_password', 'Il nome utente o la password sono errati.', '_login', 'notification', 'it'),
(39, 'n_no_username_or_password', 'Per favore inserire nome utente e password', '_login', 'notification', 'it');
=======
(37, 'n1', 'Login effettuato', '_login', 'notification', 'it'),
(38, 'n2', 'Il nome utente o la password sono errati.', '_login', 'notification', 'it');
>>>>>>> parent of 63d4bf6... minor update
=======
(38, 'n_mistake_name_or_password', 'Il nome utente o la password sono errati.', '_login', 'notification', 'it');
>>>>>>> parent of ede7881... minor update

-- --------------------------------------------------------

--
-- Struttura della tabella `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `IDuser` int(11) NOT NULL,
  `IDbillingAddress` int(11) NOT NULL,
  `IDshippingAddress` int(11) NOT NULL,
  `type_paymant` varchar(32) DEFAULT NULL,
  `state_paymant` varchar(64) DEFAULT NULL,
  `state` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  ` tracking_number` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `history_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `pages`
--

CREATE TABLE `pages` (
  `ID` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type_page` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `terget_page` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(2) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `pages`
--

INSERT INTO `pages` (`ID`, `name`, `type_page`, `path`, `terget_page`, `lang`) VALUES
(1, 'login', 'view', 'include/view/registrtion_and_login/login/it.php', 'login', 'it'),
(2, 'login/do', 'controller', 'include/controller/registrtion_and_login/login.php', NULL, '*'),
(3, 'captcha.png', 'controller', 'include/controller/captcha.php', NULL, '*'),
(4, 'registrazione', 'view', 'include/view/registrtion_and_login/registration/it.php', 'registrtion', 'it'),
(5, 'registrazione/do', 'controller', 'include/controller/registrtion_and_login/registration.php', NULL, '*'),
(6, 'logout', 'controller', 'include/controller/registrtion_and_login/logout.php', NULL, '*'),
(7, 'avviso', 'view', 'include/view/report/it/w_avviso.php', 'report', 'it'),
(8, 'server/upload_files', 'controller', 'include/controller/file_manager/manager.php', NULL, '*'),
(9, '', 'view', 'include/view/home/multiLingalPage.php', 'home', 'it'),
(10, '', 'view', 'include/view/home/multiLingalPage.php', 'home', 'en');

-- --------------------------------------------------------

--
-- Struttura della tabella `page_elements`
--

CREATE TABLE `page_elements` (
  `ID` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `path` varchar(512) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `page_elements`
--

INSERT INTO `page_elements` (`ID`, `name`, `path`) VALUES
(1, 'exemple', 'include/view/frame/exemple.html'),
(2, 'exemple2', 'include/view/frame/exemple2');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `mail` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type_reg` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time_reg` datetime NOT NULL,
  `power_user` int(11) NOT NULL,
  `activation_key` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `clientIP` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `files_list`
--
ALTER TABLE `files_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `logs_data`
--
ALTER TABLE `logs_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `page_elements`
--
ALTER TABLE `page_elements`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `addresses`
--
ALTER TABLE `addresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `chat`
--
ALTER TABLE `chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `connections`
--
ALTER TABLE `connections`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT per la tabella `files_list`
--
ALTER TABLE `files_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `logs_data`
--
ALTER TABLE `logs_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `notices`
--
ALTER TABLE `notices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT per la tabella `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pages`
--
ALTER TABLE `pages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT per la tabella `page_elements`
--
ALTER TABLE `page_elements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
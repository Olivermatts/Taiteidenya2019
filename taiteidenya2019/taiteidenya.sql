-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2019 at 01:50 PM
-- Server version: 10.1.40-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taiteidenya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tapahtumat`
--

CREATE TABLE `tapahtumat` (
  `TapahtumaID` int(100) NOT NULL,
  `Järjestäjän_nimi` varchar(44) DEFAULT NULL,
  `Tapahtuman_nimi` varchar(107) DEFAULT NULL,
  `Kategoria` text NOT NULL,
  `Aloitusaika` time DEFAULT NULL,
  `päättymisaika` time DEFAULT NULL,
  `Osoite` varchar(82) DEFAULT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(11,6) NOT NULL,
  `Yhteystiedot` varchar(67) DEFAULT NULL,
  `Järjestäjännettisivut` varchar(66) DEFAULT NULL,
  `Tapahtumankuvaus` varchar(336) DEFAULT NULL,
  `tapahtumainfo` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapahtumat`
--

INSERT INTO `tapahtumat` (`TapahtumaID`, `Järjestäjän_nimi`, `Tapahtuman_nimi`, `Kategoria`, `Aloitusika`, `päättymisaika`, `Osoite`, `latitude`, `longitude`, `Yhteystiedot`, `Järjestäjännettisivut`, `Tapahtumankuvaus`, `tapahtumainfo`) VALUES
(1, 'Turun amk', 'Halikko vesitorni live', '', '17:00:00', '22:00:00', 'Joensuunkatu 7; IoT Campus', '60.389541', '23.103596', 'tiina.ferm@turkuamk.fi', 'www.turkuamk.fi', 'Live tour to Halikko vesitorni ', ''),
(2, 'Teatteri PROvinssi', 'Tohtori Zivago-suurmusikaalin avoimet harjoitukset. Teatteriravintola on myös auki', 'Muusiikki/draama', '18:00:00', '20:00:00', 'Salorankatu 5-7; ovi 3; Astrum keskus', '60.391358', '23.111659', 'myynti@teatteriprovinssi .fi', 'www.teatteriprovinssi.fi', 'Mahdollisuys seurata suurmusikaalin harjoituksia sekä nauttia vaikkapa pullakahvit Teatteriravintolassa', ''),
(3, 'Luovien alojen kansanopisto - Muurlan Opisto', 'PopUp Kuvauspiste', '', '16:00:00', '19:00:00', 'Tykkipuisto', '60.384358', '23.117369', 'mirka.both@muurlanopisto.fi', 'www.muurlanopisto.fi', 'PopUp kuvauspisteellämme; voit kuvauttaa lapsesi tai lemmikksi ennakkoon varatulla ajalle tai vain ohimennessäsi piipahtaa kuvaukseen. ', ''),
(4, 'Salon taidemuseo Veturitalli', 'Avoimet ovet', '', '18:00:00', '22:00:00', 'Mariankatu 14', '60.388094', '23.111659', 'pirjo.juusela@salo.fi; 044 7784888', 'www.salontaidemuseo.fi', 'Mahdollisuus tutustua maksutta Stefan Bremerin retrospektiiviseen valokuvanäyttelyyn sekä Veturitallin kahviossa näyttelyyn Koit ny rauhottu; jossa on esillä ennen julkaisemattomia valokuvia Salon nuorisosta 1950-80-luvuilta. Illan musiikkipuolesta vastaa Kabinettiorkesteri. ', ''),
(5, 'Salon Taiteilijaseura ry', 'Taidelainaamossa kuukauden taiteilija Helena Tuura ja ulkopuolella taiteilijoiden teosmyyntiä ja esittelyä.', '', '14:00:00', '23:00:00', 'Helsingintie 4', '60.386489', '23.130995', 'arja.pykari@gmail.com; puh.0505218901', 'www.salontaiteilijaseura.fi', 'Taidelainaamossa kuukauden taiteilija Helena Tuura esittäytyy ja ulkopuolella lainaamon Helsingintiellä taiteilijoiden teosmyyntiä ja esittelyä.', ''),
(6, 'Salon Taiteilijaseura ry', 'Vanhanajan valokuvastudio ja taiteilijoiden putiikki', '', '14:00:00', '23:00:00', 'Kulttuuritalo Villin verstas; Vähäsillankatu 9', '60.386489', '23.130995', 'arja.pykari@gmail.com; puh 0505218901', 'www.salontaiteilijaseura.fi', 'Kultturitalon Villin verstaalla on esillä vanhanajan valokuvastudio jossa on maisemamaalaus taustana. Studiossa otetaan kävijöiden oma-; perhe- ja kaverikuvia. Kuvan saa tulostettuna mukaan. Verstaan putiikissa on myynnissä taidetta; paperitöitä; lastenkirjoja; julisteita; kortteja ym.', ''),
(7, 'Salon Seudun Sanomat', 'Sanomalehden YÄ', '', '22:30:00', '23:30:00', 'Örninkatu 14', '60.385287', '23.111096', 'talvikki.salin@sss.fi; (02) 770 2321', 'www.sss.fi', 'Lehtitalo avaa ensimmäistä kertaa ovensa yleisölle yöaikaan ja tarjoaa mahdollisuuden päästä katsomaan; kuinka Salkkari painetaan. Tilaisuus alkaa esittelyllä ja kahvittelulla; klo 23 käynnistyy painokone. Kotiin pääsee lähtemään painolämmin sanomalehti mukanaan.', 'Tapahtumaan mahtuu mukaan 30 osanottajaa. Ilmoittautuminen alkaa 2.9. klo 9; p. (02) 770 2610. Turvallisuussyistä tapahtuma on tarkoitettu vain aikuisille.'),
(8, 'Piazza Brass', 'Pop-up konsertti', 'Musiikki', '19:30:00', '20:15:00', 'Rummulyöjänkatu/Helsingintie kulmalla', '60.386415', '23.131514', 'anssi.orling@salo.fi 0405146326', '', 'Viihdettä Vaskilla', 'www.piazzabrass.fi'),
(9, 'Pro Rantakivet ry/Maj Hopeala-Lehtonen', 'Runoja nollasta sataan', 'Kirjallisuus', '00:00:00', '00:00:00', 'Kulttuuritalo Villin verstas; Vähäsillankatu 9', '60.383222', '23.126680', 'maj.hopela@gmail.com; puh. 0400433781', 'pro rantakivet.fi', 'Kulttuuritalo Villissä toimivan matalan kynnyksen runopiiriläiset lukevat kuvakorteille kirjoitettuja runoja yleisön toivomusten mukaan. Runoja on tarjolla ikäryhmälle nollasta sataan ja kortteja on myös ripustettuna kerrallaan 0-100. Kortin saa lukemisen jälkeen itselleen.', 'Runopiirin toiminta tapahtuu Veli-Matti Henttosen valokuvanäyttelyn kanssa samoissa tiloissa TYÃ„-päivänä'),
(10, 'Salon SYTY ry', 'Vaivane kaffe', '', '16:00:00', '20:00:00', 'Helsingintie 6 ', '60.386444', '23.131965', 'paivi@salonsyty.fi', 'salonsyty.fi', 'Mahdollisuus kokemukselliseen kahvihetkeen! Halutessasi voit juoda kahvin näkö- tai kuulovammaisena tai yksikätisenä. Kahvin saa juoda myös omana itsenään!', ''),
(11, 'Salon SYTY ry', 'Voi vanhanakin haaveilla-näytelmä, näytös I', 'Komedia', '17:00:00', '17:30:00', 'Helsingintie 6 porttikongissa; mutta sateen sattuessa sisällä samassa osoitteessa ', '60.386444', '23.131965', 'paivi@salonsyty.fi', 'salonsyty.fi', 'Näyttelevät näkkärit on näkövammaisten harrastelijaporukka; joka esittää Seppo Laineen käsikirjoittaman hauskan puoli tuntisen näytelmän; joka kertoo ikäihmisten haaveista ja muisteloista. Saa hymyn huulille! ', ''),
(12, 'Salon SYTY ry', 'näytös II', 'Komedia', '18:30:00', '19:00:00', 'Helsingintie 6 porttikongissa; mutta sateen sattuessa sisällä samassa osoitteessa ', '60.386444', '23.131965', 'paivi@salonsyty.fi', 'salonsyty.fi', 'Näyttelevät näkkärit on näkövammaisten harrastelijaporukka; joka esittää Seppo Laineen käsikirjoittaman hauskan puoli tuntisen näytelmän; joka kertoo ikäihmisten haaveista ja muisteloista. Saa hymyn huulille!', ''),
(13, 'Salon SYTY ry', 'Taidenäyttely', 'Näyttely', '09:00:00', '20:00:00', 'Helsingintie 6 ', '60.386444', '23.131965', 'paivi@salonsyty.fi', 'salonsyty.fi', 'Tule kokemaan erilaista taidetta! ', ''),
(14, 'Salon kaupungin nuorisopalvelut', 'Luo ja innostu Steissillä', '', '16:00:00', '20:00:00', 'Nuorten keskus Steissi; Mariankatu 12; Salo', '60.387005', '23.120754', 'Tanja Kuusela; nuoriso-ohjaaja; 044-778 4834; tanja.kuusela@salo.fi', NULL, 'Nuorten keskus Steissillä luvassa erilaisia työpajoja joissa pääsee kokeilemaan mm. vesipyssymaalausta; jättimäisiä saippuakuplia; sirkustelua ja pakohuoneesta/rastiradasta selviämistä. Sään salliessa pajoja pidetään ulkona. Päästä luovuutesi valloilleen.', 'Sivuillenne oli merkitty; että Steissillä on avoimet ovet. Sen tiedon voi korvata tämän ilmoituksen tiedoilla. '),
(15, 'Salon seurakunta', 'Taidetta kirkossa', 'Musiikki', '06:00:00', '23:55:00', 'Kirkkokatu 7', '60.385793', '23.134236', 'kaisa.suutela-kuisma@evl.fi; 0447745291', 'salonseurakunta.fi', 'Salon kirkossa on livemusiikkia aina tasatuntisin; tarjolla musiikkia barokista kansanmusiikkiin. Musiikkihetket kestävät puoli tuntia ja sen jälkeen on mahdollista itse päästä kokeilemaan urkujen; pianon ja cembalon soittoa. Kirkossa on myös kirkkotekstiilien näyttely.', 'Taiteiden yön nettisivuilla on jo tästä tapahtumasta alustavaa tietoa; mutta tässä siis lisäykset siihen'),
(16, 'Salva ry & Päiväkoti Aurinkoleijona', 'Karaokea ja käristemakkaraa', 'Musiikki', '16:30:00', '21:00:00', 'Ilolankatu 6', '60.391062', '23.119915', 'pasi.maenpaa@salva.fi', 'https://www.salva.fi/tapahtumat/taiteiden-ya-karaokea-ja-kartsaria', 'Palvelukeskus Ilolansalo ja Aurinkoleijonan Päiväkoti järjestävät yhdessä monipuolisen kulttuuri-illan. Ohjelmassa räsymaton maalausta; karjalanpiirakan leipomista; karaokea ja vierailuesityksenä Halikon musiikkikuoro sekä Perttelin MLL:n cheerleaderit. Ravintola on avoinna koko illan ja tarjolla tunnelmaan sopivaa syötävää.', ''),
(17, 'Kulttuuritalo Villin galleria', 'Veli-Matti Henttosen valokuvanäyttely (näyttelyn nimi pitää varmentaa)', 'Näyttely', '06:00:00', '23:55:00', 'Kulttuuritalo Villin verstas; Vähäsillankatu 9', '60.388094', '23.130995', 'helesuni@gmail.com', 'prorantakivet.fi', 'Veli-Matti Henttosen musiikkiaiheisia valokuvia. Kuvaus täydentyy myöhemmin.', ''),
(18, 'Salon elektroniikkamuseo', 'Avoimet ovet ja peli-ilta', '', '16:00:00', '21:00:00', 'Astrum-keskus; Salorankatu 5-7; ovi 3', '60.391358', '23.111659', 'leena.jarvela@salo.fi; 044 778 4885', 'https//www.salomus.fi', 'Elektroniikkamuseoon on vapaa pääsy tapahtuman ajan. Yleisöopatukset klo 16 ja klo 17.00; noin 30 min. Museossa on pelien vaihtopiste lauta-; pc- ja konsolipeleille. Salolainen Wlab-team proudly presents museolla AKSU T3 Agent -nettipelinsä. Frozenbyte peliyrityksen Trine 4 ja Starbase -uutuspelien trailerit ovat esittelyssä museolla.', ''),
(19, 'Bar Bizarre', 'Alijäämä', '', '22:30:00', '00:00:00', 'Helsingintie 2; Salo', '60.386458', '23.130409', 'Sanna Jousi; sanna@bizarre.fi; 0408418283', 'www.bizarre.fi', 'Alijäämä aloittaa Taiteiden Yä 2019 illan päätösbileet.', 'Vapaa pääsy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tapahtumat`
--
ALTER TABLE `tapahtumat`
  ADD PRIMARY KEY (`TapahtumaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tapahtumat`
--
ALTER TABLE `tapahtumat`
  MODIFY `TapahtumaID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

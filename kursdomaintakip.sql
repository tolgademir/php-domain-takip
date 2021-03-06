-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Nis 2021, 13:28:49
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kursdomaintakip`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_logo` varchar(400) NOT NULL,
  `site_baslik` varchar(350) NOT NULL,
  `site_aciklama` varchar(300) NOT NULL,
  `site_link` varchar(100) NOT NULL,
  `site_sahip_mail` varchar(100) NOT NULL,
  `site_mail_host` varchar(100) NOT NULL,
  `site_mail_mail` varchar(100) NOT NULL,
  `site_mail_port` int(11) NOT NULL,
  `site_mail_sifre` varchar(100) NOT NULL,
  `footer_bilgi` varchar(75) DEFAULT NULL,
  `footer_ust` varchar(200) DEFAULT NULL,
  `footer_alt` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_logo`, `site_baslik`, `site_aciklama`, `site_link`, `site_sahip_mail`, `site_mail_host`, `site_mail_mail`, `site_mail_port`, `site_mail_sifre`, `footer_bilgi`, `footer_ust`, `footer_alt`) VALUES
(1, '288770transparan-icon.png', 'Teko Domain CRM', 'Teko Domain CRM ile tanışın !', 'http://localhost/domain-takip', 'tolga@tekohaber.com', '1', '2', 3, '4', 'Teko Domain CRM | 2021', 'Teko CRM\'e Hoşgeldiniz !', 'Teko CRM');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `domain`
--

CREATE TABLE `domain` (
  `domain_id` int(11) NOT NULL,
  `domain_adi` varchar(100) NOT NULL,
  `domain_musteri` int(11) NOT NULL,
  `domain_baslangic` date NOT NULL,
  `domain_kayit_firmasi` varchar(300) NOT NULL,
  `domain_bitis` date NOT NULL,
  `domain_fiyat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `domain`
--

INSERT INTO `domain` (`domain_id`, `domain_adi`, `domain_musteri`, `domain_baslangic`, `domain_kayit_firmasi`, `domain_bitis`, `domain_fiyat`) VALUES
(4, 'tekohaber.com', 4, '2021-02-05', 'Güzelhosting', '2022-03-22', '100 TL');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int(11) NOT NULL,
  `kul_isim` varchar(200) NOT NULL,
  `kul_mail` varchar(200) NOT NULL,
  `kul_sifre` varchar(100) NOT NULL,
  `kul_telefon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`, `kul_telefon`) VALUES
(1, 'Tolga Demir', 'tolga@tekohaber.com', '202cb962ac59075b964b07152d234b70', '05511237591');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteri_id` int(11) NOT NULL,
  `musteri_isim` varchar(200) NOT NULL,
  `musteri_mail` varchar(200) NOT NULL,
  `musteri_telefon` varchar(50) NOT NULL,
  `musteri_detay` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_isim`, `musteri_mail`, `musteri_telefon`, `musteri_detay`) VALUES
(4, 'Tolga Demir', 'tolga@tekohaber.com', '05511237591', '<p>tekohaber.com sahibi</p>\r\n');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`domain_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteri_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `domain`
--
ALTER TABLE `domain`
  MODIFY `domain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

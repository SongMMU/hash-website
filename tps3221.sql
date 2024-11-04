-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 07:58 AM
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
-- Database: `tps3221`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` text NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `hash_password` text NOT NULL,
  `hashType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `password`, `salt`, `hash_password`, `hashType`) VALUES
('Aloe', 'Mano Aloe', 'KAS885%3#-#(0-0))\'\'', 'vHFa2ZUbwXp9e3gZ0LHo', '8qjDOQp3/me+5d9Fv3ASlnD4jlxCwJyR0sbdCBYneayIMXhjZCMwl8Vd7QhYiOtDQQdP5GTfems7aknTMQdibg==', 'PBKDF2'),
('Aqua', 'Minato Aqua', 'aqua_ApeX@M@5T3R', '$2b$12$ShNVdu.t48iAs/WXryNfgu', '$2b$12$ShNVdu.t48iAs/WXryNfguh5vKOxJLKbmc9ITXYXfNyagRbDqrPB.', 'BCrypt'),
('Ayame', 'Nakiri Ayame', 'aY@M3_13@02_HV&v&', ' ', '$argon2id$v=19$m=65536,t=3,p=4$T1Buy2sfJ065JwTSDY9w+Q$M8jW+pdDHEF6n9bMlI+/PTB6tuiiTXZyvQizCgnhPfk', 'Argon2'),
('Botan', 'Shishiro Botan', 'BiUG67%34896@@!#,.', 'mDHNIadbXRgNnKJpqbuq', 'oPiGkP2TZxFVnWzY4ZFOuH/L74qpktJyoWwow5rpJb2T4yLAwqhh4DWp8HWzIm4HwxE0HWGatrX+9577DTI6XQ==', 'PBKDF2'),
('Chloe', 'Sakamata Chloe', 'mIHBGWSD415632&*^', 'QQYtSIFRceMLBTwDq5SxbQ==', 'pCthNxXwV1kAAyGOCNMTjcXD52Rdo1yOQCs5B/jcoy9wOzkUCVJgVLthX4jtpLT2LRO9CoR+/kmDhTFPGAllg5b6NjxnCZGe+rDYCNrYyHvQf8O+206YEGSTRkh+jbcAxnGCkWEDb7N10yfhGBUJ/vyg999IH7UZHurywfCb6Mp+VkYtapBWXFvvhVsbnkmy+QdNNok5ftPcMAdow7ALrGeFijpt9ec1SjIXeoCEHkEe3kN2G32HfOalvLUxbVD0nkzMMvOAwXVDhFPz061JnOLpb0NeFDS1r+Ec+myh1i6ATCYiWqHEytbFyeq+hHC90vkdFzDXeq7aM2058R/YVQ==', 'Scrypt'),
('Choco', 'Yuzuki Choco', '02_HoL1L1v3#5EX', ' ', '$argon2id$v=19$m=65536,t=3,p=4$HhHcQ/qvRKgBnLQU6T94LA$yq8vntlnZlIiGR0YNCFBbb3jBIq+zW8cXfOwcS7nm2Q', 'Argon2'),
('Chris', 'Hitomi Chris', '0$%ETF5Ggh$v$#', 'PGKqps21OUjiVOgfcsGE', 'JMRqL9qj/ZE362zaBb/+djzNhKfi3Xq2G9vmZMAjNmED8yAIiCChPQHfT4w1oX4MhJObRALaSS3Jscr1d206YA==', 'PBKDF2'),
('Coco', 'Kiryu Coco', 'qjindUYF#456#$L', 'S6OYReVoG7fdlpmsvzM6', 'rrlIFChWfvTfqKIYhQlzOGGm6dXmwQMlgcGeLf9GPwbD5XRRpqyQ6utnImB71gTivRtFqvBgbEJJ2wjf6dWNKw==', 'PBKDF2'),
('Darknesss', 'La+ Darknesss', '213JJKblAC7*(*)', 'tcCwgYp5P+f0kFy5krFfFw==', '2mIvNxayXsEx5jg+PV8EkOkQfou3NRWtcN/vIryvGt2S3NaUFQA5fzmVlClIAx7Z9tkwThL1J1483hGt2e+Dg0O40PhEh9lSp3Q7DqxseD+W0ZqYMgfJt1ndkI/s3t+dmyX/eL9ZZcC4sM9RiLglZ6yaKIVIo9FDxwZSTk+Ptuk6RST6u8eGwwoOsgnfCekJl1AxJw8SVd/QDnl2BovFji10LBPvVOCWvJnWhZYNesE+nTzh+8mzRB0ymWQi6UVAle5nlH13ssxnxknk9Wbxp8Cs2n3BjisKcqyhiPvP7Jkp1DFbI8WMN6BHjjDgjYm9cGqhBLZwdAK0M8W/zNpe/Q==', 'Scrypt'),
('DeSong', 'De Wei Song', 'WeiSong1106@IT', '$2b$12$hn8eJig8P2Lwi09Ni36vK.', '$2b$12$hn8eJig8P2Lwi09Ni36vK.BFj5v6KMBZHuFXqFzzPfj4l/KhWuZUC', 'BCrypt'),
('Flare', 'Shiranui Flare', '134nbsjR5(@_@)', ' ', '$argon2id$v=19$m=65536,t=3,p=4$WkHAh0hZ8SOyuhPfrliYMg$CKxOCf+ZDVCeARupJviaFtXZhGJZfyd8TvplR4/Ouhk', 'Argon2'),
('Fubuki', 'Shirakami Fubuki', 'jHndmh02_(@v@)', '$2b$12$ciYtU4WvOqf2AZo/FBpWO.', '$2b$12$ciYtU4WvOqf2AZo/FBpWO.oNhCrU3.VzCOTwbW/e4uS7DJafcvLPy', 'BCrypt'),
('Gura', 'Gawr Gura', 'hi%^&JKL&))', 'W7nKwhi/gWret3rmZ7a4tA==', '/OU6zivbcwUZCDvrxYjnC8byXY4dOi5lVzBVrvdQawo7/SHBxoH+UQNesNFrGupsGDt9Igf/uu0Zahqf0w4lb/GK1fk1QB+XFjYItlDmPb8xy+fpTlRqL4PJaAuRUVrbsKSu9WcQOwq429ifhuHntOfQ2JbHOcFd3zF8oaydq8Q7Vl8l5vuTslm7zH5TzK1PO/WgL6bJtbN1x99IVIR8vPyIy9GFXg7OEuoUo0AyuBQ+IC9FYF2pv4zfk7WlLbTs1amBoRIRfRna5lvpf0BL7FW5a2GlBhFReGfPw6RV+SUCbliYx5vpj12/3vRfIPoZYFYCK2sp110trlKBBcj26w==', 'Scrypt'),
('Haato', 'Akai Haato', 'we110##QSuri91_', '$2b$12$IQwA455nUMI2wSUFnbZXEe', '$2b$12$IQwA455nUMI2wSUFnbZXEeVUgQjy1uV.y8W7yBO3oPeAch3GMQCFO', 'BCrypt'),
('HoshimachiSuisei', 'Hoshimachi Suisei', 'suiseilive_miCOmet#', '$2b$12$DcIRGNnvr9bmY5NP3813p.', '$2b$12$DcIRGNnvr9bmY5NP3813p.62Q7sFhtLVISt9b7f6fDMyE7zCt1TQ.', 'BCrypt'),
('Iroha', 'Kazama Iroha', 'pakqasdib76%$%9k', '5+TPRU9fsibPJo+fCd8uYw==', 'INkf+7w4o6JYlKX7kAApSPO2k7T0JYxfgNsiCTqZjkIp4a2ko+KlTyDobRWWdqZ25b5g94Apl33fgJadi21A3O5LVVY2Z3oGmiN0WgPGdeSij0BtHcWeNPmCvsbMpm88Eg3icYvIZbqIBoXXQx/DGShApPLLjevqM39ZfC+Ui+vFrkBiYVbDWCV+Vi7O1Uf7E/RND9cmhjqOcBiHoT8YUl+PIMIUK4Y1emDZDMomyRO85d8X7z7vyjd0x2CEIQWVjtTff6irWToiY5DIIwXJQY2kasXp4E5dzNhBoFjf3ZeiGCdbmiKRzYkQPXuJbVgxnrCRvqv3Y0TWbCZTU7l9iw==', 'Scrypt'),
('Kanata', 'Amane Kanata', '!5@r@r0pL@n3__03', ' ', '$argon2id$v=19$m=65536,t=3,p=4$8HzCQSed84MsgYKcinnJfQ$9yxCiHQUnEd2RSc49L011nKQzxe+gVSz3PBES+ckEz4', 'Argon2'),
('Kobo', 'Kobo Kanaeru', 'jhsd$%^5648h', 'LC1DYO7QFjq8lfB7/l/rFA==', 'c3pUjGd8Ha8tXNCmNXFAEZQFaOTN3/GRlrc8PxNIN/nIaCzoAA0kQNZ/klvngojQrh3m6eRe/ihPpBncAowAEEGDiukeGk197nohKkpFuXEwd0cY2Gs0tD819Ji2jE574cnHxAsGgmsLzNNmTvLZSVKI0/YgG0ME2A4dwCZ0+CVFDpH9MrXNwMRwXnoLpj7DdEGdbiQ183B5bHi5Z9mGfnxj0ZjhHq0wGQ5mJ4rph6ycW6L70zaUD2PZVAGCI8g7LdvDwUZG0nbmCYmH24/Fge0TInQIXIEOb8GUXYd1PsWYL1g/Jst1VAMorvlbntaY5K3Qc13DkxY5h4Jq0Nnt0Q==', 'Scrypt'),
('Koyori', 'Hakui Koyori', 'kosda1244556&', '9YrN8se/t7K+8Nnzb1d3qw==', 'uFOPuIBRSH5Cwv/BbffmaYmt9HenLmcp5t5E8ft72Df4yVsh4PoShFu2kz48XfDumn98lcmpgGHqixTpJYuleddaLu4/v5xz54yXh5pjwUoWLtdQ+SyE/c4VrGfVY7ehRG8usO9gGoPon5D51lONibYN2xSVELVj9Pze8NvdWMyXZn8+Vqy/OxHEHmISEjuoJr/igAPQgPowlLR7a0Vcxot9DkK7SwJUCYPuSjJda9DrrQlvrNGgt8AXBSAp8WWkILlc6SianlxouBAbd7wiZrHcueJ3/F5Jja1LlSdUtawdxRzfeqwp7pH8OK5uCb8Y+038honHO9P8+WDW7V67pA==', 'Scrypt'),
('Kronii', 'Ouro Kronii', 'hty%567%^&9HJ', 'ld23DyvfLYPetpK93D21+g==', '9yOaNPIq2XMmaIDl3MTfDOhvlrfZdeeQKhMQLx8quoQJ4oTRgV/Wt2VG5e5q+ycPl7OfgT2OYfuHupkDkNLM3/8hvKWQYNO3ZMTjHIuu9kPy+JboaYj/ujshJn5SV4y2txberCxKfxBMxYKCTgPjor4jKFRMmrTrcX91J5qTp70NIp40TlreZw+3pvBiL6ByFRzqAudpQPZRK02eIIb4nNdJs9PIysGsXviKx2w6RhN38K/5zsvObEf6SrjZFv3CdpKfMhhH5u2NtgWMtNTtVl8VVKOu6dKtfdsc3ahIiQU+oBeRL99ENAzqIuFtdfSRcdpEss/q1VwK7AWGeiZ9iA==', 'Scrypt'),
('Lamy', 'Yukihana Lamy', 'IJF283879Uu6t1^', 'V1bLPprx9C1cWwMxbOU0', 'JPHHzAD3K2+N7qIghfAGH2jIxPsjRKFyRyPo15gLdAn/7dZVFo7uuqWStp+SGgmCHT9WpuupKgmvxSQqMjz1dA==', 'PBKDF2'),
('Lui', 'Takane Lui', 'kmOI<12>#v#mNA', 'QCd/SkJEKOl2Z29qIWxzzw==', 'K7ALF5Yb/6k843rAPtqe9VIwsrvnhg+M/t1iGyUhYu5ZZ44CnWATftDRHggdIte1kAu6uQT325GG2w605+Ooj4jbeG4tT4DyWsMCSu+OP72XEFCaLkAEu29TyTgoCRKrawG3K68i9KwSWol83EsxNjqPDkK1byaq5DVHSihSwMfV4cehh7/9tf8TeCmOhuYCjZ8SJp5pzDR+zQhpm/EVRXe2B5iZbZNPQvuJiISlWOt+cN+H+m1cQVq8BYGKEQDNQqgCRlCsJYxAeUmbagRlPgxQX/jBPkNNxnqzplwfQ09RuCc+9U59hVYXKwnHZA69SmIUmPcJSMLQv8fo7VSQAg==', 'Scrypt'),
('Luna', 'Himemori Luna', 'kinwqdug8364#%$kHJ', 'iw1PY2beTDOEy2MhgLJ9', 'UbINYcqok4NU66iaEjoh1zxQyiPKwHYfPyamiQqBAs9V2fV3g/S7gP8AngGtY4Jtn2ffoeMlVd4kzi+W+99UeA==', 'PBKDF2'),
('Marine', 'Houshou Marine', 'HtAg#P3k09ax$%^', ' ', '$argon2id$v=19$m=65536,t=3,p=4$LODIalTEyxkz6Gu24Uqreg$vx1Px3bxQvA7isXZJ7qo+jLNXa8aa92pf9LkPq2m42g', 'Argon2'),
('Matsuri', 'Natsuiro Matsuri', 'j\"-\"MAtRi87!-1', '$2b$12$SkUoupz4.lAQNIDoXTH2B.', '$2b$12$SkUoupz4.lAQNIDoXTH2B.no0aszDKdP2nnaQCymYLIRbmjfsd6JG', 'BCrypt'),
('Mumei', 'Nanashi Mumei', 'jo456#%HIK', 'JU7PibvU156mUooFrCPt4A==', 'aVJBWQwUtrUOtHeA6DRu8VVxfbjWNnw9rz5GUUhgy0v5zAMkWrXRLp12ErFuexeOxI5QVZBQ7Ah6K/uPUZSQd8EXm2T3X8dNj6JkQj7wJgpOXOR/MaYqTI94dlT5XpDtRYLyz9AqP+pMOfyoJdsn3dviXWO5DeTRzoO7eoGmBaY+i8kUaV2MKBhtaa/5oL/3UCWRuFmjzP4jkRnLjuK3Grasmcdf6vZutcZxXWcVNfCFjEaVkJ4mL+EM+4Ilc5qGpcKkyhKLh4u5LgFjUUIDR8KLbKQzjTqcR3VYF/jIthqJ+Qn5NdKUuHIzYmS2dlwhtBODSpLed+wCqwS9wd81YQ==', 'Scrypt'),
('Nene', 'Momosuzu Nene', 'noDH7YUG$^&', 'KvPKuDWiWiobzNyi9HVx', '9gZegIVSAZRuZvwN/O8HlJQVJwg6OgsxsvKH5k9devXBP1SwMODAf74k5eauKxgWM4qAWqkSjz1EczHdzCdp9w==', 'PBKDF2'),
('Noel', 'Shirogane Noel', 'p0W3r@!S@tH3#((&-&!))', ' ', '$argon2id$v=19$m=65536,t=3,p=4$57eQP7mmIc9OSuiNQuXPFw$rPbz22iKbk3xqdVpM4HD3xL5NXv9M4RISLecLkVbEdg', 'Argon2'),
('Pekora', 'Usada Pekora', 'HA@ha@Ha_Ma51nE', ' ', '$argon2id$v=19$m=65536,t=3,p=4$22Z+ssXqN3OEdBUfw8PGeg$3l9wAsvv8aTAsXZl2s0j5MuiV8CgDQzHnuVh75+r734', 'Argon2'),
('Polka', 'Omaru Polka', 'kONKJ*(&7633$HGn*i', 'ATvLsA3lbkOVy5LaioJz', 'gZtnKXbkTOjaw+la1YxzkqS47l+B7lIkHl//BcuPRDrwhRqgJUi9QQtpAjy+fuv3iDetbXMoc4OE6xiFXwqI3A==', 'PBKDF2'),
('Rosenthal', 'Rosenthal', 'Gt$^$)!!03_Ros', '$2b$12$trkS48daiszYviCzbr1/.u', '$2b$12$trkS48daiszYviCzbr1/.uvnNykRkM9Te0rk9wSo0Jrt6TwHhybhW', 'BCrypt'),
('Rushia', 'Uruha Rushia', 'sAD(.\'\'-.\'\'.!!)56@03Bb', ' ', '$argon2id$v=19$m=65536,t=3,p=4$JVR9jURR9jO/sH76KZGnfw$b4LpYUJ1/8Ob37EUvEtxvQYisk0hHsKqndo7/dUOP9U', 'Argon2'),
('SakuraMiko', 'Sakura Miko', 'mikoSakura#@_01', '$2b$12$k.4fp5ng2KUUEb8hGcmkce', '$2b$12$k.4fp5ng2KUUEb8hGcmkceHrinQmcqeBhoy9D0KfN35JD5XBtWmxe', 'BCrypt'),
('Shion', 'Murasaki Shion', 'sJIujhuii35_<->02', ' ', '$argon2id$v=19$m=65536,t=3,p=4$mRZsvpEVA1Tx78wv8fyz+g$P/Uhsqzt76sp26xXGHJCu8Wk6RP/ZXVhFJZojYuSDFQ', 'Argon2'),
('Subaru', 'Oozora Subaru', 'Du2k_15_REO._.', ' ', '$argon2id$v=19$m=65536,t=3,p=4$w/SCQrSEkGUZ21PGaS3onA$G5fkctD6VOCwCm0PkaguC6NXTxAKN+HPufOdXlOun7Q', 'Argon2'),
('TokinoSora', 'Tokino Sora', 'j7438hKF_e#', '$2b$12$2prpp0vJ38JaPSzw1hfQWO', '$2b$12$2prpp0vJ38JaPSzw1hfQWO11autqPRCTmcJA547ENdhzoKRqxNdHy', 'BCrypt'),
('Towa', 'Tokoyami Towa', '@p3XG@m3$-4', '7DkdAEgU81z8NHdDj334', '0Lpn8fAAGp0p0CcDpfqllbJmArg6fZGzA7O1XJVEYOl9HZ0PmuNF1z275RrEFZujQt/YuUCwu9yV5VZBLRfctw==', 'PBKDF2'),
('Watame', 'Tsunomaki Watame', 'jHgfE@-$$O3', 'szDJ5MCUOnejhOzVY4Ql', 'W7AdQwZk0xrm6ogWOSf2N9ziQsPnePgm673yPpgT0Ykyou+29h/qCo2y6zYNYtq+zFJYI3pkqeMsbmwH2DJRAw==', 'PBKDF2'),
('Watson', 'Watson Amelia', 'wq237uiUHGIWE^12', '+o+KYnlwn+ZvYazuMUo7jA==', 'a0YgmAlVHSgYqCJaAWvqmvJkKNxZO+BAGx0SwPJkWL1+i7p56GyapORvt3AikOJWYMe68iea0wRh12AAb9Agka79jt8VEiMrzFRv1cdWAFCHWLXBw6LFshQY8V78W7OrY1dvnZfkd4cWTsZBX22CJe06IPH1VG817Do1s2Is5RAJLrK12RCD1zAwcpiG4ImfssN8BRl0kEW1uajf/1OffyyJWLSS58O5Zj11Rgz6Mpd3TJ0GhhoLEEIbm2IfVhaOcMZRL6RKCaxHCbzIr3CvQ9umssROrxncln8caAIqJpxSOoFsgDy0JWQVQliqeBzZr6fXtjwEFUSQKYqGNfH+AQ==', 'Scrypt'),
('YozoraMel', 'Yozora Mel', 'Mwei2020_hololive02^-^', '$2b$12$bkykWDCKNZyFEZXtC7lfFO', '$2b$12$bkykWDCKNZyFEZXtC7lfFOWMYjMwL0i1Yu868ql/KhD99dNoMaCjq', 'BCrypt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`(20));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

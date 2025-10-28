/*
KÜTÜPHANE VERİTABANI YÖNETİM SİSTEMİ

-- =============================================
-- 1. TABLO OLUŞTURMA VE VERİ GİRİŞİ
-- =============================================
-- Manuel olarak oluşturulan Kitap tablosu ve 27 kitap verisi
-- Tablo: Kitap (KitapNo, KitapAd, KitapYazar, KitapSayfa, KitapFiyat, KitapTarih, KitapYayınEvi, Vergi)
-- =============================================
-- TABLO OLUŞTURMA
CREATE TABLE Kitap (
    KitapNo INT PRIMARY KEY IDENTITY(1,1),
    KitapAd VARCHAR(50),
    KitapYazar VARCHAR(30),
    KitapSayfa SMALLINT,
    KitapFiyat INT,
    KitapTarih DATE,
    KitapYayınEvi VARCHAR(50),
    Vergi SMALLINT )
-- =============================================
-- VERİ GİRİŞİ (Artık KitapNo'yu yazmıyoruz, otomatik artacak)
INSERT INTO Kitap (KitapAd, KitapYazar, KitapSayfa, KitapFiyat, KitapTarih, KitapYayınEvi, Vergi) VALUES
('Feniçka', 'Lou Andreas Salome', 70, 8, '2015-10-01', 'İş Bankası Kültür', 1),
('Altıncı Koğuş', 'Anton Çehov', 68, 7, '1888-05-18', 'Açı', 3),
('Ateş Yakmak', 'Jack London', 58, 8, '1850-07-25', 'İş Bankası Kültür', 4),
('Babaya Mektup', 'Franz Kafka', 57, 9, '1920-03-27', 'İş Bankası Kültür', 2),
('Doktor Ox''Un Deneyi', 'Jules Verne', 90, 8, '1864-02-27', 'Açı', 3),
('Hayatın Mucizeleri', 'Stefan Zweig', 73, 8, '1928-06-29', 'İş Bankası Kültür', 2),
('Bir Kuzey Macerası', 'Jack London', 51, 7, '1907-03-24', 'İş Bankası Kültür', 1),
('Zacharius Usta', 'Jules Verne', 49, 6, '2018-04-18', 'Güneş', 1),
('Mutlu Prens', 'Oscar Wilde', 50, 8, '1984-09-16', 'Açı', 2),
('Dr. Jekyll ile Bay Hyde', 'Robert Louis Stevenson', 86, 9, '1895-02-18', 'İş Bankası Kültür', 4),
('Korkunç Bir Fal', 'Rus Öyküleri', 157, 25, '1952-08-19', 'Can', 3),
('Gulyabani', 'Hüseyin Rahmi Gürpınar', 176, 52, '1887-04-24', 'Kızıl Panda', 2),
('Paul İle Virginie', 'Bernardin De Saint Pierre', 113, 82, '1740-09-11', 'Ay', 1),
('Fareler ve İnsanlar', 'John Steinbeck', 111, 20, '2016-05-23', 'Sel', 4),
('Efsuncu Baba', 'Hüseyin Rahmi Gürpınar', 82, 5, '1908-01-17', 'Ay', 2),
('Kürk Mantolu Madonna', 'Sabahattin Ali', 160, 11, '2015-09-12', 'Yapı Kredi', 2),
('Taşrada Düğün Hazırlıkları', 'Franz Kafka', 118, 13, '2015-11-24', 'Martı', 1),
('Kuyruklu Yıldız Altında Bir İzdivaç', 'Hüseyin Rahmi Gürpınar', 182, 97, '2015-10-19', 'Kızıl Panda', 3),
('İklimler', 'Andre Maurois', 204, 37, '2016-04-28', 'Helikopter', 3),
('Aylak Adam', 'Yusuf Atılgan', 190, 67, '2015-07-13', 'Can', 4),
('Miskinler Tekkesi', 'Reşat Nuri Güntekin', 149, 73, '2016-11-23', 'Sel', 7),
('Mai ve Siyah', 'Halit Ziya Uşaklıgil', 154, 66, '2016-12-18', 'Güneş', 8),
('Kendi Hayatının Şiirini Yazanlar', 'Stefan Zweig', 283, 146, '1973-05-27', 'Açı', 10),
('Gece Yarısı Kütüphanesi', 'Matt Haig', 159, 265, '2011-09-16', 'Yargı', 13),
('El Kızı', 'Orhan Kemal', 284, 425, '1982-12-27', 'Can', 1),
('İnsan Ne İle Yaşar', 'Tolstoy', 110, 5, '2016-08-12', 'Gezegen', 2),
('Eylül', 'Mehmet Rauf', 394, 92, '2017-11-24', 'Sel', 3);

-- use kitaplık (NOT: Tabloyu daha önce oluşturduğum için veritabanını kullan yazmam gerekti.)
-- =============================================
-- 2. TEMEL SELECT SORGULARI
-- =============================================
-- Tüm kitapları listeleme
SELECT * FROM Kitap

-- Kitap adı ve yayın tarihini gösterme
SELECT KitapAd, KitapTarih FROM Kitap

-- =============================================
-- 3. WHERE KULLANIMI
-- =============================================
-- Sayfa sayısı 150'den fazla olan kitaplar
SELECT KitapSayfa, KitapAd FROM Kitap WHERE KitapSayfa > 150

-- Fiyatı 10 TL'den az olan kitaplar
SELECT KitapAd, KitapFiyat FROM Kitap WHERE KitapFiyat < 10

-- İş Bankası Kültür yayınevinden kitaplar
SELECT KitapAd, KitapYayınEvi FROM Kitap WHERE KitapYayınEvi = 'İş Bankası Kültür'

-- =============================================
-- 4. LIKE KULLANIMI
-- =============================================
-- İçinde 'K' harfi geçen kitaplar
SELECT KitapAd FROM Kitap WHERE KitapAd LIKE '%K%'

-- =============================================
-- 5. ORDER BY KULLANIMI
-- =============================================
-- Sayfa sayısına göre azalan sıralama
SELECT KitapAd, KitapSayfa FROM Kitap ORDER BY KitapSayfa DESC

-- Fiyata göre artan sıralama (en ucuzdan pahalıya)
SELECT KitapAd, KitapFiyat FROM Kitap ORDER BY KitapFiyat ASC

--- En pahalı 5 kitabın adı ve fiyatı nedir?
select TOP 5 KitapAd,KitapFiyat from Kitap order by KitapFiyat desc 

-- =============================================
-- 6. AGGREGATE FONKSİYONLAR
-- =============================================
-- Ortalama sayfa sayısı
SELECT AVG(KitapSayfa) AS OrtalamaSayfaSayisi FROM Kitap

-- En uzun ve en kısa kitap sayfa sayıları
select KitapAd,KitapSayfa 
from Kitap 
where KitapSayfa = (select MAX(KitapSayfa)from Kitap) 
    OR KitapSayfa =(select MIN(KitapSayfa)from Kitap)

-- Toplam kitap sayısı
SELECT COUNT(*) AS ToplamKitapSayisi FROM Kitap

-- =============================================
-- 7. GROUP BY KULLANIMI
-- =============================================
-- Yazar bazında kitap sayıları
SELECT KitapYazar, COUNT(KitapNo) AS KitapSayisi FROM Kitap GROUP BY KitapYazar

-- =============================================
-- 8. ALT SORGULAR (SUBQUERIES)
-- =============================================
-- Ortalama sayfanın üzerindeki kitaplar
SELECT KitapAd, KitapSayfa FROM Kitap 
WHERE KitapSayfa > (SELECT AVG(KitapSayfa) FROM Kitap)

-- En uzun ve en kısa kitaplar
SELECT KitapAd, KitapSayfa FROM Kitap 
WHERE KitapSayfa = (SELECT MAX(KitapSayfa) FROM Kitap) 
   OR KitapSayfa = (SELECT MIN(KitapSayfa) FROM Kitap)

-- =============================================
-- 9. MANTIKSAL OPERATÖRLER
-- =============================================
-- AND kullanımı
SELECT KitapAd, Vergi, KitapFiyat FROM Kitap 
WHERE Vergi = 2 AND KitapFiyat < 10

-- OR kullanımı
SELECT KitapAd, KitapYazar FROM Kitap 
WHERE KitapYazar = 'Stefan Zweig' OR KitapYazar = 'Jules Verne'

-- BETWEEN kullanımı
SELECT KitapAd, KitapSayfa FROM Kitap 
WHERE KitapSayfa BETWEEN 100 AND 200

-- IN kullanımı
SELECT KitapAd, Vergi FROM Kitap WHERE Vergi IN (2, 3)

-- =============================================
-- 10. STRING FONKSİYONLARI
-- =============================================
-- Kitap adı 10 karakterden uzun olanlar
SELECT KitapAd FROM Kitap WHERE LEN(KitapAd) > 10


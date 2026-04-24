# SensoryPath — Product Requirements Document

## 1. Problem Tanımı
- Hedef Kullanıcı: Otizm Spektrum Bozukluğu (OSB) ve Duyusal Hassasiyeti (SPD) olan bireyler. (TÜİK verilerine göre Türkiye'de ~1 Milyon kişi, dünya genelinde her 36 çocuktan 1'i otizm tanısı almaktadır)
- Problem: Şehir içi seyahatlerde veya toplu alanlarda artan çevre gürültüsü "sensory overload" (duyusal aşırı yüklenme) yaratarak bireyi habersizce kriz (meltdown) durumuna sokuyor. Öğrenciler derse girmekte zorlanıyor.
- Kanıt: 3 OSB tanılı üniversite öğrencisiyle yapılan görüşme notları (docs/user-research.md), 2 Özel Eğitimci durum teyidi ve akademik araştırmalar.

## 10. Akademik Referanslar ve İstatistikler
Projemizin temeli akademik literatür ile desteklenmektedir:

1. **İstatistiksel Kaynak:**
   - **TÜİK (Türkiye İstatistik Kurumu):** "Türkiye Sağlık Araştırması" raporlarına göre özel gereksinimli birey popülasyonu ve Tohum Otizm Vakfı raporlarına göre Türkiye'deki OSB tanılı birey sayısı tahmini. [Tohum Otizm Raporu 2023]
2. **Akademik Literatür (Google Scholar):**
   - *Makale:* "Sensory Overload in Autism Spectrum Disorder: The Role of Environmental Noise" (Çevresel Gürültünün OSB'deki Duyusal Aşırı Yüklenmeye Etkisi).
   - *Makale 2:* "Haptic Feedback Interventions for Managing Anxiety in Neurodivergent Populations" (Nöroçeşitli Bireylerde Anksiyete Yönetimi için Haptik/Dokunsal Geri Bildirim Müdahaleleri).
   - *Sonuç:* Sesli uyarıcıların (alarm) anksiyeteyi tetiklediği, ancak bedensel (haptic) uyarıcıların bireyi krize girmeden hazırlayabildiği klinik olarak kanıtlanmıştır.


## 2. Çözüm Önerisi
- Mobilin rolü neden kritik: Sürekli yanlarında taşıdıkları cihazın Mikrofon + Titreşim (Haptic) donanımlarının offline çalışması hayati öneme sahiptir.
- Değer önermesi: "Ortam sesini analiz et, krize yaklaşırken sesli değil SESSİZ TİTREŞİMLE donanımsal haber ver."
- Benzersizlik: Pazardaki uygulamalar desibelmetre olarak sadece sağlık çalışanına hitap eder ve sesli alarm çalarlar. Sesli alarm OSB krizini körükler. Bizim devrimsel farkımız; uyarıcının sadece "gizli titreşim (Haptic)" olmasıdır.

## 3. Rakip Analizi
| Rakip | Eksiği | Bizim farkımız |
|-------|--------|----------------|
| Apple/Android Noise App | Sesli alarm veriyor, engelli hedefi yok | Sesli alarm YASAK, sadece Haptic bedensel uyarı |
| Decibel X | Offline çalışmaz/reklam dolu | %100 Offline + Kullanıcı geçmiş veri DB opsiyonu |

## 4. Kullanıcı Hikayeleri (User Stories)
- US-1: Bir kullanıcı olarak ortam 85 dB'yi geçtiğinde cebimdeki cihazın bana titreşim verip "kulaklığını tak" demesini istiyorum.
- US-2: Kriz anım geldiğinde, daha sonra terapistimle incelemek için kriz geçmiş (hangi saatte hangi ses seviyesiydi) kayıtlarımı (sqflite) görmek istiyorum.
- US-3: İnternet yokken bile okul kampüsünde çevrimdışı dinleme sensörüm çalışsın istiyorum.

## 5. MVP Kapsamı (bu hafta teslim)
- [x] Mikrofon okuması ve ses FFT algoritması (Hafta 9: noise_meter)
- [x] Titreşim motoruna donanımsal erişim (Hafta 9: vibration)
- [x] Geçmiş gürültü/kriz kayıtlarını local db'de sakla (Hafta 7-8: sqflite)
- [x] Mimari state yönetimi (Hafta 5: provider)
- [x] Screen reader uyumlu karanlık UI (Semantics widget'lar)

## 6. Teknik Mimari
- Framework: Flutter 3.24+
- State: Provider (Hafta 5)
- Navigasyon: GoRouter (Hafta 4)
- Yerel DB: sqflite (Hafta 7)
- Sensörler: noise_meter + vibration (Hafta 9)
- İzinler: permission_handler (Hafta 9)

## 7. Erişilebilirlik (a11y) Beyanı
Dezavantajlı bir gruba kod yazdığımızın farkındayız!
- [x] Tüm gösterge ve butonlarda `Semantics(label: ...)` tanımlı. VoiceOver %100 okunabilir.
- [x] Minimum 48x48 dp dokunma alanı için kocaman merkez iconları yapıldı.
- [x] OSB bireyleri için göz yormayan (Dark Mode) renk paleti seçildi. Kontrast test edildi.

## 8. Gizlilik & Güvenlik
- Ses ortamı SADECE cihaz RAM'inde "desibel rakamı"na dönüşür. Asla sesiniz (Audio) MP3 vs. formatında cihaza kaydedilmez veya buluta yollanmaz. %100 zero-knowledge.

## 9. Gelecek Aşamalar (MVP dışı)
- Giyilebilir cihaz (Smart Watch API) Bluetooth Haptic entegrasyonu.
- Meltdown çok uzun sürerse veliye cihaz üzerinden acil durum SMS atma sistemi.

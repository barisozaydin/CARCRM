# GitHub Desktop ile CARCRM Projesini Kullanma

Bu doküman, GitHub'daki CARCRM projesini GitHub Desktop uygulaması ile bilgisayarınıza nasıl indireceğinizi ve kullanacağınızı açıklar.

## GitHub Desktop Nedir?

GitHub Desktop, Git ve GitHub ile çalışmayı kolaylaştıran görsel bir masaüstü uygulamasıdır. Komut satırı kullanmadan repository'leri klonlayabilir, değişiklik yapabilir ve commit/push işlemlerini gerçekleştirebilirsiniz.

## Adım 1: GitHub Desktop'ı İndirin ve Kurun

1. [GitHub Desktop](https://desktop.github.com/) adresine gidin
2. İşletim sisteminize uygun versiyonu indirin (Windows veya macOS)
3. İndirilen dosyayı çalıştırarak kurulumu tamamlayın
4. GitHub hesabınızla giriş yapın

## Adım 2: CARCRM Repository'sini Klonlayın

### Yöntem 1: GitHub.com Üzerinden (Önerilen)

1. Tarayıcınızda [https://github.com/barisozaydin/CARCRM](https://github.com/barisozaydin/CARCRM) adresine gidin
2. Yeşil **Code** butonuna tıklayın
3. **Open with GitHub Desktop** seçeneğini seçin
4. GitHub Desktop otomatik olarak açılacak ve klonlama işlemini başlatacaktır
5. Projenin kaydedileceği klasörü seçin
6. **Clone** butonuna tıklayın

### Yöntem 2: GitHub Desktop İçinden

1. GitHub Desktop uygulamasını açın
2. Üst menüden **File** → **Clone Repository** seçin
3. **URL** sekmesine geçin
4. Repository URL'sini girin: `https://github.com/barisozaydin/CARCRM`
5. Yerel klasör yolunu seçin
6. **Clone** butonuna tıklayın

## Adım 3: Projeyi Kullanmaya Başlayın

Klonlama işlemi tamamlandıktan sonra:

1. **Current Repository** menüsünden CARCRM'yi seçin
2. Sol tarafta yapacağınız değişiklikleri göreceksiniz
3. Dosyaları düzenlemek için **Repository** → **Open in [Editör]** seçin
4. Değişikliklerinizi yaptıktan sonra GitHub Desktop'ta görünecektir

## Adım 4: Değişiklikleri Commit ve Push Etme

1. Değişiklik yaptığınız dosyalar sol panelde görünür
2. Alt kısımda bir commit mesajı yazın
3. **Commit to main** (veya çalıştığınız branch) butonuna tıklayın
4. **Push origin** butonuna tıklayarak değişikliklerinizi GitHub'a gönderin

## Adım 5: Güncel Kalın

Projedeki son değişiklikleri almak için:

1. GitHub Desktop'ta CARCRM repository'sini seçin
2. **Fetch origin** butonuna tıklayın
3. Eğer yeni değişiklikler varsa **Pull origin** butonu görünür, tıklayın

## Branch İle Çalışma

Yeni özellikler eklerken branch kullanmak iyi bir pratiktir:

1. **Current Branch** menüsüne tıklayın
2. **New Branch** butonuna tıklayın
3. Branch için bir isim girin (örn: `feature/yeni-ozellik`)
4. **Create Branch** butonuna tıklayın
5. Değişikliklerinizi bu branch'te yapın
6. Bittiğinde **Publish branch** ile GitHub'a gönderin
7. GitHub.com'da Pull Request oluşturun

## Sık Karşılaşılan Sorunlar

### "Authentication Failed" Hatası
- GitHub Desktop'ta tekrar giriş yapın: **File** → **Options** → **Accounts**

### Değişiklikler Görünmüyor
- **Repository** → **Refresh** deneyin
- Dosyaların kaydedildiğinden emin olun

### Merge Conflict
- GitHub Desktop conflict olan dosyaları gösterecektir
- Dosyaları manuel olarak düzenleyin
- Çözümden sonra commit edin

## Ek Kaynaklar

- [GitHub Desktop Dokümantasyonu](https://docs.github.com/en/desktop)
- [Git Temelleri](https://git-scm.com/book/tr/v2)
- CARCRM proje kuralları: `AGENT_RULES.md`
- İş akışı: `docs/workflows/REQUEST_FLOW.md`

## Yardım

Sorun yaşıyorsanız:
- GitHub Issues sayfasında yeni bir issue açın
- Proje sahipleri ile iletişime geçin
- GitHub Desktop'ın kendi destek sayfalarını kontrol edin

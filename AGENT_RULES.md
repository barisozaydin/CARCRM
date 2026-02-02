# AI Agent Rules & Governance

Bu doküman, projedeki tüm AI agent rollerinin (skill) uyması gereken zorunlu kuralları ve
uygulama (enforcement) mekanizmalarını tanımlar. Amaç, kurumsal/ISO 27001 uyumlu, tek tip
kalitede ve denetlenebilir kod üretimini garantilemektir.

## 1) Kural Hiyerarşisi (Öncelik)
1. **Regülasyon/Standart**: ISO 27001, KVKK/GDPR, OWASP.
2. **Kurumsal Mimari ve Kod Standartları**: Mimarın belirlediği standartlar.
3. **Proje Kuralları**: Repo seviyesindeki kurallar (bu dosya + ek politikalar).
4. **Skill Rol Kuralları**: Rol bazlı uzmanlık ve guardrail’ler.

> Çatışma halinde üst seviye kural geçerlidir.

## 2) Zorunlu Kodlama Kuralları
- **Güvenlik**: Input validation, output encoding, secrets yönetimi (hardcoded secret yok).
- **Günlükleme**: PII/secret asla loglanmaz.
- **Hata Yönetimi**: Açık, deterministik hata mesajları; sessiz hata yok.
- **Standartlara Uyum**: Naming, formatting, lint kuralları zorunlu.
- **İzlenebilirlik**: Her değişiklikte neden/amaç açıkça belirtilir.

## 3) Test Zorunluluğu
- **Unit test**: Yeni işlev için zorunlu.
- **Integration/Functional test**: Dış bağımlılık veya kritik akışlarda zorunlu.
- **Test Kanıtı**: CI çıktısı/rapor sunulur.

## 4) Code Review ve Quality Gate
- **PR zorunlu**: Direkt main branch’e push yok.
- **CODEOWNERS onayı**: Kritik dosyalar için zorunlu reviewer.
- **Static Analysis**: SAST, lint, dependency scanning.
- **Coverage Gate**: Minimum coverage eşiği (ör. %80) altında merge yok.

## 5) Merge ve Paralel Çalışma Kuralları
- **Branch politikası**: Her değişiklik için ayrı branch.
- **Çatışma çözümü**: Otomatik conflict çözümü yapılmaz, manuel açıklama şart.
- **Paralel agent**: Aynı modülde çalışan agent'lar dosya sahipliği belirler.
- **Riskli merge**: Kritik modüllerde ikinci review zorunlu.

## 6) Güvenlik ve Uyumluluk
- **Threat modeling**: Yeni modül/servis için zorunlu.
- **Data minimization**: Sadece gerekli veri tutulur.
- **Encryption**: At-rest/in-transit şifreleme zorunlu.

## 7) AI Agent Davranış Kuralları
- **Rol dışı iş yapma yok**: Agent sadece kendi skill kapsamındaki işleri yapar.
- **Kural dışı değişiklik yok**: Bu dokümana aykırı değişiklik yapılmaz.
- **Belirsizlikte durdur**: Gereksinim net değilse varsayım yerine soru sor.

## 8) Test Otomasyonu Gereklilikleri
- **Test giriş noktası**: Tek komutla tüm testler çalıştırılır.
- **Test raporu**: CI çıktısına test sonuçları eklenir.
- **Regresyon kontrolü**: Kritik akışlar için otomatik test zorunlu.

## 9) Uygulama (Enforcement) Mekanizmaları
- **CI/CD Pipeline**: Lint, test, SAST ve coverage gate zorunlu.
- **Policy as Code**: Kuralların otomatik denetlenmesi (ör. Open Policy Agent).
- **Pre-commit Hooks**: Yerel doğrulama zorunlu.
- **Code Review Checklists**: PR şablonunda otomatik kontrol listesi.

## 10) Sürümleme ve Denetim
- Bu dosya değişiklikleri **audit log** olarak saklanır.
- Her revizyon için gerekçe ve onay kaydı gereklidir.

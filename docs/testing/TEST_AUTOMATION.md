# Test Automation

Bu doküman test otomasyonu altyapısını tanımlar.

## Hedefler
- Otomatik testlerin CI üzerinde çalışması
- Kritik akışların regresyona girmemesi
- Güvenlik ve performans testlerinin zamanlanmış koşması

## Test Katmanları
- **Unit Test**: İşlevsel doğrulama ve edge-case'ler
- **Integration Test**: Servisler arası akışlar
- **Functional/E2E Test**: Kullanıcı akışları
- **Security Test**: SAST/Dependency tarama

## CI Entegrasyonu
- PR ve main branch üzerinde testler çalıştırılır.
- Minimum coverage threshold altında merge engellenir.

## Yerel Çalıştırma
- `./scripts/test/run.sh` tüm testleri çalıştırır.

## Test Verisi
- PII içermeyen sentetik test verisi kullanılmalıdır.

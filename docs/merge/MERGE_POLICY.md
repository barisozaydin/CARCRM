# Merge Policy & Conflict Resolution

## Branching
- Ana dal (main/master) korunur; doğrudan push yasaktır.
- Her değişiklik için feature/bugfix branch açılır.

## Concurrency (Aynı Modülde Çoklu Agent)
- Aynı modülde paralel çalışma gerekiyorsa dosya bazlı sahiplik belirlenir.
- Her agent değişiklik listesini başlangıçta bildirir.
- Büyük refactor'lar küçük commit'lere bölünür.

## Merge Kuralları
- PR zorunlu, CODEOWNERS onayı zorunlu.
- CI kontrolleri geçmeden merge yapılmaz.
- Merge sırasında otomatik çözüm yapılmaz; çatışmalar manuel ve açıklamalı çözülür.

## Conflict Resolution
1) Çatışan dosyaların sorumlusu belirlenir.
2) Değişiklikler business ve güvenlik önceliğine göre yeniden uygulanır.
3) Testler tekrar çalıştırılır.
4) PR açıklamasına conflict çözüm notu eklenir.

## Risk Yönetimi
- Kritik modüllerde iki aşamalı review uygulanır.
- Geri dönüş (rollback) planı PR'da belirtilir.

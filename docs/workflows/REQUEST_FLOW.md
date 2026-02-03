# Request Flow (AI + Human)

Bu doküman bir istek geldiğinde agent ve ekip üyelerinin izleyeceği adımları tanımlar.

## 1) İstek Alımı ve Kapsam Netleştirme
- Gereksinim net değilse açıklama istenir.
- Mevcut kurallar ve regülasyonlarla çelişen talepler reddedilir.
- Çıktı hedefi, başarı kriteri ve test kapsamı netleştirilir.

## 2) Rol Ataması
- İstek rol gerektiriyorsa ilgili skill seçilir.
- Rol dışı değişiklik yapılmaz.

## 3) Planlama
- Etkilenecek dosyalar listelenir.
- Risk, güvenlik etkisi ve veri erişimi değerlendirilir.
- Test stratejisi belirlenir.

## 4) Uygulama
- Küçük, izole değişiklikler yapılır.
- Loglama, hata yönetimi, input validation kuralları uygulanır.

## 5) Test ve Doğrulama
- Unit ve gerekiyorsa integration/functional testler çalıştırılır.
- CI çıktıları ve test kanıtları eklenir.

## 6) Review ve Merge
- PR üzerinden review yapılır.
- CODEOWNERS onayı alınır.
- Merge öncesi tüm quality gate'ler geçilmelidir.

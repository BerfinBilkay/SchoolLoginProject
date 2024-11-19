using System;

namespace SchoolLoginProject.Models
{
    // Bu sınıf, Student (Öğrenci) bilgilerini temsil eder ve serileştirilebilir.
    [Serializable] // Sınıf, verinin serileştirilmesine izin verir (örneğin, dosyaya kaydetmek veya ağ üzerinden göndermek için).
    public class Student
    {
        // Öğrencinin adı (isim bilgisi)
        public string Name { get; set; }

        // Öğrencinin soyadı (soyisim bilgisi)
        public string Surname { get; set; }

        // Öğrencinin okul numarası (benzersiz bir kimlik numarası)
        public string SchoolNumber { get; set; }

        // Öğrencinin bölümü (örneğin, Bilgisayar Mühendisliği)
        public string Department { get; set; }

        // Öğrencinin e-posta adresi (iletişim bilgisi)
        public string Email { get; set; }

        // Öğrencinin şifresi (giriş işlemleri için)
        public string Password { get; set; }
    }
}

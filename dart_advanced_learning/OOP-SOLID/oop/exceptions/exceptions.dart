///
/// Programın normal akışını bozan ve hata durumlarında kullanılan yapısal elemanlardır.
///  İstisnalar, hata yönetimi ve hatanın ele alınması için kullanılır.

void divideNumbers(int a, int b) {
  if (b == 0) {
    throw Exception("Bölme işlemi için ikinci sayı sıfır olamaz.");
  }
  int result = a ~/ b;
  print("Sonuç: $result");
}

void main() {
  try {
    divideNumbers(10, 5);

    divideNumbers(10, 0);
  } catch (e) {
    print("Hata Yakalandı: $e");
  }
}

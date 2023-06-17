import 'dart:developer';

void main() {
  checkFirst(["a", "b", "c"]);
  printNames(["d", "e", "f"]);

  printMoreNames(["g", "h", "l"]);
  betterNaiveContains(56, [1, 3, 56, 66, 68, 80, 99, 105, 450]);
}

// Constant Time O(1)

// Sabit zaman, Datanın büyüklüğü önemli değildir.

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('no names');
  }
}

// Linear Time O(n)

// Data arttıkça zaman artar
void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}

// Quadratic Time O(n^2)
// Linear > Quadratic. Kötü kullanım senaryosu, verimsiz algoritma.

void printMoreNames(List<String> names) {
  for (final _ in names) {
    for (final name in names) {
      print(name);
    }
  }
}

/* 
 * Note: No matter how inefficiently a linear time O(n) algorithm is written, for a
sufficiently large n, the linear time algorithm will execute faster than a super
optimized quadratic algorithm. Always. Every time.

 */

// Logarithmic Time O(log n)

// It is a O(n) Algorithm

bool naiveContains(int value, List<int> list) {
  for (final element in list) {
    if (element == value) return true;
  }
  return false;
}

// O(n) algorithms convert to ->  O(log n)

// Sıralı listenin ortasından başlayarak aranan değere göre sağına veya soluna doğru ilerler.

bool betterNaiveContains(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;
  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (list[i] == value) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (list[i] == value) return true;
    }
  }
  return false;
}

//Quasilinear Time O(n log n) ||  O(n) > O(n log n) > O(n ^2)

// Example sort method : ->

void quasilinerTimeList() {
  List<int> numbers = [4, 2, 7, 1, 9, 5];

  numbers.sort(); //Quasilinear
  print(numbers);
}

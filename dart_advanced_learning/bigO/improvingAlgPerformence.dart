void main() {
  final start = DateTime.now();

  // final sum = sumFromOneTo(1000000);

  // final betterSum = betterSumFromOneTo(1000000);

  // print(fillList(500)); //2993 ms
  // print(stuffList(500)); //4998 ~ 5985 ms

  final end = DateTime.now();

  final time = end.difference(start);

  // print(sum); // 1994 ms

  // print(betterSum); // 997 or 0 ms

  print(time.inMicroseconds);
}

// O(n) time

int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// O(1) time

int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

// O(n) time

List<String> fillList(int length) {
  return List.filled(length, 'a');
}

// O(n^2) time
List<String> stuffList(int length) {
  return List.filled(length, 'a' * length);
}

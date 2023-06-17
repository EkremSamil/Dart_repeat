extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'ekrem'.toLowerCase();
  }
}

void main() {
  String? name = "EKREM";
  if (''.isAdmin()) {
    print('object');
  }
  print(name.isAdmin());
}

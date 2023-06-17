//Verilerin ve ilgili işlevlerin bir araya getirilerek bir sınıf içinde kapsüllenmesini sağlar.
// Veri gizleme ve sınıfın içindeki işlevlerin erişim kontrolü gibi avantajlar sağlar.

class BankAccount {
  late String _accountNumber;
  late double _balance;

  String get accountNumber => _accountNumber;

  double get balance => _balance;

  BankAccount(String accountNumber, double initialBalance) {
    _accountNumber = accountNumber;
    _balance = initialBalance;
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('$amount TL yatırıldı. Yeni bakiye: $_balance TL');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('$amount TL çekildi. Yeni bakiye: $_balance TL');
    } else {
      print('Yetersiz bakiye');
    }
  }
}

void main() {
  BankAccount account = BankAccount("123123123", 300);
  print('Hesap Numarası: ${account.accountNumber}');
  print('Bakiye: ${account.balance} TL');

  account.deposit(500.0);
  account.withdraw(200.0);

  BankAccount newAccount = BankAccount("accountNumber", 100);
  print('Hesap Numarası: ${newAccount.accountNumber}');
  print('Bakiye: ${newAccount.balance} TL');

  newAccount.deposit(500.0);
  newAccount.withdraw(200.0);
}

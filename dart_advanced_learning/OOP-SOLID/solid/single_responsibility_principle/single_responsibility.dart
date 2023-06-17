class User {
  String name;
  String email;

  User(this.name, this.email);
}

class UserDatabase {
  List<User> users = [];

  void addUser(User user) {
    users.add(user);
    // Kullanıcıyı veritabanına ekleme işlemleri
  }

  void deleteUser(User user) {
    users.remove(user);
    // Kullanıcıyı veritabanından silme işlemleri
  }

  List<User> getAllUsers() {
    return users;
    // Tüm kullanıcıları veritabanından alma işlemleri
  }
}

class UserEmailService {
  void sendWelcomeEmail(User user) {
    // Yeni kullanıcıya hoş geldin e-postası gönderme işlemleri
  }

  void sendPasswordResetEmail(User user) {
    // Şifre sıfırlama e-postası gönderme işlemleri
  }
}

void main() {
  User user1 = User('John Doe', 'john@example.com');
  User user2 = User('Jane Smith', 'jane@example.com');

  UserDatabase database = UserDatabase();
  database.addUser(user1);
  database.addUser(user2);

  UserEmailService emailService = UserEmailService();
  emailService.sendWelcomeEmail(user1);
}

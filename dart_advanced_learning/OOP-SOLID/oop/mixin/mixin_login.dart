mixin LoggingMixin {
  void log(String message) {
    print("[LOG]: $message");
  }
}

class User {
  String? name;

  User(this.name);
}

class AdminUser extends User with LoggingMixin {
  AdminUser(String name) : super(name);

  void performAdminTask() {
    log("Admin task performed by $name");
  }
}

class RegularUser extends User {
  RegularUser(String name) : super(name);

  void performRegularTask() {
    print("Regular task performed by $name");
  }
}

void main() {
  AdminUser adminUser = AdminUser("Ekrem");
  adminUser.performAdminTask();

  RegularUser regularUser = RegularUser("Samil");
  regularUser.performRegularTask();
}

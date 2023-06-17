enum Weekday { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void main() {
  Weekday today = Weekday.Wednesday;

  switch (today) {
    case Weekday.Monday:
      print("Bugün Pazartesi");
      break;
    case Weekday.Tuesday:
      print("Bugün Salı");
      break;
    case Weekday.Wednesday:
      print("Bugün Çarşamba");
      break;
    case Weekday.Thursday:
      print("Bugün Perşembe");
      break;
    case Weekday.Friday:
      print("Bugün Cuma");
      break;
    case Weekday.Saturday:
      print("Bugün Cumartesi");
      break;
    case Weekday.Sunday:
      print("Bugün Pazar");
      break;
  }
}

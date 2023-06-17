enum Colors { red, orange, green, blue, yellow }

class SwitchColor {
  Colors? colors;
  SwitchColor({
    this.colors,
  });

  void selectColor() {
    var selected = colors;

    switch (selected) {
      case Colors.red:
        print(" Seçilen renk: Kırmızı");
        break;

      case Colors.orange:
        print("Seçilen renk: Turuncu");
        break;
      default:
        print("Bilinmeyen renk");
    }
  }
}

void main() {
  var colorSelect = SwitchColor(colors: Colors.red);
  colorSelect.selectColor();
}

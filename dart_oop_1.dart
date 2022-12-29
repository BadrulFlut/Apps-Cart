import 'dart:math';

class Operator {
  int penjumlahan(int num1, int num2) {
    return num1 + num2;
  }

  int pengurangan(int num1, int num2) {
    return num1 - num2;
  }

  int pembagian(int num1, int num2) {
    return num1 ~/ num2;
  }

  int perkalian(int num1, int num2) {
    return num1 * num2;
  }

  int sisaBagi(int num1, int num2) {
    return num1 % num2;
  }
}

class Value {
  var isValue1 = Random().nextInt(10);
  var isValue2 = Random().nextInt(20);
}

extension Number on Value {
  void num() {
    print("Nomer A mu $isValue1 dan nomer B mu $isValue2");
  }
}

class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

class Perulangan {
  Value value = Value();

  void piramid() {
    for (var i = 0; i < value.isValue1; i++) {
      String value = '';
      for (var n = 0; n <= i; n++) {
        value += '*';
      }
      print(value);
    }
  }
}

void main() {
  Perulangan perulangan = Perulangan();
  Operator operator1 = Operator();
  Value value = Value();

  Person person = Person("Badrul", "Indonesia");
  print(person.name);
  print(person.address);

  value.isValue1 = 20;
  value.num;

  print(operator1.perkalian(value.isValue1, value.isValue2));
  perulangan.piramid();
  value.num();
}

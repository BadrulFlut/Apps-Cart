void main() {
  print(perkalian(90, 2));
  print(penjumlahan(80, 36));
  print(pembagianDouble(25, 3));
  print(pembagian(30, 3));
  print(sisaBagi(20, 2));
}

perkalian(int num1, int num2) {
  return num1 * num2;
}

penjumlahan(int num1, int num2) {
  return num1 + num2;
}

pembagianDouble(int num1, int num2) {
  return num1 / num2;
}

pembagian(int num1, int num2) {
  return num1 ~/ num2;
}

pengurangan(int num1, int num2) {
  return num1 - num2;
}

sisaBagi(int num1, int num2) {
  return num1 % num2;
}

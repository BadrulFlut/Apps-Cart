void main() {
  List<Map<String, dynamic>> user = [
    {'nama': 'adin', 'nomer': 08992, 'absen': 2},
    {'nama': 'marchelo', 'nomer': 08992, 'absen': 2},
    {'nama': 'andrew', 'nomer': 08992, 'absen': 2},
    {'nama': 'max', 'nomer': 08992, 'absen': 2},
  ];

  for (var i = 0; i < user.length; i++) {
    var item = user[i];
    var getUser = item['nama'];

    print(getUser);

    print(penjumlahan(20, 2));
  }
}

penjumlahan(int num1, int num2) {
  return num1 + num2;
}

pengurangan(int num1, int num2) {
  return num1 - num2;
}

pembagian(int num1, int num2) {
  return num1 / num2;
}

sisaBagi(int num1, int num2) {
  return num1 % num2;
}

perkalian(int num1, int num2) {
  return num1 * num2;
}

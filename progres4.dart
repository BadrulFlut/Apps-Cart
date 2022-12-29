// void main() {
//   print(penjumlahan(20, 20));
//   print(perkalian(10, 5));
//   print(pembagianHasilInt(20, 2));
//   print(pembagianHasilDouble(30, 2));
//   print(pengurangan(20, 12));
//   print(sisaBagi(2, 1));
// }

// //operator aritmatika dan operator penugasan
// penjumlahan(int num1, int num2) {
//   return num1 += num2;
// }

// perkalian(int num1, int num2) {
//   return num1 *= num2;
// }

// pembagianHasilInt(int num1, int num2) {
//   return num1 ~/= num2;
// }

// pembagianHasilDouble(int num1, num2) {
//   return num1 / num2;
// }

// //pengurangan dengan nilai negatif
// pengurangan(int num1, int num2) {
//   return num1 -= -num2;
// }

// sisaBagi(int num1, int num2) {
//   return num1 %= num2;
// }

// void main() {
//   var nilai1 = 90;
//   var nilai2 = 80;

//   print(nilai1 == nilai2);
//   print(nilai1 != nilai2);
//   print(nilai1 >= nilai2);
//   print(nilai1 <= nilai2);
//   print(nilai1 > nilai2);
//   print(nilai1 < nilai2);
// }

// void main() {
//   dynamic num = 20;

//   var toInt = num as int;
//   var check = num is String;
//   var check2 = num is! bool;

//   print(check);
//   print(check2);
//   print(toInt);
// }

void main() {
  var nama = <String>{};

  nama.add("Badrul");
  nama.add("Laksamanadin");
  nama.add("Snapi");

  nama.remove("Snapi");
  print(nama);
  print(nama.length);
}

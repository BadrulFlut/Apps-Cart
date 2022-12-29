//do while loop and break continue
// void main() {
//   var value = 1;
//   while (value <= 10) {
//     if (value % 2 == 0) {
//       print("Angka genap $value");
//     } else {
//       print("Angka ganjil $value");
//     }
//     value++;
//   }

//   print("------------");
//   print("------------");

//   var num = 11;
//   do {
//     print("Perulangan ke-$num");
//     num++;
//   } while (num <= 20);

//   print("------------");
//   print("------------");

//   var angka = 21;
//   while (true) {
//     print("Angka ke-$angka");
//     angka++;

//     if (angka > 30) {
//       break;
//     }
//   }

//   print("------------");
//   print("------------");

//   for (var i = 31; i < 40; i++) {
//     if (i % 2 == 0) {
//       continue;
//     }
//     print("Angka ganjil $i");
//   }
// }

//for in ,high order function and factorial recursive
// Pemahaman di materi ini masih 60%
void sayHallo(String teks, String Function(String) filter) {
  var filterredTeks = filter(teks);
  print('Hi $filterredTeks');
}

String filteredBadWord(String teks) {
  if (teks == 'anjay') {
    return "****";
  } else {
    return teks;
  }
}

void main() {
  sayHallo("anjay", filteredBadWord);
  sayHallo("max", filteredBadWord);
}

// int factorial(int num) {
//   var result = 1;
//   for (var i = 1; i <= num; i++) {
//     result *= i;
//   }
//   return result;
// }

// //masih sedikit bingung di sini
// int factorialRecursive(int num) {
//   if (num == 1) {
//     return 1;
//   } else {
//     return num * factorialRecursive(num - 1);
//   }
// }

// void main() {
//   print(factorial(10));
//   print(factorialRecursive(20));
// }

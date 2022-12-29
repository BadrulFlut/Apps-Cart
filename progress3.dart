// void main() {
//   List<dynamic> listBahan = [
//     "Bakmie",
//     20,
//     25000.0,
//     true,
//   ];

//   String makanan = listBahan[0];
//   int qty = listBahan[1];
//   double harga = listBahan[2];
//   bool ready = listBahan[3];

//   for (var i = 0; i < listBahan.length; i++) {
//     var item = listBahan[i];
//     print(item);
//   }

//   print("----------");
//   print("----------");
//   print(makanan);
//   print(qty);
//   print(harga);
//   print(ready);
// }

//For loop and if else
// import 'dart:math';

// void main() {
//   var num = Random().nextInt(2);
//   if (num % 2 == 0) {
//     print("Angka Genap");
//     for (int i = 1; i < 10; i++) {
//       if (i % 2 == 0) print(i);
//     }
//   } else {
//     print("Angka Ganjil");
//     for (var i = 0; i < 10; i++) {
//       if (i % 2 == 1) print(i);
//     }
//   }
// }

//Switch case and if else
// import 'dart:math';

// void main() {
//   final nilai = Random().nextInt(10);
//   var nilaiTambahan = 2;
//   var nilaiHasil = nilai + nilaiTambahan;

//   switch (nilai) {
//     case 1:
//     case 2:
//     case 3:
//     case 4:
//     case 5:
//     case 6:
//     case 7:
//       if (nilai + nilaiTambahan >= 8) {
//         print('Kamu lulus dengan nilai tambahan nilaimu adalah $nilaiHasil');
//       } else {
//         print('Kamu tidak lulus nilaimu adalah $nilai');
//       }
//       break;
//     case 8:
//     case 9:
//     case 10:
//       print('Kamu lulus dengan nilai $nilai');
//       break;
//     default:
//       print('Mungkin kamu harus belajar lagi nilaimu adalah $nilai');
//   }
// }

import 'dart:math';

void main() {
  var randomValue = Random().nextInt(7);
  var input = getCuacaHariIni(randomValue);
  print(input);
}

getCuacaHariIni(int num) {
  var time = DateTime.now();
  List outputCuaca = [
    "Hari ini cerah",
    "Hari ini cerah namun berawan",
    "Hari ini cukup berawan",
    "Hari ini berawan gelap",
    "Hari ini hujan rintik rintik"
        "Hari ini hujan deras",
    "Hari ini hujan petir",
    "Tidak diketahui cuaca hari ini"
  ];

  switch (num) {
    case 1:
      print(outputCuaca[0]);
      break;
    case 2:
      print(outputCuaca[1]);
      break;
    case 3:
      print(outputCuaca[2]);
      break;
    case 4:
      print(outputCuaca[3]);
      break;
    case 5:
      print(outputCuaca[4]);
      break;
    case 6:
      print(outputCuaca[5]);
      break;
    case 7:
      print(outputCuaca[6]);
      break;
    default:
      print(outputCuaca[7]);
  }

  return time;
}

//Konversi tipedata
// void main() {
//   String masuk = "false";
//   //check
//   var v1 = masuk == 'true';
//   var booleanToString = v1.toString();

//   int bakso = 6000;
//   var minum = '2000';

//   //int To String,String to int
//   var inputInt = int.parse(minum);
//   var toInt = inputInt.toString();

//   String total = bakso.toString();

//   print(inputInt);
//   print(toInt);
//   print(total);
//   print(v1);
// }

//Switch case
import 'dart:math';

void main() {
  //random nilai int sampai 10
  final nilai = Random().nextInt(10);
  var nilaiTambahan = 2;
  var nilaiHasil = nilai + nilaiTambahan;

  switch (nilai) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      if (nilai + nilaiTambahan >= 8) {
        print('kamu lulus tetapi dengan nilai tambahan nilaimu $nilaiHasil');
      } else {
        print('Kamu tidak lulus dengan nilai $nilai');
      }
      break;
    case 8:
    case 9:
    case 10:
      print('Kamu lulus dengan nilai yang bagus dengan nilai $nilai');
      break;
    default:
      print(
          'Kamu mungkin tidak mengerjakan atau salah semua dengan nilai $nilai');
  }
}

// import 'dart:math';

// void main() {
//   var nilai1 = Random().nextInt(100);
//   var nilai2 = Random().nextInt(200);

//   var hasil = nilai1 + nilai2;
//   var penjumlahan = getPerkalian(hasil);

//   print(penjumlahan);
// }

// getPerkalian(var hasil) {
//   return hasil / 4;
// }

// import 'dart:math';

// void main() {
//   List user = [
//     {
//       "id": Random(),
//       "nama": "Adin",
//       "username": "adin1888",
//       "password": "anjay"
//     },
//     {
//       "id": Random(),
//       "nama": "Adin",
//       "username": "adin1888",
//       "password": "anjay"
//     },
//     {
//       "nama": "Adin",
//       "username": "adin1888",
//       "password": "anjay"
//     },
//     {
//       "nama": "diain",
//       "username": "diain1888",
//       "password": "anjir"
//     },
//     {
//       "nama": "sydin",
//       "username": "sydin1888",
//       "password": "anjay111"
//     },
//   ];

//   for (var i = 0; i < user.length; i++) {
//     var item = user[i];
//     var getNama = item["nama"];
//     var getUsername = item["username"];

//     print('Nama : $getNama');
//     print('Username : $getUsername');
//   }
// }

// variable
// void main() {
//   var siswa = "santoso";
//   var absen = 2;
//   var masuk = true;
//   var nilai = 81.3;

//   print('$siswa $nilai $absen $masuk');
// }

//array/list/map
// void main() {
//   //array []
//   var jepang = ['Jasuke', 'Onigiri', 'Sushime', 'Ramen ichiraku'];

//   List<int> nomer = [6200, 7800, 1500, 6700];
//   List makanan = [
//     'Ayam bakar',
//     25,
//     24000.0,
//     'Ayam dengan dibaluri keju mozarela yang sangat enak dan menggugah selera anda'
//   ];

//   //{'Key' : value}
//   Map user = {
//     "nama": "Jarwo",
//     "email": "jarwo@gmail.com",
//     "password": "0811jarwo"
//   };

//   Map<String, dynamic> alamat = {
//     "nama": "Santoso",
//     "alamat": "Jln sujarwo tejo no.4",
//     "nomor": 4,
//     "besar": true
//   };

//   List<Map<String, dynamic>> admin = [
//     {
//       "nama": "Jhosua",
//       "umur": 19,
//       "username": "JhosuaFS",
//       "email": "jhosua@gmail.com",
//       "password": "jhosua0822"
//     },
//     {
//       "nama": "Ferdi",
//       "umur": 30,
//       "username": "FerdiS",
//       "email": "ferdi@gmail.com",
//       "password": "ferdi0822",
//     },
//     {
//       "nama": "Smity",
//       "umur": 18,
//       "username": "smityFS",
//       "email": "smity@gmail.com",
//       "password": "smity0822"
//     },
//     {
//       "nama": "Andre",
//       "umur": 20,
//       "username": "AndreAD",
//       "email": "andre@gmail.com",
//       "password": "Andre0822"
//     }
//   ];
//   // looping
//   for (var i = 0; i < admin.length; i++) {
//     var item = admin[i];
//     print(item);
//   }

//   print(admin[2]["nama"]);

//   // for (var i = 0; i < 6; i++) {
//   //   String value = "";
//   //   for (var n = 0; n <= i; n++) {
//   //     value += "1";
//   //   }
//   //   print(value);
//   // }
// }

// Function
// double getTax(double tota) {
//   return tota * 0.15;
// }

// void main() {
//   var price = 1240;
//   double qty = 4;
//   double total = price * qty;
//   double tax = getTax(total);
//   var penjual = 4960 * 0.15;

//   print(total);
//   print(tax);
// }

//Function list
// getPpn(List diamond) {
//   var total = 0.0;
//   double tax = 0.0;

//   for (var i = 0; i < diamond.length; i++) {
//     var item = diamond[i];
//     var price = item["price"];
//     var qty = item["qty"];
//     total += price * qty;
//     tax = getTax(total);
//   }
//   print("penjualan : $total");
//   print("keuntungan : $tax");
//   return;
// }

// double getTax(double total) {
//   return total * 0.15;
// }

// void main() {
//   List diamond = [
//     {
//       "nickname": "Sandika galih",
//       "price": 21000,
//       "qty": 1,
//     },
//     {
//       "nickname": "Eko",
//       "price": 42000,
//       "qty": 2,
//     },
//     {
//       "nickname": "Kurniawan",
//       "price": 84000,
//       "qty": 4,
//     },
//     {
//       "nickname": "Ari laso",
//       "price": 42000,
//       "qty": 2,
//     },
//   ];

//   print(getPpn(diamond));
// }

//done

// void main() {
//   String apik;
//   var nama1 = "anjay";
//   var nama2 = "subago";

//   var nama3 = '$nama2 ${nama1}';
//   apik = "Haris";

//   print(nama3);
// }

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_apps/model/item_models.dart';
import 'package:seller_apps/service/item_service.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  TextEditingController request = TextEditingController();

  List<int> itemCount = <int>[0, 0, 0, 0];
  List<String> itemRequest = <String>[];
  List<Data>? item;
  var isLoading = false;
  var totalCount;
  var totalItem;

  int harga1 = 0;

  @override
  void initState() {
    super.initState();
    totalCount;
    totalItem;
    harga1;
    itemCount;
    getItem();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getItem() async {
    item = await ItemService().readItem();
    if (item != null) {
      setState(() {
        isLoading = !isLoading; //true // "!" memiliki sifat kebalikan
      });
    }
  }

  perkalian(var a, var b) {
    return a * b;
  }

  total(var a, var b, var c, var d) {
    return a + b + c + d;
  }

  hasil() {
    return perkalian(itemCount[0], 11000) +
        perkalian(
            itemCount[1],
            9000 +
                perkalian(itemCount[2], 8000) +
                perkalian(itemCount[3], 12000));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Visibility(
          visible: isLoading,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 23),
            child: ListView.builder(
                itemCount: item?.length,
                itemBuilder: (context, index) {
                  itemRequest.add('');
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        shadowColor: Color.fromARGB(255, 59, 61, 63),
                        elevation: 20,
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(195, 255, 255, 255),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(223, 226, 226, 226),
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        alignment: Alignment.center,
                                        image:
                                            NetworkImage(item![index].gambar),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  )),
                              Container(
                                width: 181,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        item![index].nama,
                                        style: TextStyle(fontSize: 23),
                                      ),
                                    ),
                                    Text(
                                      "Rp ${item![index].harga.toString()}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          popUpForm(request, () {
                                            itemRequest.add(request.text);
                                          });
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.menu_open,
                                              color: Colors.blue,
                                              size: 14.0,
                                            ),
                                            SizedBox(width: 5),
                                            itemRequest[index] == null
                                                ? Text(
                                                    'Data Tidak Kosong',
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.grey),
                                                  )
                                                : Text(
                                                    'Tambahkan Catatan',
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.grey),
                                                  )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        --itemCount[index];
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.blue,
                                      size: 24.0,
                                    ),
                                  ),
                                  Text(itemCount[index].toString(),
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold)),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        ++itemCount[index];
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        height: 195,
        decoration: BoxDecoration(
            color: Color.fromARGB(206, 238, 238, 238),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 22, left: 22, top: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Total Pesanan',
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                            "(${total(itemCount[0], itemCount[1], itemCount[2], itemCount[3])} Menu)",
                            style: GoogleFonts.montserrat(fontSize: 18)),
                      ],
                    ),
                    Text(
                      'Rp ${hasil().toString()}',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 19, bottom: 19),
              width: 383,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.discount_outlined,
                        color: Colors.blue,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Voucher",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.bold))
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Input Voucher',
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.grey),
                        ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        const Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              padding: EdgeInsets.only(right: 20, left: 20),
              width: double.maxFinite,
              height: 70,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 20)]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Pembayaran',
                            style: GoogleFonts.montserrat(fontSize: 12),
                          ),
                          Text("Rp ${hasil().toString()}",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 25, right: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Batalkan",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, color: Colors.white)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future popUpForm(TextEditingController a, b) async {
    bool confirm = false;
    return await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tambahkan Catatan'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextFormField(
                  controller: a,
                  decoration: const InputDecoration(
                    hintText: 'Tambahkan catatan untuk penjual',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                confirm = true;
                Navigator.pop(context);
                setState(() {
                  b;
                  print(itemRequest);
                });
              },
              child: const Text("Tambahkan"),
            ),
          ],
        );
      },
    );

    if (confirm) {
      print("Confirmed!");
    }
  }
}

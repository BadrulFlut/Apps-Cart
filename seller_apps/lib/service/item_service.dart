import 'package:http/http.dart' as http;
import 'package:seller_apps/model/item_models.dart';

class ItemService {
  // final String baseUrl = 'https://tes-mobile.landa.id/';

  // Future getItem() async {
  //   try {
  //     final response = await http.get(Uri.parse(baseUrl + "api/menus"));
  //     if (itemModelsFromJson(response.body).statusCode == 200) {
  //       return itemModelsFromJson(response.body).datas;
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return e;
  //   }
  // }

  Future<List<Data>?> readItem() async {
    var clinet = http.Client();
    var uri = Uri.parse("https://tes-mobile.landa.id/api/menus");
    final response = await clinet.get(uri);

    if (itemModelsFromJson(response.body).statusCode == 200) {
      var json = response.body;
      return itemModelsFromJson(json).datas;
    }
  }
}

final itemService = ItemService();

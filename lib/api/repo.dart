import 'package:ui_app/api/api.dart';
import 'package:ui_app/home_screen/models/product.dart';

Future<List<Product>> getRepoData() async {
  List<Product> itemList = [];
  try {
    final rowData = await getApiData();

    for (var element in rowData) {
      itemList.add(Product.fromJson(element));
    }
    return itemList;
  } catch (e) {
    return itemList;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/ApiProductModels.dart';


class CartProvider extends ChangeNotifier {
  List<ProductModel> listProduct = [];
  // String urlApi = ''

  void add(ProductModel item, int quantity) {
    for (int i = 0; i < listProduct.length; i++) {
      if (listProduct[i].title == item.title) {
        listProduct[i].quantity = listProduct[i].quantity + quantity;
        notifyListeners();
        return;
      }
    }
    ProductModel product = ProductModel.fromItem(item, 1);
    listProduct.add(product);
    notifyListeners();
  }
}
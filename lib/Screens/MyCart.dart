import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/CartProvider.dart';
import 'package:provider/provider.dart';

import '../provider/ProductProvider.dart';

//providers

//widgets

class CartScreen extends StatefulWidget {
  static const routeName = "cart-screen";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void submitValue(String barcodeValue) {
    Provider.of<ProductProvider>(context, listen: false).fetchProducts(
      barcodeValue.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(8, 3, 8, 60),
        child: Consumer<CartProvider>(builder: (context, productsData, _) {
//          return Container();
          return productsData.listProduct.length == 0
              ? Container(
                  child: Center(
                    child: Text("No products in cart"),
                  ),
                )

              /// I used this approach instead of list view builder because
              /// if the list is long enough and you scroll to the end then the
              /// last element is not completely visible because of the
              /// bottom sheet and FAB
              : SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // Column(
                      //   children: productsData.products.map<Widget>((product) {
                      //     return ProductItem(product);
                      //   }).toList(),
                      // ),

                      // This is for visibility
                      ...productsData.listProduct.map((e) => SafeArea(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                                

                            ),
                          ))
                    ],
                  ),
                );
//              : ListView.builder(
//                  itemBuilder: (ctx, index) {
//                    return ProductItem(productsData.products[index]);
//                  },
//                  itemCount: productsData.products.length,
//                );
        }),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        child: Consumer<ProductProvider>(builder: (context, productsData, _) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // RichText(
              //   text: TextSpan(
              //     children: <TextSpan>[
              //       TextSpan(
              //         //text: "TOTAL\n",
              //         style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 25,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       TextSpan(
              //         // text:
              //         // "${NumberFormat.simpleCurrency(locale: "en_IN").format(productsData.totalPrice)}",
              //         style: TextStyle(
              //           color: Theme.of(context).accentColor,
              //           fontSize: 26,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // RaisedButton(
              //   onPressed: () {
              //     // Navigator.of(context).pushNamed(CheckOutScreen.routeName);
              //   },
              //   child: Text(
              //     "CHECKOUT",
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              //   color: Theme.of(context).accentColor,
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 20,
              //     vertical: 15,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(24.0),
              //   ),
              // ),
            ],
          );
        }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
        child: FloatingActionButton(
          elevation: 4,
          onPressed: () async {
            // var result = await BarcodeScanner.scan();
            // print(result.rawContent.toString());
            // submitValue(result.rawContent.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Mycart.dart';
import 'package:flutter_application_2/Product/showproduct.dart';
import 'package:flutter_application_2/Model/CartModel.dart';
import 'package:flutter_application_2/Model/ApiProductModels.dart';
import 'package:flutter_application_2/Screens/ProductDetail.dart';
import 'package:flutter_application_2/provider/CartProvider.dart';
import 'package:flutter_application_2/provider/ProductProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({Key? key}) : super(key: key);

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  String category = "";
  String keyword = "";
  int countCart = 0;
  @override
  void initState() {
    super.initState();
    category = "All";
    keyword = "";
    var productProvider = Provider.of<ProductProvider>(context, listen: false);
    productProvider.getList(category, keyword);
  }

  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ProductProvider>(context);
    var cartProvider = Provider.of<CartProvider>(context);
    print("length: ${productProvider.list.length}");
    // var cartProvider = Provider.of<CartProvider>(context);
    // cartProvider.getList();
    // countCart = cartProvider.count;
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = 148 + (size.height - kToolbarHeight - 24) / 4.4;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shadowColor: Color.fromARGB(255, 22, 58, 143),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 253, 253, 253),
            Colors.blueAccent
          ], begin: Alignment.bottomLeft, end: Alignment.bottomRight)),
        ),
        title: Row(
          children: [
            Text(
              "Flutter",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              "Shop",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blueAccent),
            )
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Row(
                  children: [
                    Text(
                      countCart.toString() + "  | ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shopping_cart)
                  ],
                )),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    ...productProvider.list.map((e) {
                      return Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (Colors.white),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(Item: e)));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image(
                                        image: NetworkImage(e.image ?? ""),
                                        height: (size.height -
                                                kToolbarHeight -
                                                24) /
                                            5,
                                        fit: BoxFit.fill),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      child: Text(
                                        e.title ?? "",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      height: 40,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: e.rating?.rate ?? 5.0,
                                          minRating: 0.1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                          itemSize: 14,
                                        ),
                                        Text(
                                          (e.rating?.count ?? 0.0).toString() +
                                              " ratings",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        (e.price ?? "").toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: itemWidth / 3,
                                  height: itemHeight / 10,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              side: BorderSide(
                                                  color:
                                                      Colors.lightBlueAccent)),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.lightBlue),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        cartProvider.add(e, 1);
                                        //cartProvider.countCart();
                                        // setState(() {
                                        //   countCart = cartProvider.count;
                                        // });
                                        // _showToast(context);
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to Cart'),
        action: SnackBarAction(
            label: 'Hide', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

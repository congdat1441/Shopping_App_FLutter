import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/ApiProductModels.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import '../provider/ProductProvider.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({required this.Item});

  final ProductModel Item;

  static const routeName = '/product-detail';

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: Text(
          "Product Detail",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 53, 17, 186)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Hero(
              tag: widget.Item.id ?? "",
              child: Image.network(
                widget.Item.image ?? "",
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Card(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Chip(
                        label: Text(
                          "\$${widget.Item.price}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "${widget.Item.title}",
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "${widget.Item.description}",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: widget.Item.rating?.rate ?? 5.0,
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
                        itemSize: 30,
                      ),
                      Text(
                        (widget.Item.rating?.count ?? 0.0).toString() +
                            " ratings",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // width: itemWidth / 3,
            // height: itemHeight / 10,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.lightBlueAccent)),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  // cartProvider.Add(e);
                  // cartProvider.countCart();
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
                      size: 25,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
          ),
        ],
      ),
    );
  }
}

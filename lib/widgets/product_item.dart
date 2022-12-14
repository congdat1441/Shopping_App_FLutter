// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import '../Model/ApiProductModels.dart';

// //providers

// import '../provider/ProductProvider.dart';

// //models

// class ProductItem extends StatelessWidget {
//   final ProductModel product;

//   ProductItem(this.product);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Color.fromRGBO(241, 238, 245, 1),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(13.0),
//       ),
//       child: Column(
//         children: <Widget>[
//           Container(
//             alignment: Alignment.topRight,
//             padding: EdgeInsets.all(2),
//             child: InkWell(
//               // onTap: () {
//               //   Provider.of<ProductProvider>(context, listen: false)
//               //       .removeItem(product.id);
//               // },
//               child: Icon(
//                 Icons.clear,
//                 size: 18,
//                 color: Color.fromRGBO(132, 132, 132, 1),
//               ),
//             ),
//           ),
//           ListTile(
//             contentPadding: EdgeInsets.all(0),
//             // leading: Image.network(
//             //   product.productImage,
//             //   fit: BoxFit.contain,
//             //   width: MediaQuery.of(context).size.width * 0.15,
//             // ),
//             title: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Text(
//                   product.productName,
//                   style: Theme.of(context).textTheme.bodyText1,
//                 ),
//                 Text(
//                   product.productVariant,
//                   style: Theme.of(context).textTheme.bodyText2,
//                 ),
//               ],
//             ),
//             subtitle: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(
//                   "${NumberFormat.simpleCurrency(locale: "en_IN").format(product.productPrice * product.quantity)}",
//                   style: Theme.of(context).textTheme.headline5,
//                 ),
//                 Container(
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                         icon: Icon(Icons.remove),
//                         color: Color.fromRGBO(132, 132, 132, 1),
//                         splashColor: Theme.of(context).accentColor,
//                         disabledColor: Color.fromRGBO(150, 150, 150, 1),
//                         onPressed: product.quantity == 0
//                             ? null
//                             : () {
//                                 int newQuantity = product.quantity - 1;
//                                 Provider.of<ProductsProvider>(context,
//                                         listen: false)
//                                     .modifyQuantity(product.id, newQuantity);
//                               },
//                       ),
//                       Container(
//                         color: Colors.white,
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           product.quantity.toString(),
//                           style: Theme.of(context).textTheme.bodyText1,
//                         ),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         color: Color.fromRGBO(132, 132, 132, 1),
//                         splashColor: Theme.of(context).accentColor,
//                         onPressed: () {
//                           int newQuantity = product.quantity + 1;
//                           Provider.of<ProductsProvider>(context, listen: false)
//                               .modifyQuantity(product.id, newQuantity);
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

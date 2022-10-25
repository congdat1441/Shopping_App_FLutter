import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/CartProvider.dart';
import 'package:flutter_application_2/provider/ProductProvider.dart';
import 'package:provider/provider.dart';
import 'Screens/Show.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShowProduct(),
      )));
}

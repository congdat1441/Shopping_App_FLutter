import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/provider/NewsProvider.dart';
import 'package:provider/provider.dart';

const String src1 =
    "https://images.unsplash.com/photo-1519336555923-59661f41bb45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";

const String src2 =
    "https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80";

const String src3 =
    "https://images.unsplash.com/3/doctype-hi-res.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1165&q=80";

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var newsProvider = Provider.of<NewsProvider>(context);
    newsProvider.getList();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("NewsFlutter",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          elevation: 8,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          shadowColor: Color.fromARGB(255, 22, 58, 143),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green, Colors.blueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
          ),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.network(
                  src1,
                  scale: 8,
                ),
              ),
              //Padding(padding: ),
              Image.network(
                src2,
                scale: 8,
              ),
              Image.network(
                src3,
                scale: 8,
              )
            ],
          ),

          // children: [
          //   ...newsProvider.list.map((e) {
          //     return Text(e.title ?? "Hello");
          //   }).toList()
          // ],
        ));
  }
}

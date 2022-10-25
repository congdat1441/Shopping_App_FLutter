import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/ApiNewModels.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier {
  List<NewsModels> list = [];
  void getList() async {
    String apiURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2022-09-11&sortBy=publishedAt&apiKey=c30805a4259a44d180236a947155006f";
    var client = http.Client();
    var jsonString = await client.get(Uri.parse(apiURL));
    var jsonObject = jsonDecode(jsonString.body);
    var newsListObject = jsonObject['articles'] as List;
    list = newsListObject.map((e) {
      return NewsModels.fromJson(e);
    }).toList();
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/widgets/home.dart';

class News {
  String idVar;
  String urlVar;
  String titleVar;
  String textVar;
  String publisherVar;
  String dateVar;
  String authorVar;

  // Constructor
  News(
      this.authorVar, this.idVar, this.urlVar, this.textVar,
      this.titleVar, this.publisherVar,
      this.dateVar);

  // Mapping variable created to the attributes
  // dynamic means it can be a int or float or string
  News.fromJson(Map<String, dynamic> json){
    idVar = json['id'];
    urlVar = json['url'];
    titleVar = json['title'];
    textVar = json['text'];
    publisherVar = json['publisher'];
    authorVar = json['author'];
    dateVar = json['date'];
  }

}

class NewsApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => HomePageState();
}
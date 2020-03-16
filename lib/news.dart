import 'package:flutter/material.dart';



class News extends StatefulWidget {
  News(this.rows);

  final rows;

  @override
  _NewsState createState() => _NewsState(this.rows);
}


class _NewsState extends State<News> {
  _NewsState(this.rows);

  final rows;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Text("News")
    );
  }
}
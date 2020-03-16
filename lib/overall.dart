import 'package:flutter/material.dart';
import 'package:tracker/countryDetail.dart';



class Overall extends StatefulWidget {
  Overall(this.rows);

  final rows;

  @override
  _OverallState createState() => _OverallState(this.rows);
}


class _OverallState extends State<Overall> {
  _OverallState(this.rows);

  final rows;
  List<int> countries = new List<int>();





  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Color.fromRGBO(13, 0, 100, 1),
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: new FlexibleSpaceBar(
              background: Image.asset("assets/city.png", fit: BoxFit.cover,),
            ),
            leading: IconButton(
              icon: Icon(Icons.filter_list, color: Colors.white,)
            ),
            title: Container(
              padding: EdgeInsets.only(left: 60),
              child: Text("Covid19 Tracker"),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {},
              )
            ],
          ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate((context, i) =>
          new Container(
              padding: EdgeInsets.all(10),
            child:
          new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: Alignment(3, 1),
                colors: [
                  Color.fromRGBO(23, 46, 192, 1),
                  Colors.pinkAccent
                ]
              )
            ),
            height: 160,

            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CountryDetail(rows, i)));
              },

              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("China", style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),),

                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30, top: 10),
                            child: new Text("Total infected: ", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                            ),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, top: 10),
                          child: new Text("10 000 ", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30, top: 10),
                          child: new Text("Total recovered: ", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, top: 10),
                          child: new Text("5 000 ", style: TextStyle(
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
          ),
            childCount: 4

          ),

        )
        ],
      ),
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tracker/rankings.dart';



class CountryDetail extends StatefulWidget {
  CountryDetail(this.rows, this.countryNumber);

  final rows;
  final countryNumber;

  @override
  _CountryDetailState createState() => _CountryDetailState(this.rows, this.countryNumber);
}


class _CountryDetailState extends State<CountryDetail> {
  _CountryDetailState(this.rows, this.countryNumber);

  final rows;
  final countryNumber;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return new Scaffold(
        body: new ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(rows[0], style: TextStyle(
                  fontSize: 30
                ),),
              ),
            ),
            
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 7, right: 7, top: 7),
                height: 150,
                width: width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white
                ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.local_hospital, color: Colors.black87, size: 50,),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Cases", style: TextStyle(
                              fontSize: 30,
                              color: Colors.black87
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text((rows[1]).toString(), style: TextStyle(
                              fontSize: 30,
                              color: Colors.black87
                            ),),
                          )
                        ],
                      ),
                      height: 90,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                          border: Border.all(color: Colors.black87, width: 2),
                        color: Colors.redAccent
                      ),
                    ),


                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 7, right: 7, left: 9),
                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: (
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                color: Colors.greenAccent,
                                border: Border.all(color: Colors.black87, width: 2)
                              ),

                              child: Center(
                                child: ListView(
                                  children: <Widget>[
                                    Center(
                                      child: Text("New Cases: ", style: TextStyle(
                                        color: Colors.black87
                                      ),),
                                    ),
                                    Center(
                                      child: Text(rows[2] == null ? "0" : rows[2].toString(), style: TextStyle(
                                        color: Colors.black87
                                      ),),
                                    )
                                  ],

                                )
                              ),
                            )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 7, right: 7),
                          child: SizedBox(
                            height: 40,
                            width: 90,
                            child: (
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                      color: Colors.indigoAccent,
                                      border: Border.all(color: Colors.black87, width: 2)
                                  ),

                                  child: Center(
                                      child: ListView(
                                        children: <Widget>[
                                          Center(
                                            child: Text("New Deaths: ", style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          ),
                                          Center(
                                            child: Text(rows[4] == null ? "0" : rows[4].toString(), style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          )
                                        ],

                                      )
                                  ),
                                )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 7, right: 7),
                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: (
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                      color: Colors.blueAccent,
                                      border: Border.all(color: Colors.black87, width: 2)
                                  ),

                                  child: Center(
                                      child: ListView(
                                        children: <Widget>[
                                          Center(
                                            child: Text("Recovered: ", style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          ),
                                          Center(
                                            child: Text(rows[5] == null ? "0" : rows[5].toString(), style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          )
                                        ],

                                      )
                                  ),
                                )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 7, right: 7),
                          child: SizedBox(
                            height: 40,
                            width: 90,
                            child: (
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                      color: Colors.blueAccent,
                                      border: Border.all(color: Colors.black87, width: 2)
                                  ),

                                  child: Center(
                                      child: ListView(
                                        children: <Widget>[
                                          Center(
                                            child: Text("Active Cases: ", style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          ),
                                          Center(
                                            child: Text(rows[6] == null ? "0" : rows[6].toString(), style: TextStyle(
                                                color: Colors.black87
                                            ),),
                                          )
                                        ],

                                      )
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {

              },

              child: Container(
                padding: EdgeInsets.only(top: 20, left: 50, right: 50),

                child: SizedBox (
                  height: 30,
                  child: Container(
                    child: Center(
                      child: Text("Add Country"),
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      color: Colors.orange
                    ),

                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
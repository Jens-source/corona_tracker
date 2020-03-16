import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spreadsheet_decoder/spreadsheet_decoder.dart';
import 'package:tracker/news.dart';
import 'package:tracker/overall.dart';
import 'package:tracker/rankings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
with SingleTickerProviderStateMixin {
  List rows;
  TabController tabController;


  void row() async {
    ByteData data = await rootBundle.load("spreadsheet/Corona.xlsx");
    List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes, data.lengthInBytes);
    var decoder = SpreadsheetDecoder.decodeBytes(bytes);
    var table = decoder.tables['Sheet1'];
    var values = table.rows;
    rows = values;
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
    setState(() {
      row();
      print(rows);
    });
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      bottomNavigationBar: new Material(
        color: Colors.white,
        child: TabBar(
          unselectedLabelColor: Colors.black38,
          labelColor: Colors.black,
          indicatorColor: Colors.white,

          controller: tabController,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.home)),
            new Tab(icon: Icon(Icons.location_on)),
            new Tab(icon: Icon(Icons.assignment)),
          ],
        ),
      ),


      body: rows == null ? Center( child: CircularProgressIndicator(),) :
          new TabBarView(
              controller: tabController,
              children: <Widget> [

                Overall(rows),
                Rankings(rows),
                News(rows)

              ])
    );

  }
}

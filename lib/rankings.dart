import 'package:flutter/material.dart';
import 'package:tracker/countryDetail.dart';



class Rankings extends StatefulWidget {
  Rankings(this.rows);

  final rows;

  @override
  _RankingsState createState() => _RankingsState(this.rows);
}


class _RankingsState extends State<Rankings> {
  _RankingsState(this.rows);



  String countries(grade) {


    switch (grade) {
      case "China":
        {
          return "cn";
        }
        break;

      case "S. Korea":
        {
          return "kr";
        }
        break;

      case "Italy":
        {
          return "it";
        }
        break;

      case "Iran":
        {
          return "ir";
        }
        break;

      case "France":
        {
          return "fr";
        }
        break;


      case "Germany":
        {
          return ("de");
        }
        break;


      case "Diamond Princess":
        {
          return "jp";
        }
        break;


      case "Spain":
        {
          return "es";
        }
        break;



      case "USA":
        {
          return "us";
        }
        break;


      case "Japan":
        {
          return "jp";
        }
        break;


      case "Switzerland":
        {
          return "ch";
        }
        break;


      case "UK":
        {
          return "sh";
        }
        break;

      case "Philippines":
        {
          return "ph";
        }


      case "Netherlands":
        {
          return "nl";
        }
        break;


      case "Sweden":
        {
          return "se";
        }
        break;


      case "Belgium":
        {
          return "be";
        }
        break;


      case "Norway":
        {
          return "no";
        }
        break;


      case "Singapore":
        {
          return "sg";
        }
        break;


      case "Hong Kong":
        {
          return "hk";
        }
        break;


      case "Austria":
        {
          return "at";
        }
        break;


      case "Malaysia":
        {
          return "my";
        }
        break;


      case "Bahrain":
        {
          return "bh";
        }
        break;


      case "Australia":
        {
          return "au";
        }
        break;


      case "Greece":
        {
          return "gr";
        }
        break;


      case "Canada":
        {
          return "ca";
        }
        break;


      case "Kuwait":
        {
          return "kw";
        }
        break;


      case "Iraq":
        {
          return "ir";
        }
        break;


      case "Iceland":
        {
          return "is";
        }
        break;



      case "Egypt":
        {
          return "eg";
        }
        break;



      case "Thailand":
        {
          return "th";
        }
        break;



      case "Taiwan":
        {
          return "tw";
        }
        break;



      case "UAE":
        {
          return "sd";
        }
        break;



      case "India":
        {
          return "in";
        }
        break;


      case "Israel":
        {
          return "il";
        }
        break;

      case "San Marino":
        {
          return "sm";
        }
        break;


      case "Denmark":
        {
          return "dk";
        }
        break;



      case "Czechia":
        {
          return "cz";
        }
        break;



      case "Lebanon":
        {
          return "lb";
        }
        break;



      case "Portugal":
        {
          return "pt";
        }
        break;


      case "Vietnam":
        {
          return "vn";
        }
        break;

      case "Brazil":
        {
          return "br";
        }
        break;


      case "Finland":
        {
          return "fi";
        }
        break;



      case "Ireland":
        {
          return "ie";
        }
        break;



      case "Algeria":
        {
          return "dz";
        }
        break;



      case "Palestine":
        {
          return "ps";
        }
        break;


      case "Russia":
        {
          return "ru";
        }
        break;

      case "Oman":
        {
          return "om";
        }
        break;


      case "Slovenia":
        {
          return "sk";
        }
        break;



      case "Qatar":
        {
          return "qa";
        }
        break;



      case "Romania":
        {
          return "ro";
        }
        break;



      case "Saudi Arabia":
        {
          return "sa";
        }
        break;


      case "Ecuador":
        {
          return "ec";
        }
        break;

      case "Georgia":
        {
          return "ge";
        }
        break;


      case "Argentina":
        {
          return "ar";
        }
        break;



      case "Croatia":
        {
          return "hr";
        }
        break;



      case "Poland":
        {
          return "pl";
        }
        break;



      case "Macao":
        {
          return "mo";
        }
        break;


      case "Estonia":
        {
          return "ee";
        }
        break;

      case "Chile":
        {
          return "cl";
        }
        break;



      case "Azerbaijan":
        {
          return "az";
        }
        break;



      case "Mexico":
        {
          return "mx";
        }
        break;



      case "Pakistan":
        {
          return "pk";
        }
        break;



      case "Hungary":
        {
          return "hu";
        }
        break;


      case "Peru":
        {
          return "pe";
        }
        break;

      case "Belarus":
        {
          return "by";
        }
        break;


      case "Indonesia":
        {
          return "id";
        }
        break;



      case "Dominican Republic":
        {
          return "do";
        }
        break;



      case "Luxembourg":
        {
          return "lu";
        }
        break;



      case "New Zealand":
        {
          return "nz";
        }
        break;


      case "Costa Rica":
        {
          return "cr";
        }
        break;

      case "French Guiana":
        {
          return "gf";
        }
        break;


      case "Slovakia":
        {
          return "sk";
        }
        break;



      case "Afghanistan":
        {
          return "af";
        }
        break;



      case "Senegal":
        {
          return "sn";
        }
        break;



      case "Bulgaria":
        {
          return "bg";
        }
        break;


      case "Maldives":
        {
          return "mv";
        }
        break;

      case "Latvia":
        {
          return "lv";
        }
        break;

      case "North Macedonia":
        {
          return "mk";
        }
        break;



      case "Bangadesh":
        {
          return "bd";
        }
        break;



      case "Bosnia and Herzegovina":
        {
          return "ba";
        }
        break;



      case "Malta":
        {
          return "mt";
        }
        break;


      case "South Africa":
        {
          return "za";
        }
        break;

      case "Cambodia":
        {
          return "kh";
        }
        break;

      case "Morocco":
        {
          return "ma";
        }
        break;



      case "Tunisia":
        {
          return "tn";
        }
        break;



      case "Albania":
        {
          return "al";
        }
        break;



      case "Cameroon":
        {
          return "cm";
        }
        break;


      case "Faeroe Islands":
        {
          return "fo";
        }
        break;

      case "Saint Martin":
        {
          return "sx";
        }
        break;

      case "Andorra":
        {
          return "ad";
        }
        break;



      case "Armenia":
        {
          return "am";
        }
        break;


      case "Jordan":
        {
          return "jo";
        }
        break;


      case "Lithuania":
        {
          return "lt";
        }
        break;


      case "Monaco":
        {
          return "mc";
        }
        break;


      case "Nepal":
        {
          return "np";
        }
        break;


      case "Nigeria":
        {
          return "ng";
        }
        break;


      case "Sri Lanka":
        {
          return "lk";
        }
        break;


      case "Ukraine":
        {
          return "ua";
        }
        break;


      case "Bhutan":
        {
          return "bt";
        }
        break;


      case "Colombia":
        {
          return "co";
        }
        break;


      case "Gibraltar":
        {
          return "gi";
        }
        break;


      case "Vatican City":
        {
          return "va";
        }
        break;


      case "Liechtenstein":
        {
          return "li";
        }
        break;


      case "Moldova":
        {
          return "md";
        }
        break;


      case "Paraguay":
        {
          return "py";
        }
        break;


      case "St. Barth":
        {
          return "bl";
        }
        break;


      case "Serbia":
        {
          return "rs";
        }
        break;


      case "Togo":
        {
          return "tg";
        }
        break;



    }
  }

  final rows;




  @override
  Widget build(BuildContext context) {






    return new Scaffold(
        backgroundColor: Color.fromRGBO(13, 0, 100, 1),

        body: ListView.builder(
            itemCount: 103,
            itemBuilder: (BuildContext context, i) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) =>
                            CountryDetail(rows[i + 66], i + 66)));
                  },
                  child: new ListTile(
                    leading: new Text((i + 1).toString(),
                    ),
                    title: Row(
                      children: <Widget>[
                        new Container(
                          width: 35,
                          child: Image.asset("icons/flags/png/${countries(rows[i + 66][0].toString())}.png", package: 'country_icons',)
                        ),
                        new Container(
                          padding: EdgeInsets.only(left: 25),
                          child: new Text(rows[i + 66][0].toString()),
                        )
                      ],
                    ),
                    trailing: new Container(
                      width: 60,
                      height: 30,
                      decoration: new BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child:  new Center(
                        child: new Text(rows[1 + 66][1].toString()),
                    ),)
                  )

              );
            }

        ));
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people =0;
  String _infoText = "";

  void _changePeople(int delta){
    setState(() {
      _people += delta;
      if(_people <0){
        _infoText = "Mundo invertido?";
        _people++;
      }else if(_people > 10){
        _infoText = "Lotado!!";
        _people--;
      }else{
        _infoText = "Pode entrar! :)";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/BlackRestaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          //Centraliza o axis do Aplicativo na horizontal
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Texto do número de pessoas
            Text(
              "Pessoas: $_people",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            //Alinha os botões abaixo na vertical
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 45.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                      },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 45.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                      },
                  ),
                ),
              ],
            ),

            //Texto "Pode Entrar"
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}


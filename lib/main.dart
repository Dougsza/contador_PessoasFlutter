import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
        children: <Widget>[
          Image.asset(
            "images/Restaurante.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            //Centraliza o axis do Aplicativo na horizontal
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Texto do número de pessoas
              Text(
                "Pessoas: 0",
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
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 45.0, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              //Texto "Pode Entrar"
              Text(
                "Pode Entrar!",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              )
            ],
          )
        ],
      )));
}

import 'package:flutter/material.dart';
import 'package:nutripaloma/telas/Biblioteca.dart';
import 'package:nutripaloma/telas/Cortes.dart';
import 'package:nutripaloma/telas/Inicio.dart';
import 'package:nutripaloma/telas/Receitas.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual =0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      Cortes(),
      Receitas(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Image.asset("logotipoP.png",
          width: 150,
          height: 50,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed:(){
              print("acao:videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed:(){
              print("acao:pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed:(){
              print("acao:conta");
            },
          )
        ],
      ),
      body:Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              title: Text("InÃ­cio"),
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              title: Text("Cortes"),
              icon: Icon(Icons.alarm_off)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepOrange,
              title: Text("Receitas"),
              icon: Icon(Icons.article_outlined)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: Text("Biblioteca"),
              icon: Icon(Icons.view_list_outlined)
          ),
        ],
      ),
    );
  }
}

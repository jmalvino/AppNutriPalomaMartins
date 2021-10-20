import 'package:flutter/material.dart';

class Receitas extends StatefulWidget {
  const Receitas({Key? key}) : super(key: key);

  @override
  _ReceitasState createState() => _ReceitasState();
}

class _ReceitasState extends State<Receitas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Receitas",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Cortes extends StatefulWidget {
  const Cortes({Key? key}) : super(key: key);

  @override
  _CortesState createState() => _CortesState();
}

class _CortesState extends State<Cortes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Cortes",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

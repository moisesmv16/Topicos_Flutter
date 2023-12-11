import 'package:flutter/material.dart';

class DisenoFruta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DisenoFrutaState();
  }
}

class _DisenoFrutaState extends State<DisenoFruta> {
  int _n = 0;
  int _amt = 0;
  void add() {
    setState(() {
      _n++;
      _amt = _amt + 1;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0){
        _n--;
      _amt = _amt - 1;
      }
      if(_amt < 0){
        _amt = 0;
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 155.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            children: <Widget>[
              new IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {
                  add();
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              new Text('$_n', style: new TextStyle(fontSize: 30.0)),
              SizedBox(
                width: 10.0,
              ),
              new IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                onPressed: () {
                  minus();
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 100.0,
        ),
        Container(
            child: Text(
          'Fan $_amt',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        )),
      ],
    );
  }
}
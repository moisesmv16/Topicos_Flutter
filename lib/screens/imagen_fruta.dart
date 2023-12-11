
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "assets/real.png",
  "assets/cris.png",
  "assets/oro.png",
  "assets/beli.png",
  "assets/cha.png",
  "assets/di.png",
  "assets/liga.png",
  "assets/benzema.png"
];

class Frutas_Lista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Frutas_ListaState();
  }
}

class _Frutas_ListaState extends State<Frutas_Lista> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imgList
            .map((item) => Container(
                  child: Center(child: Image.asset(item.toString())),
                ))
            .toList(),
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((url) {
          int index = imgList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Color.fromRGBO(0, 0, 0, 0.9)
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
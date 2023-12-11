import 'package:fluter_aplication_1/screens/imagen_fruta.dart';
import 'package:flutter/material.dart';
import 'diseño.dart';
import 'imagen_fruta.dart';
import 'package:url_launcher/url_launcher.dart';

class Fruta_screen extends StatefulWidget {
  @override
   State<StatefulWidget> createState() {
    return _Fruta_screenState();
  }
}

class _Fruta_screenState extends State<Fruta_screen> {
 bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colors.amber,
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.webhook_sharp,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                _openWEB(context);
              },
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 238, 236, 241),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Frutas_Lista(),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Museo del Real Madrid.',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('Visitas al museo.'),
                          SizedBox(
                            height: 20.0,
                          ),
                         DisenoFruta(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Un poco de nuestra historia....',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'El Real Madrid, nacido en 1902 en Madrid, España, es un coloso del fútbol con una  '
                            'historia de éxitos. Su camiseta blanca y el estadio Santiago Bernabéu son emblemas  '
                            'reconocidos. Con leyendas como Di Stéfano y Ronaldo, ha ganado títulos, incluyendo'
                            'La Liga y la Liga de Campeones de la UEFA. "Hala Madrid y nada más" encarna la '
                            'símbolo de orgullo y éxito.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(90.0),
                                  side: BorderSide(color: Color.fromARGB(255, 28, 2, 108)),
                                ),
                                height: 40.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white, // color de fondo
                                    elevation: 0.0, // sombra
                                  ),
                                    onPressed: _toggleFavorite,
                                    child: TextButton(
                                      onPressed: _toggleFavorite,
                                      child: _isFavorited
                                    ? Icon(
                                        Icons.favorite_border,
                                          color: Color.fromARGB(255, 3, 1, 10),
                                      )
                                      : Icon(
                                        Icons.favorite,
                                          color: Color.fromARGB(255, 3, 1, 10),
                                    ),
                                ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _openBoletos(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    primary: const Color.fromARGB(255, 3, 1, 10),
                                  ),
                                  child: Text(
                                    'Boletos.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _openMas(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    primary: const Color.fromARGB(255, 3, 1, 10),
                                  ),
                                  child: Text(
                                    'Ver mas.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                               SizedBox(
                                width: 5.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(90.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _openTrofeo(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    primary: const Color.fromARGB(255, 3, 1, 10),
                                  ),
                                  child: Text(
                                    'Trofeos.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _openWEB(BuildContext context) async {
    Uri url = Uri.parse("https://www.realmadrid.com/es-ES");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _openBoletos(BuildContext context) async {
    Uri url = Uri.parse("https://www.realmadrid.com/es-ES/entradas");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

   Future<void> _openMas(BuildContext context) async {
    Uri url = Uri.parse("https://www.youtube.com/watch?v=QvJoCy-0XCs");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
  Future<void> _openTrofeo(BuildContext context) async {
    Uri url = Uri.parse("https://www.realmadrid.com/es-ES/el-club/palmares/futbol");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

}

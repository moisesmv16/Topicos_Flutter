import 'package:fluter_aplication_1/screens/App.dart';
import 'package:fluter_aplication_1/screens/Fruta_screen.dart';
import 'package:fluter_aplication_1/screens/Intenciones_screen.dart';
import 'package:fluter_aplication_1/screens/Popular_Screen.dart';
import 'package:fluter_aplication_1/screens/conversor_screen.dart';
import 'package:fluter_aplication_1/screens/dashboard_screen.dart';
import 'package:fluter_aplication_1/screens/login_screen2.dart';
import 'package:fluter_aplication_1/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp ({super.key});
  
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    routes: {
      "/temp" : (context) => const ConversorScreen(),
      "/dash" : (context) => const DashboardScreen(),
      "/int" : (context) =>  IntencionesScreen(),
      "/movie" : (context) => PopularScreen(),
      "/logi" : (context) => const LoginScreen2(),
      "/fruta" : (context) => Fruta_screen(),
      "/planeta" : (context) => MyApp()
    },
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
   );
  }
}


/*class MainApp extends StatefulWidget {
  MainApp({super.key});

  /*@override
  State<MainApp> createState() => _MainAppState();*/
}*/

/*class _MainAppState extends State<MainApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Valor del contador: $contador', style: TextStyle(fontSize: 25),),
      ),
      appBar: AppBar(
        title: const Text('Hola mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
          print('Valor: ${contador++}');
          setState(() {});
        },
        child: Icon(Icons.mouse,color: Colors.black,),
      ),
    ),
    );
  }*/


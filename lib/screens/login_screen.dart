import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: .5,
            image: AssetImage('assets/Fondo_Splash.jpg')
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
           const Positioned(
              top: 120,
              child: Image(
                width: 350,
                image:AssetImage('assets/titulo.png')
                )
              ),
              Positioned(
                bottom: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: MediaQuery.of(context).size.width*.9,
                  padding: EdgeInsets.only(left: 10, right: 10,bottom: 10),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("USUARIO"),
                          border: OutlineInputBorder(),
                          prefixIcon: Image(
                            width: 50,
                            image: AssetImage('assets/esfera.png'),
                          )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("PASSWORD"),
                          border: OutlineInputBorder(),
                          prefixIcon: Image(
                            width: 50,
                            image: AssetImage('assets/esfera.png'),
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
               Positioned(
                bottom: 40,
                child: GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, '/dash'),
                  child:const Image(
                    height: 150,
                    image: AssetImage('assets/esfera.png'),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
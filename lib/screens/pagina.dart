import 'package:concentric_transition/concentric_transition.dart';

import 'inicio.dart';
import 'card_planet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Perros.",
      subtitle: "Los perros desempeñan roles diversos, desde guardianes y trabajadores hasta adorables compañeros de hogar.",
      image: const AssetImage("assets/perro.png"),
      backgroundColor: Color.fromARGB(255, 152, 226, 251),
      titleColor: const Color.fromARGB(255, 255, 218, 231),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/bg-1.json"),
    ),
    CardPlanetData(
      title: "Gatos.",
      subtitle: "Son mamíferos felinos conocidos por su agilidad, elegancia y carácter independiente.",
      image: const AssetImage("assets/gato.png"),
      backgroundColor: const Color.fromARGB(255, 0, 31, 63),
      titleColor: const Color.fromARGB(255, 255, 133, 27),
      subtitleColor: const Color.fromRGBO(255, 255, 133, 27),
      background: LottieBuilder.asset("assets/bg-2.json"),
    ),
    CardPlanetData(
      title: "Conejo.",
      subtitle: "Son pequeños mamíferos caracterizados por sus orejas largas y su cola esponjosa.",
      image: const AssetImage("assets/co.png"),
      backgroundColor: Color.fromARGB(255, 255, 255, 0),
      titleColor: const Color.fromARGB(255, 138, 43, 226),
      subtitleColor: const Color.fromARGB(255, 138, 43, 226),
      background: LottieBuilder.asset("assets/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(  
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      ),
    );
  }
}
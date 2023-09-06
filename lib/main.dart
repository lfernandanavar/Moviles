import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:practicauno/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}

class Home extends StatelessWidget {
    Home  ({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(

      title: "Holi ", 
      subtitle: " c: ", 
      image: const AssetImage("assets/images/corazon.png"),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      titleColor: const Color.fromARGB(255, 0, 0, 0), 
      subtitleColor: Colors.black,
      background: LottieBuilder.asset("assets/animation/3.json"), 
     
     ),

    CardPlanetData(

      title: "Holi x2", 
      subtitle: ":c", 
      image: const AssetImage("assets/images/mariposa.png"),
      backgroundColor: Color.fromARGB(255, 243, 235, 143),
      titleColor: Colors.black, 
      subtitleColor: Color.fromARGB(255, 2, 2, 2),
      background: LottieBuilder.asset("assets/animation/3.json"), 
     
     ),

     CardPlanetData(

      title: "Holi x3", 
      subtitle: " <3 ", 
       image: const AssetImage("assets/images/flores.png"),
      backgroundColor: Color.fromARGB(255, 213, 233, 249),
      titleColor: Colors.black, 
      subtitleColor: Colors.black,
      background: LottieBuilder.asset("assets/animation/3.json"), 
     
     ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
       colors: data.map((e) => e.backgroundColor).toList(),
       itemCount: data.length,
       itemBuilder: (int index ) {  
      return CardaPlanet(data: data[index]);
      },
    ),
    );

}
  
}


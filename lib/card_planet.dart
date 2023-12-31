import 'package:flutter/cupertino.dart';

class CardPlanetData {
  final String title;
  final String subtitle; 
  final ImageProvider image; 
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  const CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor, 
    this.background,
  });
}

class CardaPlanet extends StatelessWidget {
  const CardaPlanet ({
    required this.data, 
    Key ? key}) : super(key: key);

  final CardPlanetData data; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60, vertical: 60
            ),
          child: Column(
            children: [
          
             const Spacer(flex: 3),
              Flexible(
                  flex: 30,
                  child: Image(image: data.image), 
                ), 
               const Spacer(flex: 1),
              Text(data.title.toUpperCase(),
              style: TextStyle(color: data.titleColor,
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              ),
              maxLines: 1,
              ), 
              const Spacer(flex: 1), 
              Text(data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 16,
                ),
                maxLines: 2,
              ),
            const  Spacer(flex: 5),
            ],
          ),
        ),
      ],
    );
  }
}
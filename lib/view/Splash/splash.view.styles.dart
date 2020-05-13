import 'package:flutter/material.dart';

class SplashViewStyles {
  ///Gradient
  LinearGradient backgroundGradient() {
    Color splashViewBackgroundTop = Colors.white;
    Color splashViewBackgroundBottom = Color.fromRGBO(59, 128, 99, 1);
    return LinearGradient(
      colors: [splashViewBackgroundTop, splashViewBackgroundBottom],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  ///Circle Avatar
  CircleAvatar circleAvatarSplashView() {
    Color cicleAvatarBackground = Colors.white;
    Color iconBackground = Color.fromRGBO(44, 93, 72, 1);
    return CircleAvatar(
      backgroundColor: cicleAvatarBackground,
      radius: 65.0,
      child: Icon(
        Icons.fitness_center,
        color: iconBackground,
        size: 55.0,
      ),
    );
  }

  Text textSplashView1() {
    Color textColor = Colors.white;
    return Text(
      'IMC',
      style: TextStyle(
        color: textColor,
        fontSize: 100.0,
        //shadows:
      ),
    );
  }

  Text textSplashView2() {
    Color textColor = Colors.white;
    return Text(
      'calculator',
      style: TextStyle(
        color: textColor,
        fontSize: 41.0,
        //shadows:
      ),
    );
  }
}

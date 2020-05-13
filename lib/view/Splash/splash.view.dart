import 'package:calculo_imc/view/First/first.view.dart';
import 'package:calculo_imc/view/Splash/splash.view.styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';

SplashViewStyles sps = new SplashViewStyles();

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  ///The thing that makes the splashView a SplashScreen
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pop(
          context,
          MaterialPageRoute(
            builder: (context) => HomeView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          
        ],
      ),
    );
  }
}

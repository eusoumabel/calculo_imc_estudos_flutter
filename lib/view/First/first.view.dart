import 'package:calculo_imc/view/First/first.view.styles.dart';
import 'package:flutter/material.dart';

FirstViewStyles fvs = FirstViewStyles();

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fvs.appBar(),
    );
  }
}

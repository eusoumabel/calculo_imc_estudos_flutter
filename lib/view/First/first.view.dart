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
      backgroundColor: fvs.backGroundColor(),
      body: Stack(
        children: [
          ///Container Verde
          fvs.container1Stack(),

          ///Container Branco
          fvs.container2Stack(),

          // ///Icon Avatar
          // fvs.iconAvatarStack(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 40)),

              ///Icon Avatar
              fvs.iconAvatarStack(),
              Padding(padding: EdgeInsets.only(bottom: 40)),

              ///Entrada de texto para peso
              fvs.textField("Weight (Kg)"),

              SizedBox(height: 40,),
              ///Entrada de texto para altura
              fvs.textField("Height (Cm)"),

              ///Botão de Calcular
              ///Texto "Results"
              ///Saída de texto da classificação do IMC
              ///Saída do resultado do cálculo
            ],
          ),
        ],
      ),
    );
  }
}

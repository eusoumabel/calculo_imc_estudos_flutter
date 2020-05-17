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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 90)),

                ///Icon Avatar
                fvs.iconAvatarStack(),
                Padding(padding: EdgeInsets.only(bottom: 72)),

                ///Entrada de texto para peso
                fvs.textField("Weight (Kg)"),
                SizedBox(height: 40),

                ///Entrada de texto para altura
                fvs.textField("Height (Cm)"),
                SizedBox(height: 72),

                ///Botão de Calcular
                fvs.calculateButton(),
                SizedBox(height: 40),

                ///Texto "Results"
                fvs.resultText(),
                SizedBox(height: 40),

                ///Saída de texto da classificação do IMC

                ///Saída do resultado do cálculo
              ],
            ),
          ),
        ],
      ),
    );
  }
}

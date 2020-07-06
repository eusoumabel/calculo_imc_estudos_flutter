import 'package:calculo_imc/view/First/first.view.styles.dart';
import 'package:flutter/material.dart';

FirstViewStyles fvs = FirstViewStyles();

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _resultsText = "";

  void _resetFields() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _resultsText = "";
    });
  }

  void _calculate() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      if (imc < 18.6) {
        _resultsText = "IMC = ${imc.toStringAsPrecision(4)} \n\nUnder weight ";
      } else if (imc >= 18.6 && imc < 24.9) {
        _resultsText = "IMC = ${imc.toStringAsPrecision(4)} \n\nIdeal weight";
      } else if (imc >= 24.9 && imc < 29.9) {
        _resultsText =
            "IMC = ${imc.toStringAsPrecision(4)} \n\nSlightly overweight";
      } else if (imc >= 29.9 && imc < 34.9) {
        _resultsText =
            "IMC = ${imc.toStringAsPrecision(4)} \n\nFirst level obesity";
      } else if (imc >= 34.9 && imc < 39.9) {
        _resultsText =
            "IMC = ${imc.toStringAsPrecision(4)} \n\nSecond level obesity";
      } else if (imc >= 40) {
        _resultsText =
            "IMC = ${imc.toStringAsPrecision(4)} \n\nThird level obesity";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fvs.appBar(_resetFields),
      backgroundColor: fvs.backGroundColor(),
      body: Stack(
        children: [
          ///Container Verde
          fvs.container1Stack(),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 90)),

                  ///Icon Avatar
                  fvs.iconAvatarStack(),
                  Padding(padding: EdgeInsets.only(bottom: 72)),

                  ///Entrada de texto para peso
                  fvs.textFormField("Weight (Kg)", weightController),
                  SizedBox(height: 40),

                  ///Entrada de texto para altura
                  fvs.textFormField("Height (Cm)", heightController),
                  SizedBox(height: 72),

                  ///Botão de Calcular
                  fvs.calculateButton(_calculate, _formKey),
                  SizedBox(height: 40),

                  ///Texto "Results"
                  fvs.resultText(_resultsText),
                  SizedBox(height: 40),

                  ///Saída de texto da classificação do IMC

                  ///Saída do resultado do cálculo
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

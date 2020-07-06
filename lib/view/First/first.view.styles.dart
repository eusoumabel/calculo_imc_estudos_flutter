import 'package:flutter/material.dart';
//import 'package:icon_shadow/icon_shadow.dart';

class FirstViewStyles {
  ///BackGround Color
  Color backGroundColor() => Colors.white;

  ///AppBar
  AppBar appBar(onPressed) {
    String textAppBar = "IMC Calculator";
    Color backgroundColor = Color.fromRGBO(59, 128, 99, 1);
    return AppBar(
      title: Text(
        textAppBar,
      ),
      centerTitle: true,
      backgroundColor: backgroundColor,
      actions: [
        IconButton(icon: Icon(Icons.refresh), onPressed: onPressed),
      ],
    );
  }

  ///Container1 Stack
  Container container1Stack() {
    Color color = Color.fromRGBO(132, 176, 157, 1);
    return Container(
      color: color,
    );
  }

  ///Container2 Stack
  Container container2Stack() {
    Color color = Colors.white;
    double height = 138;
    return Container(
      height: height,
      color: color,
    );
  }

  ///Icon Avatar Stack
  Align iconAvatarStack() {
    Color backgroundColor = Color.fromRGBO(59, 128, 99, 1);
    Color colorIcon = Colors.white;
    double iconSize = 60.0;
    Color colorShadow = Color.fromRGBO(0, 0, 0, 0.31);
    double blourRadius = 20;
    return Align(
      alignment: Alignment(0, -0.74),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: colorShadow,
              blurRadius: blourRadius,
            )
          ],
        ),
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: iconSize,
          child: Icon(
            Icons.fitness_center,
            color: colorIcon,
            size: iconSize,
          ),
        ),
      ),
    );
  }

  ///Entrada de dados para Peso/Altura
  Container textFormField(String hintText, controller) {
    double height = 45;
    double width = 370;
    Color containerColor = Colors.white;
    Color hintTextColor = Colors.grey;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(27),
      ),
      child: TextFormField(
        keyboardType:
            TextInputType.numberWithOptions(signed: true, decimal: true),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
          ),
        ),
        controller: controller,
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return "Insert the data!";
          }
        },
      ),
    );
  }

  ///Botão de Calcular
  Container calculateButton(onPressed, formKey) {
    double height = 45;
    double width = 370;
    Color buttonColor = Color.fromRGBO(44, 93, 72, 1);
    String buttonText = "Calculate";
    double fontSize = 18;
    Color buttonTextColor = Colors.white;
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        onPressed: () {
          if (formKey.currentState.validate()) {
            onPressed();
          }
        },
        //onPressed,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }

  ///Texto de Resultado
  Text resultText(String text) {
    Color textColor1 = Color.fromRGBO(44, 93, 72, 1);
    Color textColor2 = Colors.grey[200];
    Color textColor;
    double fontSize = 23;
    if (text == "Results") {
      textColor = textColor1;
    } else {
      textColor = textColor2;
    }
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

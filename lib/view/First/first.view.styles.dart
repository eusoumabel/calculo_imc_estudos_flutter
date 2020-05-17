import 'package:flutter/material.dart';

class FirstViewStyles {
  ///BackGround Color
  Color backGroundColor() => Colors.white;

  ///AppBar
  AppBar appBar() {
    String textAppBar = "IMC Calculator";
    Color backgroundColor = Color.fromRGBO(59, 128, 99, 1);
    return AppBar(
      title: Text(
        textAppBar,
      ),
      centerTitle: true,
      backgroundColor: backgroundColor,
      actions: [
        IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
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
    return Align(
      alignment: Alignment(0, -0.74),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: iconSize,
        child: Icon(
          Icons.fitness_center,
          color: colorIcon,
          size: iconSize,
        ),
      ),
    );
  }

  ///Entrada de dados para Peso/Altura
  Container textField(String hintText) {
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
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
          ),
        ),
      ),
    );
  }

  ///Botão de Calcular
  Container calculateButton() {
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
        onPressed: () {},
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

  Text resultText() {
    String text = "Results";
    Color textColor = Color.fromRGBO(44, 93, 72, 1);
    double fontSize = 23;
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

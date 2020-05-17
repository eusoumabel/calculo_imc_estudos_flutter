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
    Color backgroundColor = Color.fromRGBO(44, 93, 72, 1);
    Color colorIcon = Colors.white;
    double iconSize = 50.0;
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

  ///Entrada de dados para Peso
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
        keyboardType: TextInputType.number,
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
}

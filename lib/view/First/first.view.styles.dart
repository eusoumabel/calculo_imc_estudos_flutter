import 'package:flutter/material.dart';

class FirstViewStyles {
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
}

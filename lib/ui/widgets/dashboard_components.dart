import 'package:flutter/material.dart';

Card dashboardMenuCard(String title, Icon icon) {
  return Card(
    elevation: 10,
    child: Column(
      children: <Widget>[

        icon,
        Text(title),

      ],
    ),
  );
}
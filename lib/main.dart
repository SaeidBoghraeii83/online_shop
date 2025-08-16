import 'package:flutter/material.dart';
import 'package:online_shop/screens/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffEEEEEE)),
      home: Main_Screen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

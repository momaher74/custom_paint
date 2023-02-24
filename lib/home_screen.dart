import 'package:flutter/material.dart';
import 'package:untitled1/custom_paint/shape_four.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color(0xff2148C0),
      body: ShapeFour(),
    );
  }
}

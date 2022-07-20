import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios)),
        appBar: AppBar(
          centerTitle: false,
          title: Image.asset('images/logo.png', fit: BoxFit.scaleDown),
          backgroundColor: const Color(0xFF65D469),
        ),
      ),
    );
  }
}
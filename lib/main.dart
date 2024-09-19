import 'package:flutter/material.dart';
import 'dart:math';
import 'colors.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Magic8Ball(),
      ),
    );

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    void changeBall() {
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
      });
      print("I Got Clicked!");
    }

    return Scaffold(
      backgroundColor: AppColors.dark4,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: AppColors.primary600,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              color: AppColors.primary500,
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: changeBall,
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

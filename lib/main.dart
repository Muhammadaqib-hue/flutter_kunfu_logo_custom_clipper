import 'package:flutter/material.dart';
import 'package:flutter_batman_custom_clipper/lower_inner_white.dart';
import 'package:flutter_batman_custom_clipper/outer_circle.dart';
import 'package:flutter_batman_custom_clipper/upper_black_inner.dart';
import 'package:flutter_batman_custom_clipper/white_half_circle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: OuterCircleClipper(),
                  child: Container(color: Colors.black),
                ),
                ClipPath(
                  clipper: WhiteHalfCircleClipper(),
                  child: Container(color: Colors.white),
                ),
                ClipPath(
                  clipper: UpperBlackInnerClipper(),
                  child: Container(color: Colors.black),
                ),
                ClipPath(
                  clipper: LowerWhiteInnerClipper(),
                  child: Container(color: Colors.white),
                ),
                Positioned(
                  top: 50,
                  child: ClipOval(
                    child: Container(
                      width: 45,
                      height: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: ClipOval(
                    child: Container(
                      width: 45,
                      height: 45,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import '../../layout/top_left_layout.dart';
import '../../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -150,
            left: 0,
            child: ClipPath(
              clipper: CircularClipper(),
              child: CustomPaint(
                size: const Size(300, 300),
                painter: CirclePainter(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -150,
            child: ClipPath(
              clipper: HalfCircleClipper(),
              child: CustomPaint(
                size: const Size(300, 300),
                painter:HalfCirclePainter(),
              ),
            ),
          ),


          // Use Case Points Calculate Button
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Center(
              child: UseCaseCalculateButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/use_case_points');
                },
              ),
            ),

          ),
          //Import Button
          Positioned(
            top: 430,
            left: 0,
            right: 0,
            child: Center(
              child: ImportButton(
                onPressed: () {},
              ),
            ),

          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/App_bar_without_menu.png',
                  fit: BoxFit.cover,
                ),
                const Positioned.fill(
                  child: Center(
                    child: Text(
                      'UserCasePointsTool',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )

          ),

        ],
      ),
    );
  }
}


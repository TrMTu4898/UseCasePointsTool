import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../layout/top_left_layout.dart';
import '../../widgets/custom_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: TopLeftLayOut(),
          ),

          // Use Case Points Calculate Button
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Center(
              child: UseCaseCalculateButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/uucp-calculate');
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
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/widgets/custom_button.dart';
import 'package:usecasetool/layout/top_left_layout.dart';
import 'package:usecasetool/widgets/widgets_get_started.dart';

@RoutePage()
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

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
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                  Text(
                    'Welcome to the Use Case Point Calculator',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ])),
          ),
          Positioned(
              top: 320,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'This application calculates the number of Use Case Points (UCP) for a project.'
                      ' Please note that Use Cases need to be created in order to use this tool.'
                      ' Use Case Points are used to estimate the effort of a software project. '
                      'This application does not calculate the effort, but provides a calculation for Use Case Points as a metric for the software project size during the estimation process.'
                      ' The UCP formula uses four elements: Unadjusted Use Case Weight (UUCW),'
                      ' Unadjusted Actor Weight (UAW), Technical Complexity Factor (TCF),'
                      ' and Environmental Complexity Factor (ECF). '
                      'Each element will be presented on a specific page to calculate the UCP step by step. '
                      'The Use Case Points page will contain the final calculation based on the four previous elements.'
                      ' For boundary limits, information on functionality, or general questions about Use Case Points,'
                      ' please refer to the Help section located in the top right corner of every page.For calculation pages,'
                      ' the Calculate button MUST be pressed to move to the next page.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          const Positioned(
            top: 50,
            right: 0,
            left: 0,
            child: Center(child: WidgetsGetStarted()),
          ),
          const Positioned(
            top: 750,
            left: 0,
            right: 0,
            child: Center(
              child: StartButton(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/router/auto_router.gr.dart';
import '../../layout/top_left_layout.dart';
import '../../widgets/custom_button.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showHome = true;

  void _navigateToUseCasePoint() {
    setState(() {
      _showHome = false;
    });
    final router = AutoRouter.of(context);
    router.navigateNamed('/home/use-case-point');
    //router.push(const UseCasePointRoute());
  }

  void _navigateToImport() {
    setState(() {
      _showHome = false;
    });
    final router = AutoRouter.of(context);
    router.push(const ImportRoute());
  }

  void _goBackToHome() {
    setState(() {
      _showHome = true;
    });
    final router = AutoRouter.of(context);
    router.pop();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return Visibility(
      visible: _showHome,
      replacement: WillPopScope(
        onWillPop: () async {
          _goBackToHome();
          return false;
        },
        child: const AutoRouter(),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color(0xFFEEEEEE),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child: TopLeftLayOut(),
            ),
            Positioned(
              top:screenHeight/4,
              left: screenWidth/8,
              child: Center(
                child: UseCasePointButton(
                  onPressed:() {
                    _navigateToUseCasePoint();
                  },
                ),
              ),
            ),
            Positioned(
              top:screenHeight/2,
              left: screenWidth/8,
              child: Center(
                child: ImportButton(
                  onPressed: (){
                    _navigateToImport();
                  },
                ),
              ),
            ),
            Positioned(
              top:MediaQuery.of(context).padding.top+10,
              left: 0,
              width: screenWidth,
              height: screenHeight/10,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              )
            )
          ],
        ),
      ),
    );
  }
}
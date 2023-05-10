import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/router/auto_router.gr.dart';

class UseCasePointButton extends StatelessWidget {
  final void Function() onPressed;
  const UseCasePointButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        side: BorderSide.none,
        padding: const EdgeInsets.all(0),
        minimumSize: const Size(300, 200),
        elevation: 0,
      ),
      child: SizedBox(
        width: 300,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              right: -10,
              top: 0,
              child: Image.asset(
                'assets/images/button_use_case_calculate_1.png',
                width: 80,
                height: 80,
              ),
            ),
            Positioned(
              right: -150,
              bottom: -120,
              child: Image.asset(
                'assets/images/button_use_case_calculate_2.png',
                width: 402,
                height: 315,
              ),
            ),
            Positioned(
              left: -20,
              top: -20,
              child: Image.asset(
                'assets/images/button_use_case_calculate_3.png',
                width: 200,
                height: 200,
              ),
            ),
            const Positioned(
              bottom: 25,
              left: 25,
              child: Text(
                'Use Case\nCalculator',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImportButton extends StatelessWidget {
  final void Function() onPressed;
  const ImportButton({
    super.key,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        side: BorderSide.none,
        padding: const EdgeInsets.all(0),
        minimumSize: const Size(300, 200),
        elevation: 0,
      ),
      child: SizedBox(
        width: 300,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              right: -10,
              top: 10,
              child: Image.asset(
                'assets/images/button_import_1.png',
                width: 200,
                height: 150,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/button_import_2.png',
                width: 120,
                height: 100,
              ),
            ),
            Positioned(
              left: -50,
              top: -50,
              child: Image.asset(
                'assets/images/button_import_3.png',
                width: 200,
                height: 200,
              ),
            ),
            const Positioned(
              bottom: 25,
              left: 25,
              child: Text(
                'Import',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(context);
        context.router.navigateNamed('/home');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF50C2C9),
        padding: const EdgeInsets.only(bottom: 0),
        minimumSize: Size(MediaQuery.of(context).size.width,48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class UUCPCalculateButton extends StatelessWidget {
  final void Function() onPressed;
  const UUCPCalculateButton({
    super.key,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF50C2C9),
        minimumSize: const Size(300, 48),
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: const Text(
        'Calculate',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class UAWCalculateButton extends StatelessWidget {
  final void Function() onPressed;
  const UAWCalculateButton({
    super.key,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF50C2C9),
        minimumSize: const Size(300, 48),
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: const Text(
        'Calculate',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


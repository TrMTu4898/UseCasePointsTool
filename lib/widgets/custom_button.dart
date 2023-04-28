import 'package:flutter/material.dart';

class UseCaseCalculateButton extends StatelessWidget {
  final Function onPressed;

  const UseCaseCalculateButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/use_case_points');
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Image.asset(
              'assets/images/UseCaseCalculate.jpeg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}


class ImportButton extends StatelessWidget {
  final Function onPressed;

  const ImportButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Image.asset(
            'assets/images/Import.jpeg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }


}

class StartButton extends StatelessWidget{
  const StartButton({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed:(){
        Navigator.pushNamed(context, '/home');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF50C2C9),
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 25),
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

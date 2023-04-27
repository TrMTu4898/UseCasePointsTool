import 'package:flutter/material.dart';

class UseCaseCalculateButton extends StatelessWidget {
  final Function onPressed;

  const UseCaseCalculateButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/use_case');
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        // Set background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/widgets/assets/images/UseCaseCalculate.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      child: Text('Use Case Calculate'),
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
        primary: Colors.white,
        onPrimary: Colors.black,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        // Set background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/widgets/assets/images/Import.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      child: Text('Import'),
    );
  }
}

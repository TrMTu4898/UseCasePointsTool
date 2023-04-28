import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:usecasetool/screens/History.dart';
import 'package:usecasetool/screens/Home.dart';
import 'package:usecasetool/screens/Profile__page.dart';
import 'package:usecasetool/screens/Tool__page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages = [
    HomePage(),
    ToolPage(),
    History(),
    Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

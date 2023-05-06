import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

@RoutePage()
class LogInPage extends StatefulWidget{
  const LogInPage({Key ? key}) : super(key: key);
  @override
  _LogInPageState createState() => _LogInPageState();
}
class _LogInPageState extends State<LogInPage>{

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Text('LogIn'),
    );
  }
}
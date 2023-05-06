
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

@RoutePage()
class ECFPage extends StatefulWidget{
  const ECFPage({Key ? key}) : super(key: key);
  @override
  _ECFPageState createState() => _ECFPageState();
}
class _ECFPageState extends State<ECFPage>{

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Text('Register'),
    );
  }
}


import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

@RoutePage()
class TCFPage extends StatefulWidget{
  const TCFPage({Key ? key}) : super(key: key);
  @override
  _TCFPageState createState() => _TCFPageState();
}
class _TCFPageState extends State<TCFPage>{

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Text('Register'),
    );
  }
}

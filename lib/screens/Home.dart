import 'package:flutter/material.dart';
import 'package:usecasetool/data/models/User.login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var initUser = UserLogin(UserName: null, Password: null);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter a search term',
                
              ),
              style: TextStyle(
                color: Color(0xFF525F7F),
                textBaseline: TextBaseline.alphabetic
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              
              keyboardType: TextInputType.text,
              cursorColor: Color(0xFF525F7F),
              cursorWidth: 2.0,
              cursorHeight: 2.0,
              cursorRadius: Radius.circular(100),
              textAlignVertical: TextAlignVertical.center,
              
            ),
          ),
          
        ],
      ),
    );
  }
}

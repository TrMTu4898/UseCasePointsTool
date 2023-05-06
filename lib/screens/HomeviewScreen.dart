import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

@routePage
class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({Key? key}) : super(key: key);

  // ignore: unused_field

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 17, right: 17),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70, bottom: 30),
            child: Container(
              child: Center(
                  child: Text(
                'SIGN IN',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              child: Image(
                image: AssetImage('assets/images/image8.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     border: Border.all(color: Colors.red)),

              child: TextField(
                controller: _userNameController,
         
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'User name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff50C2C9),
                  ),
                  fillColor: Color.fromARGB(255, 250, 252, 255),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff50C2C9),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              child: TextField(
                controller: _passWordController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Pass Word',
                  prefixIcon: Icon(
                    Icons.key,
                    color: Color(0xff50C2C9),
                  ),
                  fillColor: Color.fromARGB(255, 250, 252, 255),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff50C2C9),
                      width: 2,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff50C2C9)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {},
              child: Text(
                'login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Center(
              child: Text(
                'Forget Password',
                style: TextStyle(color: Color(0xff50C2C9)),
              ),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/google.png'),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text('Google',style:TextStyle(color: Color(0xFF333333)) ,)
                ],
              )),
              SizedBox(
                height: 8,
              )
              ,
              ElevatedButton(

              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/facebook.png'),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text('Google',style:TextStyle(color: Color(0xFF333333)) ,)
                ],
              )),
        ]),
      ),
    );
  }
}

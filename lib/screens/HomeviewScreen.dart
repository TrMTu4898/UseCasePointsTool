import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../utilize/auth_validator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@routePage
class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({Key? key}) : super(key: key);

  // ignore: unused_field

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  final _userNameController = TextEditingController(text: "");
  final _passWordController = TextEditingController(text: "");

  @override
  String? _userName;
  String? _passWord;
  bool _obscureText = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<void> login(BuildContext context) async {
    EasyLoading.show(status: 'Is Login');
    // code is here

    String? email = _userNameController?.text;
    String? passWord = _passWordController?.text;
    String? ValidateEmail = Validator.validateEmail(email: email);
    String? ValidatePassWord = Validator.validatePassword(password: passWord);

    if (ValidateEmail != null && ValidatePassWord != null) {
      EasyLoading.showError('Bạn sai Email Hoặc Password');
      return;
    } else if (ValidateEmail != null) {
      EasyLoading.showError(ValidateEmail);
      return;
    } else if (ValidatePassWord != null) {
      EasyLoading.showError(ValidatePassWord);
      return;
    }
    // code is here
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff50C2C9),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // xử lý sự kiện khi người dùng click vào icon back
          },
        ),
        title: Text(
          'SIGN IN',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 17, right: 17),
        child: Column(children: <Widget>[
         

          // Padding(
          //   padding: EdgeInsets.only(top: 40, bottom: 30),
          //   child: Container(
          //     child: Center(
          //         child: Text(
          //       'SIGN IN',
          //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          //     )),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              child: Image(
                image: AssetImage('assets/images/image8.png'),
              ),
            ),
          ),
          // --------------------------UserName----------------------
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     border: Border.all(color: Colors.red)),

              child: TextFormField(
                controller: _userNameController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => setState(() {
                  _userName = value;
                }),
                validator: (value) => Validator.validateEmail(email: value),
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Email ',
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
          // --------------------------PassWord----------------------
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Container(
              child: TextFormField(
                // validator: (value) =>_validator ,
                controller: _passWordController,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) =>
                    Validator.validatePassword(password: value),
                onChanged: (value) => setState(() {
                  _passWord = value;
                }),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Pass Word',
                  prefixIcon: Icon(
                    Icons.key,
                    color: Color(0xff50C2C9),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xff50C2C9),
                    ),
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
          // --------------------------Login----------------------
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 18)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff50C2C9)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {
                login(context);
              },
              child: Text(
                'Đăng nhập',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )),
          // --------------------------Forgot passWord----------------------
          SizedBox(
            height: 15,
          ),

          // --------------------------Login With PassWord----------------------
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {
                print(_userName);
                print(_passWord);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/google.png'),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Google',
                    style: TextStyle(color: Color(0xFF333333)),
                  )
                ],
              )),
          SizedBox(
            height: 8,
          ),
          // --------------------------LoginWith FaceBook----------------------
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
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
                  Text(
                    'Facebook',
                    style: TextStyle(color: Color(0xFF333333)),
                  )
                ],
              )),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(328, 48)),
              ),
              onPressed: () {
                print(_userName);
                print(_passWord);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/pngwing.com.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Đăng kí Tài Khoản',
                    style: TextStyle(color: Color(0xFF333333)),
                  )
                ],
              )),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 255, 255)),
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
                  Image.asset(
                    'assets/images/pngwing1.com.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Quên Mật Khẩu',
                    style: TextStyle(color: Color(0xFF333333)),
                  )
                ],
              )),
          SizedBox(
            height: 8,
          ),
        ]),
      ),
    );
  }
}

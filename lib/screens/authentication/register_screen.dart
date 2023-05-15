import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:usecasetool/router/auto_router.gr.dart';
import '../../utilize/auth_validator.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureTextPassWord = true;
  bool _obscureTextConfirmPassWord = true;
//------------------------ controller input fields-----------------------
  TextEditingController? _fullName;
  TextEditingController? _email;
  TextEditingController? _password1;
  TextEditingController? _password2;
  final _formKey = GlobalKey<FormState>();
  bool _checked = false;

  @override
  void initState() {
    super.initState();
    _fullName = TextEditingController(text: "");
    _email = TextEditingController(text: "");
    _password1 = TextEditingController(text: "");
    _password2 = TextEditingController(text: "");
  }

  Future<void> register(BuildContext context) async {
    EasyLoading.show(status: 'Vui Lòng chờ đợi');
    String? email = _email?.text;
    String? fullname = _fullName?.text;
    String? password1 = _password1?.text;
    String? password2 = _password2?.text;
    String? _ValidateFullName = Validator.validateName(name: fullname);
    String? _ValidateEmail = Validator.validateEmail(email: email);
    String? _ValidatePassword1 =
        Validator.validatePassword(password: password1);
    String? _ValidatePassword2 = Validator.validateConfirmPassword(
        password: password1, confirmPassword: password2);
    print({
      "name": fullname,
      "email": email,
      "pass1": password1,
      "pass2": password2,
    });
    if (email == null &&
        fullname == null &&
        password1 == null &&
        password2 == null) {
      EasyLoading.showError('Vui lòng điền from đăng kí');
      return;
    }
    if (_ValidateEmail != null) {
      EasyLoading.showError(_ValidateEmail);
    } else if (_ValidateFullName != null) {
      EasyLoading.showError(_ValidateFullName);
    } else if (_ValidatePassword1 != null) {
      EasyLoading.showError(_ValidatePassword1);
    } else if (_ValidatePassword2 != null) {
      EasyLoading.showError(_ValidatePassword2);
    } else {
      // code here
      print({
        "name": fullname,
      });
    }
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xff50C2C9),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // xử lý sự kiện khi người dùng click vào icon back
            router.pop(true);
          },
        ),
        title: Text(
          'Sign Up',
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
      // resizeToAvoidBottomPadding: false,
      body: SafeArea(
          minimum: EdgeInsets.only(left: 17, right: 17),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // cần đổi
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Signup1.png',
                    width: 246,
                    height: 243,
                  ),
                ),
                // --------------------------UserName----------------------
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 10),
                  child: Container(
                    child: TextFormField(
                      controller: _fullName,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => setState(() {}),
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Họ và tên ',
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
                // --------------------------Email----------------------
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 10),
                  child: Container(
                    child: TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) => setState(() {}),
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
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
                      controller: _password1,
                      keyboardType: TextInputType.visiblePassword,
                      // validator: (value) =>
                      //     Validator.validatePassword(password: value),
                      onChanged: (value) => setState(() {
                        // _passWord = value;
                      }),
                      obscureText: _obscureTextPassWord,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Mật khẩu',
                        prefixIcon: Icon(
                          Icons.key,
                          color: Color(0xff50C2C9),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureTextPassWord = !_obscureTextPassWord;
                            });
                          },
                          child: Icon(
                            _obscureTextPassWord
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                // --------------------------Confirm PassWord----------------------
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 10),
                  child: Container(
                    child: TextFormField(
                      // validator: (value) =>_validator ,
                      controller: _password2,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) => setState(() {
                        // _passWord = value;
                      }),
                      obscureText: _obscureTextConfirmPassWord,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'xác nhận mật khẩu',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff50C2C9),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureTextConfirmPassWord =
                                  !_obscureTextConfirmPassWord;
                            });
                          },
                          child: Icon(
                            _obscureTextConfirmPassWord
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _checked,
                        onChanged: (bool? value) {
                          setState(() {
                            _checked = value!;
                          });
                        },
                        focusColor: Color(0xff50C2C9),
                        activeColor: Color(0xff50C2C9),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // launchUrl(Uri.parse('https://www.facebook.com/profile.php?id=100012736594723'));
                          setState(() {
                            _checked = !_checked;
                          });
                        },
                        child: Text(
                          'Tôi đồng ý với điều khoản',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(328, 48)),
                    ),
                    onPressed: () {
                      // login(context);
                      register(context);
                    },
                    child: Text(
                      'Tạo tài khoản',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                // --------------------------Forgot passWord----------------------
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      router.push(LoginRoute());
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bạn đã có tài khoản ?',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Đăng Nhập',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff50C2C9)),
                          )
                        ]),
                  ),
                )
              ],
            ),
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          )),
    );
  }
}

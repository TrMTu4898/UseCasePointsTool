import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../utilize/auth_validator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

@RoutePage()
class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  TextEditingController? _email;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController(text: "");
  }
  Future<void> sendGmail(BuildContext context)async{
    EasyLoading.show(status: 'Vui Lòng chờ đợi');
    String? email = _email?.text;
    String? _ValidateEmail = Validator.validateEmail(email: email);
    if(_ValidateEmail != null){
      EasyLoading.showError(_ValidateEmail);
    }else{
      //  code here prin
      print(email);

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
          'Khôi phục tài khoản',
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
      body: SafeArea(
          minimum: EdgeInsets.only(left: 17, right: 17),
          
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 200,bottom: 20),
                child: Center(
                  child: Text('',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                ),
              ),
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
                    // login(context);
                    sendGmail(context);
                  },
                  child: Text(
                    'Gửi mã',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ],
          )),
    );
  }
}

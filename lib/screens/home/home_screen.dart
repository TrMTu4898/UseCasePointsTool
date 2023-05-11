import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/router/auto_router.gr.dart';
import '../../layout/top_left_layout.dart';
import '../../widgets/custom_button.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff50C2C9),
       
        title: Text(
          'User Case Tool',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      
      body: SafeArea(
        minimum: EdgeInsets.only(left: 17, right: 17, top: 10),
        child: Stack(
        
          children: [
            // Use Case Points Calculate Button
            
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              // width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
                onPressed: () {
                  context.router.push(LoginRoute());
                },
                child: Container(
                
                  height: 320,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 0, top: 0),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 255, 255, 255),
                    
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 38,
                          left: 15,
                          child: Text(
                            'Import',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                shadows: <Shadow>[
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Color.fromRGBO(218, 218, 218, 0.8),
                                    offset: Offset(5, 5),
                                  ),
                                ],
                                color: Color.fromARGB(255, 40, 36, 36)),
                              
                          )),
                      // Positioned(
                      //   top: -10,
                      //   left: -27,
                      //   child: Image.asset(
                      //     'assets/images/Grades-bro11.png',
                      //     width: 234,
                      //     height: 218,
                      //   ),
                      // ),
                      Positioned(
                        top: -90,
                        left: -80,
                        child: Image.asset(
                          'assets/images/button_import_33.png',
                          width: 220,
                          height: 220,
                        ),

                      ),
                      Positioned(
                        top: 40,
                        right: 0,
                        child: Image.asset(
                          'assets/images/Vector 10 (1).png',
                          width: 300,
                          height: 198,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        child: Image.asset(
                          'assets/images/Fox.png',
                          width: 223,
                          height: 137,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(8),
                ),
                onPressed: () {
                  context.router.push(LoginRoute());
                },
                child: Container(
               
                  height: 320,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 15, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                       color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 38,
                          left: 0,
                          child: Text(
                            'User Case \n Caculate',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                shadows: <Shadow>[
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Color.fromRGBO(218, 218, 218, 0.8),
                                    offset: Offset(5, 5),
                                  ),
                                ],
                                color: Color.fromARGB(255, 40, 36, 36)),
                          )),
                      Positioned(
                        top: -10,
                        left: -27,
                        child: Image.asset(
                          'assets/images/Grades-bro11.png',
                          width: 234,
                          height: 218,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/images/Propic_1.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Positioned(
                        bottom: -50,
                        right: -50,
                        child: Image.asset(
                          'assets/images/button_import_33.png',
                          width: 220,
                          height: 220,
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Import Button
            // Positioned(
            //   top: 430,
            //   left: 0,
            //   right: 0,
            //   child: Center(
            //     child: ImportButton(
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

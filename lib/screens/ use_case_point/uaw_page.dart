import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/layout/top_left_layout.dart';
import 'package:usecasetool/util/uaw_calculate.dart';
import 'package:usecasetool/util/uucp_calculate.dart';
import 'package:usecasetool/widgets/custom_table.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

@RoutePage()
class UAWScreen extends StatefulWidget{
  const UAWScreen({Key?key}) : super(key:key);

  @override
  _UAWScreenState createState() => _UAWScreenState();
}

class _UAWScreenState extends State<UAWScreen>{
  final TextEditingController _controllerSimple = TextEditingController();
  final TextEditingController _controllerAverage = TextEditingController();
  final TextEditingController _controllerComplex = TextEditingController();
  int _simpleUAW = 0;
  int _averageUAW = 0;
  int _complexUAW = 0;
  double uaw = 0;
  @override
  void dispose(){
    _controllerSimple.dispose();
    _controllerAverage.dispose();
    _controllerComplex.dispose();
    super.dispose();
  }
  final data = [
    ['Classify', 'Weight', '', 'Number of\nUse case', 'Result'],
    ['Simple', '1', 'X', '', ''],
    ['Average', '2', 'X', '', ''],
    ['Complex', '3', 'X', '', ''],
    ['', '', '', 'Total', ''],
  ];

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (_) => UseCasePointsBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        body: Stack(
          children: [
            const Positioned(
              top:0,
              left: 0,
              child: TopLeftLayOut(),
            ),
            Positioned(
              top:50,
              left:0,
              right:0,
              child: Center(
                child: Stack(
                  children: [
                    Image.asset(
                        'assets/images/App_bar_without_menu.png',
                    ),
                    const Positioned(
                      top:15,
                      left: 20,
                      child: Center(
                        child: Text(
                          'Main UAW',
                          style: TextStyle(
                            color: Color(0xFF50C2C9),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                      const Positioned(
                        top:15,
                        right: 20,
                          child: Center(
                            child: Text(
                              '2/4',
                              style: TextStyle(
                                color: Color(0xFF50C2C9),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ),
                      ),
                    Positioned(
                        top: 300,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Column(children: [
                          TextField(
                            controller: _controllerSimple,
                            decoration: const InputDecoration(
                              hintText: 'Enter number of Simple Use Cases',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _simpleUAW = int.tryParse(value) ?? 0;
                                data[1][3] = _simpleUAW.toString();
                              });
                            },
                          ),
                          const SizedBox(height: 25),
                          TextField(
                            controller: _controllerAverage,
                            decoration: const InputDecoration(
                              hintText: 'Enter number of Average Use Case',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _averageUAW = int.tryParse(value) ?? 0;
                                data[2][3] = _averageUAW.toString();
                              });
                            },
                          ),
                          const SizedBox(height: 25),
                          TextField(
                            controller: _controllerComplex,
                            decoration: const InputDecoration(
                              hintText: 'Enter number of Complex Use Case',
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _complexUAW = int.tryParse(value) ?? 0;
                                data[3][3] = _complexUAW.toString();
                              });
                            },
                          ),
                        ])),
                    Positioned(
                        top: 150,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: CustomTable(
                                data: data,
                                hasHeader: false,
                              )
                            ),
                    Positioned(
                      top: 650,
                      right: 0,
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/image_uaw.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        )
      )
    );
  }
}

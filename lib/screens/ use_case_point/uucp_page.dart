import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/layout/top_left_layout.dart';
import 'package:usecasetool/util/uucp_calculate.dart';
import 'package:usecasetool/widgets/custom_table.dart';
import 'package:bloc/bloc.dart';

@RoutePage()
class UUCPPage extends StatefulWidget {
  const UUCPPage({Key? key}) : super(key: key);
  @override
  _UUCPPageState createState() => _UUCPPageState();
}

class _UUCPPageState extends State<UUCPPage> {
  int _simpleUUCP = 0;
  int _averageUUCP = 0;
  int _complexUUCP = 0;
  double uucp = 0;
  final data = [
    ['Classify', 'Weight', '', 'Number of\nUse case', 'Result'],
    ['Simple', '5', 'X', '', ''],
    ['Average', '10', 'X', '', ''],
    ['Complex', '15', 'X', '', ''],
    ['', '', '', 'Total', ''],
  ];

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) =>
            UseCasePointsFormBloc(useCasePointsBloc: UseCasePointsBloc()),
        child: FormBlocListener<UseCasePointsFormBloc, String, String>(
          onSubmitting: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Calculating')),
            );
          },
          onSuccess: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Calculate success')),
            );
          },
          onFailure: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Calculate failure')),
            );
          },
          child: Scaffold(
            backgroundColor: const Color(0xFFEEEEEE),
            body: Stack(
              children: [
                Positioned(
                    top: 250,
                    left: 0,
                    right: 0,
                    child: ListView(
                      shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                            TextFieldBlocBuilder(
                              textFieldBloc:
                              BlocProvider.of<UseCasePointsFormBloc>(context)
                                  .simpleUUCP,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  hintText: 'Enter number of Simple Use Case',
                                  border: OutlineInputBorder(),
                                  hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                              onChanged: (value) {
                                setState(() {
                                  debugPrint('movieTitle: ');
                                  _simpleUUCP = int.tryParse(value) ?? 0;
                                  data[1][3] = _simpleUUCP.toString();
                                });
                              },
                            ),
                      TextFieldBlocBuilder(
                        textFieldBloc:
                            BlocProvider.of<UseCasePointsFormBloc>(context)
                                .averageUUCP,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: 'Enter number of Average Use Case',
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        onChanged: (value) {
                          setState(() {
                            debugPrint('movieTitle: ');
                            _averageUUCP = int.tryParse(value) ?? 0;
                            data[2][3] = _averageUUCP.toString();
                          });
                        },
                      ),
                      TextFieldBlocBuilder(
                        textFieldBloc:
                            BlocProvider.of<UseCasePointsFormBloc>(context)
                                .complexUUCP,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: 'Enter number of Complex Use Case',
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        onChanged: (value) {
                          setState(() {
                            _complexUUCP = int.tryParse(value) ?? 0;
                            data[3][3] = _complexUUCP.toString();
                          });
                        },
                      ),
                    ])),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: CustomTable(
                    data: data,
                    hasHeader: false,
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  child: TopLeftLayOut(),
                ),
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset('assets/images/App_bar_without_menu.png'),
                        const Positioned(
                          top: 15,
                          left: 20,
                          child: Center(
                            child: Text(
                              'Main UUCP',
                              style: TextStyle(
                                color: Color(0xFF50C2C9),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 15,
                          right: 20,
                          child: Center(
                            child: Text(
                              '1/4',
                              style: TextStyle(
                                color: Color(0xFF50C2C9),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 580,
                  right: 00,
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/image_uucp.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

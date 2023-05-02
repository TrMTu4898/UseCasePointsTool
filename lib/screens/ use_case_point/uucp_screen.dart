import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/layout/top_left_layout.dart';
import 'package:usecasetool/util/uucp_calculate.dart';
import 'package:usecasetool/widgets/custom_table.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

@RoutePage()
class UUCPScreen extends StatefulWidget {
  const UUCPScreen({Key? key}) : super(key: key);
  @override
  _UUCPScreenState createState() => _UUCPScreenState();
}

class _UUCPScreenState extends State<UUCPScreen> {
  final _controllerSimple = TextFieldBloc();
  final _controllerAverage = TextFieldBloc();
  final _controllerComplex = TextFieldBloc();
  int _simpleUUCP = 0;
  int _averageUUCP = 0;
  int _complexUUCP = 0;
  double uucp = 0;
  @override
  void dispose() {
    _controllerSimple.close();
    _controllerAverage.close();
    _controllerComplex.close();
    super.dispose();
  }

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
      create: (context) => UseCasePointsFormBloc(useCasePointsBloc: UseCasePointsBloc()),
      child: FormBlocListener<UseCasePointsFormBloc,String, String>(
        onSubmitting: (context, state){

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Calculating')),
          );
        },
        onSuccess: (context, state){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Calculate success')),
          );
          //ket qua
        },
        onFailure: (context, state){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Calculate failure')),
          );
        },
        child: Scaffold(
          backgroundColor: const Color(0xFFEEEEEE),
          body: Stack(
            children: [
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
                  top: 220,
                  left: 0,
                  right: 0,
                  child: Column(children:
                  [
                    TextFieldBlocBuilder(
                      textFieldBloc: _controllerSimple,
                      decoration: const InputDecoration(
                        hintText: 'Enter number of Simple Use Case',
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      onChanged: (value){
                        setState(() {

                          _simpleUUCP = int.tryParse(value) ?? 0;
                          data[1][3] = _simpleUUCP.toString();
                        });
                      },
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: _controllerAverage,
                      decoration: const InputDecoration(
                          hintText: 'Enter number of Average Use Case',
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      onChanged: (value){
                        setState(() {
                          _averageUUCP = int.tryParse(value) ?? 0;
                          data[2][3] = _averageUUCP.toString();
                        });
                      },
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: _controllerComplex,
                      decoration: const InputDecoration(
                          hintText: 'Enter number of Complex Use Case',
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      onChanged: (value){
                        setState(() {
                          _complexUUCP = int.tryParse(value) ?? 0;
                          data[3][3] = _complexUUCP.toString();
                        });
                      },
                    ),

                  ])),
              Positioned(
                child: BlocListener<UseCasePointsBloc, UseCasePointsState>(
                  listener: (context, state){

                    if(_controllerSimple.state.value.isNotEmpty &&
                        _controllerAverage.state.value.isNotEmpty &&
                        _controllerComplex.state.value.isNotEmpty
                    ) {
                      context.read<UseCasePointsBloc>().on<CalculateUUCPEvent>((
                          event, emit) {
                        final uucp = uucpCalculator(
                            event.simpleUUCP,
                            event.complexUUCP,
                            event.averageUUCP
                        );
                        emit(UseCasePointsUUCPSuccessState(uucp: uucp));
                      });

                      debugPrint(state.toString());
                      if (state is UseCasePointsUUCPSuccessState) {
                        setState(() {
                          uucp = state.uucp;
                          data[4][4] = uucp.toString();
                        });
                      }
                    }
                  },
                  child: Container(),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomTable(
                  data:data,
                  hasHeader: false,
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
      )
    );
  }
}

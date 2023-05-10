import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:usecasetool/bloc/use_case_point/use_case_points_bloc.dart';
import 'package:usecasetool/layout/top_left_layout.dart';
import 'package:usecasetool/widgets/custom_card.dart';

@RoutePage()
class TCFPage extends StatefulWidget {
  const TCFPage({Key? key}) : super(key: key);
  @override
  _TCFPageState createState() => _TCFPageState();
}

class _TCFPageState extends State<TCFPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;
    late String ratingT1 ;
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
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                color: const Color(0xFFEEEEEE),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top,
                left: 0,
                child: const TopLeftLayOut(),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 20,
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
                            'Main TCF',
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
                            '3/5',
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
                top:200,
                height: 400,
                width: screenWidth,
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: [
                    CustomCard(
                        titleText: 'T1',
                        subtitleText: 'Distributed System',
                        weightText: 'Weight: 2.0',
                        dropdownValue: 'ratingT1',
                        dropdownItems: const ['0,''1','2','3','4','5'],
                        onDropdownChanged: (String? value){
                          setState(() {
                            ratingT1 = value!;
                          });
                        },
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

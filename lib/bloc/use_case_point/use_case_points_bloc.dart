import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:usecasetool/util/uaw_calculate.dart';
import 'package:usecasetool/util/uucp_calculate.dart';
part 'use_case_points_event.dart';
part 'use_case_points_state.dart';

class UseCasePointsBloc extends Bloc<UseCasePointsEvent,UseCasePointsState>{
  UseCasePointsBloc():super( UseCasePointsInitialState());

  @override
  Stream<UseCasePointsState> mapEventToState(
      UseCasePointsEvent event,
      ) async*{
    if(event is CalculateUUCPEvent){
      yield UseCasePointsUUCPCalculatingState();
          final uucp = uucpCalculator(
              event.simpleUUCP,
              event.averageUUCP,
              event.complexUUCP
          );
      yield UseCasePointsUUCPSuccessState(uucp: uucp);
    } else if( event is SwitchToUAWEvent){

    }else if(event is CalculateUAWEvent){
      yield UseCasePointsUAWCalculatingState();
          final uaw = uawCalculator(
            event.simpleActors,
            event.averageActors,
            event.complexActors,
          );
      yield UseCasePointsUAWSuccessState(uaw: uaw);
    } else if( event is SwitchToTCFEvent){

    } else if(event is CalculateTCFEvent){

    } else if(event is SwitchToECFEvent){

    } else if(event is CalculateECFEvent){

    } else if( event is SwitchToUCPEvent){

    } else if(event is CalculateUCPEvent){

    }
  }
}

class UseCasePointsFormBloc extends FormBloc<String, String>{
  final UseCasePointsBloc useCasePointsBloc;
  final simpleUUCP = TextFieldBloc();
  final averageUUCP = TextFieldBloc();
  final complexUUCP =  TextFieldBloc();
  final simpleActors = TextFieldBloc();
  final averageActors = TextFieldBloc();
  final complexActors =  TextFieldBloc();

  UseCasePointsFormBloc({required this.useCasePointsBloc}){
    addFieldBlocs(
        fieldBlocs: [
      simpleUUCP,
      averageUUCP,
      complexUUCP,
      simpleActors,
      averageActors,
      complexActors,
    ]
    );
  }

  @override
  void onSubmitting() async{

    final uucp = uucpCalculator(
        simpleUUCP.value.isNotEmpty ? int.parse(simpleUUCP.value) : 0,
        averageUUCP.value.isNotEmpty ? int.parse(averageUUCP.value) : 0,
        complexUUCP.value.isNotEmpty ? int.parse(complexUUCP.value) : 0,
    );
    useCasePointsBloc.add(
        CalculateUUCPEvent(
          simpleUUCP: simpleUUCP.value.isNotEmpty ? int.parse(simpleUUCP.value) : 0,
          averageUUCP: averageUUCP.value.isNotEmpty ? int.parse(averageUUCP.value) : 0,
          complexUUCP: complexUUCP.value.isNotEmpty ? int.parse(complexUUCP.value) : 0,
    )
    );

    final uaw = uawCalculator(
      simpleActors.value.isNotEmpty ? int.parse(simpleActors.value) : 0,
      averageActors.value.isNotEmpty ? int.parse(averageActors.value) : 0,
      complexActors.value.isNotEmpty ? int.parse(complexActors.value) : 0,
    );
    useCasePointsBloc.add(
        CalculateUAWEvent(
          simpleActors: simpleActors.value.isNotEmpty ? int.parse(simpleActors.value) : 0,
          averageActors: averageActors.value.isNotEmpty ? int.parse(averageActors.value) : 0,
          complexActors: complexActors.value.isNotEmpty ? int.parse(complexActors.value) : 0,
        )
    );
    emitSuccess(canSubmitAgain: true);
  }

  void onSuccess() async {

  }

}
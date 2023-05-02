part of 'use_case_points_bloc.dart';

abstract class UseCasePointsEvent{}

class UseCasePointsInitialEvent extends UseCasePointsEvent {}
class CalculateUUCPEvent extends UseCasePointsEvent{
  final int simpleUUCP;
  final int averageUUCP;
  final int complexUUCP;
  CalculateUUCPEvent({
    required this.simpleUUCP,
    required this.averageUUCP,
    required this.complexUUCP
  });
}

class SwitchToUAWEvent extends UseCasePointsEvent{}

class CalculateUAWEvent extends UseCasePointsEvent{
  final int simpleActors;
  final int averageActors;
  final int complexActors;
  CalculateUAWEvent({
    required this.simpleActors,
    required this.averageActors,
    required this.complexActors
});
}

class SwitchToTCFEvent extends UseCasePointsEvent{}

class CalculateTCFEvent extends UseCasePointsEvent{}

class SwitchToECFEvent extends UseCasePointsEvent{}

class CalculateECFEvent extends UseCasePointsEvent{}

class SwitchToUCPEvent extends UseCasePointsEvent{}

class CalculateUCPEvent extends UseCasePointsEvent{}
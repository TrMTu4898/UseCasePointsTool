part of 'use_case_points_bloc.dart';
abstract class UseCasePointsState{}
//trang thai bat dau
class UseCasePointsInitialState extends UseCasePointsState{}

//tinh uucp
class UseCasePointsUUCPCalculatingState extends UseCasePointsState{}

class UseCasePointsUUCPSuccessState extends UseCasePointsState{
  final double uucp;
  UseCasePointsUUCPSuccessState({required this.uucp});
}

//tinh uaw
class UseCasePointsUAWCalculatingState extends UseCasePointsState{}

class UseCasePointsUAWSuccessState extends UseCasePointsState{
  final double uaw;
  UseCasePointsUAWSuccessState({required this.uaw});
}

//tinh tcf
class UseCasePointsTCFCalculatingState extends UseCasePointsState{}

class UseCasePointsTCFSuccessState extends UseCasePointsState{}

//tinh ecf
class UseCasePointsECFCalculatingState extends UseCasePointsState{}

class UseCasePointsECFSuccessState extends UseCasePointsState{}

//tinh ucp
class UseCasePointsUCPCalculatingState extends UseCasePointsState{}

class UseCasePointsUCPSuccessState extends UseCasePointsState{}
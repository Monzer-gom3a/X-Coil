part of 'OnePhase_Add_cubit.dart';

abstract class AddOnePhaseState {}

class AddCoilInitial extends AddOnePhaseState {}

class AddCoilLoading extends AddOnePhaseState {}

class AddCoilSuccess extends AddOnePhaseState {}

class AddCoilFailure extends AddOnePhaseState {
  final String errMessage;

  AddCoilFailure(this.errMessage);
}

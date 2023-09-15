part of 'OnePhase_cubit.dart';

abstract class OnePhaseState {}

class AddCoilInitial extends OnePhaseState {}

class AddCoilLoading extends OnePhaseState {}

class AddCoilSuccess extends OnePhaseState {}

class DataRestoredFromDB extends OnePhaseState {}

class DBHasData extends OnePhaseState {}

class DBHasNoData extends OnePhaseState {}


class AddCoilFailure extends OnePhaseState {
  final String errMessage;

  AddCoilFailure(this.errMessage);
}

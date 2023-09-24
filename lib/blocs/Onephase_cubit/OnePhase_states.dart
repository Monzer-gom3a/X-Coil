part of 'OnePhase_cubit.dart';

abstract class OnePhaseState {}

class AddCoilInitial extends OnePhaseState {}

class AddCoilLoading extends OnePhaseState {}

class AddCoilLocalSuccess extends OnePhaseState {}

class AddCoilFailure extends OnePhaseState {
  final String errMessage;

  AddCoilFailure(this.errMessage);
}

class DataRestoredFromDB extends OnePhaseState {}

class DBHasData extends OnePhaseState {}

class DBHasNoData extends OnePhaseState {}

class DataHadBeenSavedRecntly extends OnePhaseState {}




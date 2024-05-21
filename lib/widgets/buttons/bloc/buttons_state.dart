import 'package:equatable/equatable.dart';

abstract class ButtonsState extends Equatable {
  const ButtonsState();

  @override
  List<Object> get props => [];
}

class ButtonsInitial extends ButtonsState {}

class RateAppSuccess extends ButtonsState {}

class ShareAppSuccess extends ButtonsState {}

class ContactUsSuccess extends ButtonsState {}

class ButtonsFailure extends ButtonsState {
  final String error;

  const ButtonsFailure(this.error);

  @override
  List<Object> get props => [error];
}
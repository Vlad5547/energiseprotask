import 'package:equatable/equatable.dart';

abstract class ButtonsEvent extends Equatable {
  const ButtonsEvent();

  @override
  List<Object> get props => [];
}

class RateAppRequested extends ButtonsEvent {}

class ShareAppRequested extends ButtonsEvent {}

class ContactUsRequested extends ButtonsEvent {}
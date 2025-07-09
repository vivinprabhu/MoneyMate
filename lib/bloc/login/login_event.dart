import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginButtonClicked extends LoginEvent {
  final String email;
  final String password;

  LoginButtonClicked({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

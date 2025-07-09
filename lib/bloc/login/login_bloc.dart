import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymate/bloc/login/login_event.dart';
import 'package:moneymate/bloc/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonClicked>(_onLoginButtonClicked);
  }

  Future<void> _onLoginButtonClicked(
    LoginButtonClicked event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    await Future.delayed(Duration(seconds: 2));

    if (event.email == 'admin' && event.password == 'admin123') {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure(error: 'Invalid email or password'));
    }
  }
}

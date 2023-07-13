import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:vba_crypto_signal/core/data/remote/auth/auth_interface.dart';
import 'package:vba_crypto_signal/core/utils/locator.dart';
import 'package:vba_crypto_signal/models/exception.dart';
import 'package:vba_crypto_signal/models/failure.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    final AuthService authService = locator();
    on<LoginEvent>((event, emit) async {
      if (event is Login) {
        try {
          emit(LoginLoading());
          var response = await authService.login(
              email: event.email, password: event.password);
          if (response["message"] == "success") {
            emit(LoginSuccessful(message: response["message"]));
          } else {
            emit(
              LoginError(
                failure: UserDefinedException("Error", "Incorrect Details"),
              ),
            );
          }
        } on Failure catch (failure) {
          emit(LoginError(failure: failure));
        }
      }
    });
  }
}

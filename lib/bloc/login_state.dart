part of 'login_bloc.dart';
abstract class LoginState extends Equatable{
  const LoginState();

  @override
  List<Object> get props => [];
}



class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccessful extends LoginState {
  final String message;
  LoginSuccessful({required this.message});
}

class LoginError extends LoginState {
  final Failure failure;
  LoginError({required this.failure});
}

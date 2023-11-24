part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginWithPasswordEvent extends AuthEvent {
  final String? mobile;
  final String? password;

  LoginWithPasswordEvent(this.mobile, this.password);
}

class LogOutEvent extends AuthEvent {}

class CheckForPreferenceEvent extends AuthEvent {}

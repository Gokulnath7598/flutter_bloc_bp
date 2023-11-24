part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginLoaded extends AuthState {
  late final AppUser? user;

  LoginLoaded(this.user);
}

class LogoutLoading extends AuthState {}

class LogoutLoaded extends AuthState {}

class CheckForPreferenceLoading extends AuthState {}

class CheckForPreferenceLoaded extends AuthState {
  late final AppUser? user;

  CheckForPreferenceLoaded(this.user);
}

class AuthError extends AuthState {
  late final String errorMessage;

  AuthError(this.errorMessage);
}

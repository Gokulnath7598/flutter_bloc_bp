import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_bp/models/app_user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/preference_client.dart';
import '../../data/services/auth/auth_service.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authService = AuthService();

  AuthBloc() : super(AuthInitial()) {
    on<CheckForPreferenceEvent>(_checkForPreference);
    on<LoginWithPasswordEvent>(_loginWithPassword);
    on<LogOutEvent>(_logOut);
  }

  FutureOr<void> _checkForPreference(
      AuthEvent event, Emitter<AuthState> emit) async {
    if (event is CheckForPreferenceEvent) {
      emit(CheckForPreferenceLoading());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      AppUser? user = PreferencesClient(prefs: prefs).getUser();
      emit(CheckForPreferenceLoaded(user));
    }
  }

  FutureOr<void> _loginWithPassword(
      AuthEvent event, Emitter<AuthState> emit) async {
    if (event is LoginWithPasswordEvent) {
      emit(LoginLoading());
      try {
        final Map<String, dynamic> objToApi = <String, dynamic>{
          'customer': <String, String>{
            'mobile': event.mobile ?? '',
            'password': event.password ?? '',
            'grant_type': 'password'
          }
        };
        final Map<String, dynamic>? response =
            await authService.loginWithPassword(objToApi: objToApi);
        final AppUser? user = response?['customer'];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        PreferencesClient(prefs: prefs).saveUser(appUser: user);
        emit(LoginLoaded(user));
      } on DioException catch (e) {
        emit(AuthError(e.response?.data['error'] ?? 'Something Went Wrong'));
        debugPrint('============ login error block ========== $e');
        return;
      } catch (e) {
        emit(AuthError('$e'));
        debugPrint('============ login catch block ========== $e');
      }
    }
  }

  FutureOr<void> _logOut(AuthEvent event, Emitter<AuthState> emit) async {
    if (event is LogOutEvent) {
      emit(LogoutLoading());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      PreferencesClient(prefs: prefs).saveUser(appUser: null);
      emit(LogoutLoaded());
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_bp/bloc/news/news_bloc.dart';
import 'package:flutter_bloc_bp/views/home/home_page.dart';
import 'package:flutter_bloc_bp/views/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_bp/views/loader/app_loader.dart';

import '../bloc/auth/auth_bloc.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  late AuthBloc _authBloc;

  @override
  void initState() {
    _authBloc = BlocProvider.of(context);
    _authBloc.add(CheckForPreferenceEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => current is CheckForPreferenceLoaded||current is CheckForPreferenceLoading,
        builder: (context, state) {
          if (state is CheckForPreferenceLoading) {
            return const AppLoader();
          }
          if (state is CheckForPreferenceLoaded) {
            if (state.user != null) {
              return BlocProvider<NewsBloc>.value(
                  value: NewsBloc(),
                  child: HomePage(user: state.user));
            } else {
              return const LoginPage();
            }
          } else {
            return const AppLoader();
          }
        });
  }
}

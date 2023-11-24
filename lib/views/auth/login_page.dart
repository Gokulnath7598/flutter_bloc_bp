import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_bp/bloc/auth/auth_bloc.dart';
import 'package:flutter_bloc_bp/views/home/home_page.dart';

import '../../bloc/news/news_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AuthBloc _authBloc;

  @override
  void initState() {
    _authBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SafeArea(
          child: Column(children: [
        Expanded(
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: BlocConsumer<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        return const Text('Logging in...');
                      } else {
                        return ElevatedButton(
                            onPressed: () {
                              _authBloc.add(LoginWithPasswordEvent(
                                  '7598573658', 'Password@123'));
                            },
                            child: const Text('Login'));
                      }
                    },
                    listener: (BuildContext context, AuthState state) {
                      if (state is LoginLoaded) {
                        if (state.user != null) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => BlocProvider<NewsBloc>.value(
                                  value: NewsBloc(),
                                  child: HomePage(user: state.user),
                                ),
                              ));
                        }
                      } else if (state is AuthError) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.errorMessage),
                        ));
                      }
                    },
                  ),
                ))),
      ])),
      // globalLoader(authViewModel.isLoading)
    ]));
  }
}

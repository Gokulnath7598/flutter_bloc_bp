import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_bp/views/auth/login_page.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../models/app_user.dart';

class HomePage extends StatefulWidget {
  final AppUser? user;

  const HomePage({super.key, required this.user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AuthBloc _authBloc;

  @override
  void initState() {
    _authBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar:
              AppBar(title: Text('Welcome ${widget.user?.firstName ?? ''}')),
          body: Center(
            child: Column(
              children: [
                const Spacer(),
                (state is LogoutLoading)
                    ? const Text('Logging out...')
                    : ElevatedButton(
                        onPressed: () {
                          _authBloc.add(LogOutEvent());
                        },
                        child: const Text('Logout')),
                const Spacer(),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, AuthState state) {
        if (state is LogoutLoaded) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider<AuthBloc>.value(
                  value: AuthBloc(),
                  child: const LoginPage(),
                ),
              ));
        }
      },
    );
  }
}

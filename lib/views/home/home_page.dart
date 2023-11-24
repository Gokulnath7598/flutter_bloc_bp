import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_bp/bloc/news/news_bloc.dart';
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
  late NewsBloc _newsBloc;

  @override
  void initState() {
    _authBloc = BlocProvider.of(context);
    _newsBloc = BlocProvider.of(context);
    _newsBloc.add(GetAllNews());
    _newsBloc.add(GetCategoryNews());
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
                BlocBuilder<NewsBloc, NewsState>(
                buildWhen: (previous, current) => current is AllNewsLoading||current is AllNewsLoaded,
                    builder: (context, state) {
                      return
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        height: 300,
                        child: (state is AllNewsLoaded) ? ListView.builder(
                          itemCount: state.allNews?.articles?.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext buildContext, int index) {
                            if(state.allNews?.articles?[index].urlToImage == null && state.allNews?.articles?[index].content == null){
                              Container();
                            }else{
                              return Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                                child: SizedBox(
                                  width: 200,
                                  child: Column(
                                    children: [
                                      state.allNews?.articles?[index].urlToImage != null ?
                                      Image.network(
                                        state.allNews?.articles?[index].urlToImage ?? '',
                                        height: 100,
                                      ):const Center(child: SizedBox(height: 100,child: Text('No Image'),)),
                                      Text(state.allNews?.articles?[index].content ?? '')
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        ):const Center(child: Text('All List Loading...')),
                      );
                    }),
                const Spacer(),
                BlocBuilder<NewsBloc, NewsState>(
                    buildWhen: (previous, current) => current is CategoryNewsLoading||current is CategoryNewsLoaded,
                    builder: (context, state) {
                      return
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 300,
                          child: (state is CategoryNewsLoaded) ? ListView.builder(
                            itemCount: state.categoryNews?.articles?.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext buildContext, int index) {
                              if(state.categoryNews?.articles?[index].urlToImage == null && state.categoryNews?.articles?[index].content == null){
                                Container();
                              }else{
                                return Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: SizedBox(
                                    width: 200,
                                    child: Column(
                                      children: [
                                        state.categoryNews?.articles?[index].urlToImage != null ?
                                        Image.network(
                                          state.categoryNews?.articles?[index].urlToImage ?? '',
                                          height: 100,
                                        ):const Center(child: SizedBox(height: 100,child: Text('No Image'),)),
                                        Text(state.categoryNews?.articles?[index].content ?? '')
                                      ],
                                    ),
                                  ),
                                );
                              }
                            },
                          ):const Center(child: Text('Category List Loading...')),
                        );
                    }),
                const Spacer(),
                (state is LogoutLoading)
                    ? const Text('Logging out...')
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _newsBloc.add(GetAllNews());
                            },
                            child: const Text('Fetch All')),
                        ElevatedButton(
                            onPressed: () {
                              _newsBloc.add(GetCategoryNews());
                            },
                            child: const Text('Fetch Business')),
                        ElevatedButton(
                            onPressed: () {
                              _authBloc.add(LogOutEvent());
                            },
                            child: const Text('Logout')),
                      ],
                    ),
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

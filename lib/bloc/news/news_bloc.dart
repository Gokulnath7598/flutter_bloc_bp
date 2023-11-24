import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../data/services/news/news_service.dart';
import '../../models/news_list/news_list.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {

  final newsService = NewsService();

  NewsBloc() : super(NewsInitial()) {
    on<GetAllNews>(_getAllNews);
    on<GetCategoryNews>(_getCategoryNews);
  }

  FutureOr<void> _getAllNews(NewsEvent event, Emitter<NewsState> emit) async {
    if(event is GetAllNews) {
      emit(AllNewsLoading());
      try {
        final Map<String, String> query = <String, String>{
          'apiKey': '7d635b11b2094bec87104c167922ea1e',
          'country': 'in'
        };
        final NewsList? newsListMain =
        await newsService.getNewsList(queryToApi: query);
        emit(AllNewsLoaded(newsListMain));
      } on DioException catch (e) {
        emit(NewsPageError(e.response?.data['error'] ?? 'Something Went Wrong'));
        debugPrint('============ news error block ========== $e');
        return;
      } catch (e) {
        emit(NewsPageError('$e'));
        debugPrint('============ news catch block ========== $e');
      }
    }
  }

  FutureOr<void> _getCategoryNews(NewsEvent event, Emitter<NewsState> emit) async {
    if(event is GetCategoryNews) {
      emit(CategoryNewsLoading());
      try {
        final Map<String, String> query = <String, String>{
          'apiKey': '7d635b11b2094bec87104c167922ea1e',
          'country': 'in',
          'category': 'business'
        };
        final NewsList? newsListMain =
        await newsService.getNewsList(queryToApi: query);
        emit(CategoryNewsLoaded(newsListMain));
      } on DioException catch (e) {
        emit(NewsPageError(e.response?.data['error'] ?? 'Something Went Wrong'));
        debugPrint('============ category error block ========== $e');
        return;
      } catch (e) {
        emit(NewsPageError('$e'));
        debugPrint('============ category catch block ========== $e');
      }
    }
  }
}

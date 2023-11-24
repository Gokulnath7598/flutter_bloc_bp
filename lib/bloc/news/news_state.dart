part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class AllNewsLoading extends NewsState {}

class AllNewsLoaded extends NewsState {
  final NewsList? allNews;
  AllNewsLoaded(this.allNews);
}

class CategoryNewsLoading extends NewsState {}

class CategoryNewsLoaded extends NewsState {
  final NewsList? categoryNews;
  CategoryNewsLoaded(this.categoryNews);
}

class NewsPageError extends NewsState {
  late final String errorMessage;
  NewsPageError(this.errorMessage);
}

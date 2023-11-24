part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}


class GetAllNews extends NewsEvent {}

class GetCategoryNews extends NewsEvent {}
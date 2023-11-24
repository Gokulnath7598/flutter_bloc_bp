import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_list.g.dart';

abstract class NewsList implements Built<NewsList, NewsListBuilder> {
  factory NewsList(
      [NewsListBuilder Function(NewsListBuilder builder) updates]) = _$NewsList;

  NewsList._();

  String? get status;

  String? get message;

  BuiltList<Article>? get articles;

  static Serializer<NewsList> get serializer => _$newsListSerializer;
}


abstract class Article implements Built<Article, ArticleBuilder> {
  factory Article(
      [ArticleBuilder Function(ArticleBuilder builder) updates]) = _$Article;

  Article._();

  Source? get source;

  String? get author;

  String? get title;
  String? get description;
  String? get url;
  String? get urlToImage;
  String? get content;
  String? get publishedAt;

  static Serializer<Article> get serializer => _$articleSerializer;
}

abstract class Source implements Built<Source, SourceBuilder> {
  factory Source(
      [SourceBuilder Function(SourceBuilder builder) updates]) = _$Source;

  Source._();

  String? get id;

  String? get name;

  BuiltList<Article>? get articles;

  static Serializer<Source> get serializer => _$sourceSerializer;
}
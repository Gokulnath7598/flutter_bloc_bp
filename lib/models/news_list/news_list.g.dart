// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsList> _$newsListSerializer = new _$NewsListSerializer();
Serializer<Article> _$articleSerializer = new _$ArticleSerializer();
Serializer<Source> _$sourceSerializer = new _$SourceSerializer();

class _$NewsListSerializer implements StructuredSerializer<NewsList> {
  @override
  final Iterable<Type> types = const [NewsList, _$NewsList];
  @override
  final String wireName = 'NewsList';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.articles;
    if (value != null) {
      result
        ..add('articles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Article)])));
    }
    return result;
  }

  @override
  NewsList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Article)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object?> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Source)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlToImage;
    if (value != null) {
      result
        ..add('urlToImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'source':
          result.source.replace(serializers.deserialize(value,
              specifiedType: const FullType(Source))! as Source);
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SourceSerializer implements StructuredSerializer<Source> {
  @override
  final Iterable<Type> types = const [Source, _$Source];
  @override
  final String wireName = 'Source';

  @override
  Iterable<Object?> serialize(Serializers serializers, Source object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.articles;
    if (value != null) {
      result
        ..add('articles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Article)])));
    }
    return result;
  }

  @override
  Source deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Article)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NewsList extends NewsList {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final BuiltList<Article>? articles;

  factory _$NewsList([void Function(NewsListBuilder)? updates]) =>
      (new NewsListBuilder()..update(updates))._build();

  _$NewsList._({this.status, this.message, this.articles}) : super._();

  @override
  NewsList rebuild(void Function(NewsListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsListBuilder toBuilder() => new NewsListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsList &&
        status == other.status &&
        message == other.message &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, articles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsList')
          ..add('status', status)
          ..add('message', message)
          ..add('articles', articles))
        .toString();
  }
}

class NewsListBuilder implements Builder<NewsList, NewsListBuilder> {
  _$NewsList? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Article>? _articles;
  ListBuilder<Article> get articles =>
      _$this._articles ??= new ListBuilder<Article>();
  set articles(ListBuilder<Article>? articles) => _$this._articles = articles;

  NewsListBuilder();

  NewsListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _articles = $v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsList;
  }

  @override
  void update(void Function(NewsListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsList build() => _build();

  _$NewsList _build() {
    _$NewsList _$result;
    try {
      _$result = _$v ??
          new _$NewsList._(
              status: status, message: message, articles: _articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewsList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Article extends Article {
  @override
  final Source? source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? content;
  @override
  final String? publishedAt;

  factory _$Article([void Function(ArticleBuilder)? updates]) =>
      (new ArticleBuilder()..update(updates))._build();

  _$Article._(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.content,
      this.publishedAt})
      : super._();

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        source == other.source &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        content == other.content &&
        publishedAt == other.publishedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, urlToImage.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Article')
          ..add('source', source)
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('content', content)
          ..add('publishedAt', publishedAt))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article? _$v;

  SourceBuilder? _source;
  SourceBuilder get source => _$this._source ??= new SourceBuilder();
  set source(SourceBuilder? source) => _$this._source = source;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _urlToImage;
  String? get urlToImage => _$this._urlToImage;
  set urlToImage(String? urlToImage) => _$this._urlToImage = urlToImage;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  ArticleBuilder();

  ArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source?.toBuilder();
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _url = $v.url;
      _urlToImage = $v.urlToImage;
      _content = $v.content;
      _publishedAt = $v.publishedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Article build() => _build();

  _$Article _build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              source: _source?.build(),
              author: author,
              title: title,
              description: description,
              url: url,
              urlToImage: urlToImage,
              content: content,
              publishedAt: publishedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source';
        _source?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Source extends Source {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BuiltList<Article>? articles;

  factory _$Source([void Function(SourceBuilder)? updates]) =>
      (new SourceBuilder()..update(updates))._build();

  _$Source._({this.id, this.name, this.articles}) : super._();

  @override
  Source rebuild(void Function(SourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceBuilder toBuilder() => new SourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Source &&
        id == other.id &&
        name == other.name &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, articles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Source')
          ..add('id', id)
          ..add('name', name)
          ..add('articles', articles))
        .toString();
  }
}

class SourceBuilder implements Builder<Source, SourceBuilder> {
  _$Source? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Article>? _articles;
  ListBuilder<Article> get articles =>
      _$this._articles ??= new ListBuilder<Article>();
  set articles(ListBuilder<Article>? articles) => _$this._articles = articles;

  SourceBuilder();

  SourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _articles = $v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Source other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Source;
  }

  @override
  void update(void Function(SourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Source build() => _build();

  _$Source _build() {
    _$Source _$result;
    try {
      _$result = _$v ??
          new _$Source._(id: id, name: name, articles: _articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Source', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

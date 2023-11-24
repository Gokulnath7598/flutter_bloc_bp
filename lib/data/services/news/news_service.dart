import 'dart:async';


import '../../../models/news_list/news_list.dart';
import '../../api/api_client.dart';
import '../api_service.dart';

class NewsService extends ApiService {
  NewsService() : super();

//************************************ log-in *********************************//
  Future<NewsList?> getNewsList(
      {Map<String, String>? queryToApi}) async {
    final ApiResponse<NewsList> res = await client!.callJsonApi<NewsList>(
      isNews: true,
        method: Method.get,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        path: '/top-headlines',
        queryParams: queryToApi);
    if (res.isSuccess) {
      return res.resData;
    } else {
      throw res.error;
    }
  }
}

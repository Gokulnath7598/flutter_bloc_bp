import 'dart:async';

import '../../../models/api_success.dart';
import '../../api/api_client.dart';
import '../api_service.dart';

class AuthService extends ApiService {
  AuthService() : super();

//************************************ log-in *********************************//
  Future<Map<String, dynamic>?> loginWithPassword(
      {Map<String, dynamic>? objToApi}) async {
    final ApiResponse<ApiSuccess> res = await client!.callJsonApi<ApiSuccess>(
        method: Method.post,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        path: '/user_management/customer/sign_in',
        body: objToApi);
    if (res.isSuccess) {
      return {'customer': res.resData?.user, 'token': res.resData?.token};
    } else {
      throw res.error;
    }
  }
}

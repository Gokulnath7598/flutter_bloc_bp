import 'api_client.dart';

class ApiRoutes {
  static const ApiConfig apiConfig = ApiConfig(
    scheme: 'https',
    host: 'api.uat.velichamgrow.com',
    scope: scope,
  );

  //Scope
  static const String debugScope = '';
  static const String scope = '/api/v1';
}

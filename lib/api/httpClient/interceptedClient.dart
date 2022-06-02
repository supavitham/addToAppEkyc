import 'package:add_to_app_flutter_module/api/httpClient/loggingInterceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

class HttpInterceptedClient {
  Client client = InterceptedClient.build(
    interceptors: [
      LoggingInterceptor(),
    ],
  );
}
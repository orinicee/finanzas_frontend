import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/api_config.dart';
import 'api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(baseUrl: ApiConfig.baseUrl);
}); 
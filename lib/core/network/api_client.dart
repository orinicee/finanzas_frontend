import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api_config.dart';

class ApiClient {
  final http.Client _client;
  
  ApiClient({http.Client? client}) : _client = client ?? http.Client();

  Future<dynamic> get(String endpoint) async {
    try {
      final url = _buildUrl(endpoint);
      final response = await _client.get(
        url,
        headers: _getHeaders(),
      ).timeout(ApiConfig.timeout);
      
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<dynamic> post(String endpoint, {dynamic body}) async {
    try {
      final url = _buildUrl(endpoint);
      final response = await _client.post(
        url,
        headers: _getHeaders(),
        body: jsonEncode(body),
      ).timeout(ApiConfig.timeout);
      
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Uri _buildUrl(String endpoint) {
    // Si el endpoint es /health, no agregamos la versión
    if (endpoint == ApiConfig.health) {
      return Uri.parse('${ApiConfig.baseUrl}$endpoint');
    }
    // Para todos los demás endpoints, agregamos la versión
    return Uri.parse('${ApiConfig.baseUrl}${ApiConfig.getVersionedEndpoint(endpoint)}');
  }

  Map<String, String> _getHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: response.body,
      );
    }
  }

  Exception _handleError(dynamic error) {
    if (error is ApiException) return error;
    return ApiException(
      statusCode: 500,
      message: 'Error de conexión: ${error.toString()}',
    );
  }
}

class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException({required this.statusCode, required this.message});

  @override
  String toString() => 'ApiException: [$statusCode] $message';
} 
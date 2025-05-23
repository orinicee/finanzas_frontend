import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api_config.dart';

class ApiClient {
  final String baseUrl;
  final http.Client _client;
  String? _authToken;
  
  ApiClient({
    required this.baseUrl,
    http.Client? client,
  }) : _client = client ?? http.Client();

  void setAuthToken(String token) {
    _authToken = token;
  }

  void clearAuthToken() {
    _authToken = null;
  }

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

  Future<dynamic> put(String endpoint, {dynamic body}) async {
    try {
      final url = _buildUrl(endpoint);
      final response = await _client.put(
        url,
        headers: _getHeaders(),
        body: jsonEncode(body),
      ).timeout(ApiConfig.timeout);
      
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<dynamic> delete(String endpoint, {dynamic body}) async {
    try {
      final url = _buildUrl(endpoint);
      final response = await _client.delete(
        url,
        headers: _getHeaders(),
        body: body != null ? jsonEncode(body) : null,
      ).timeout(ApiConfig.timeout);
      
      return _handleResponse(response);
    } catch (e) {
      throw _handleError(e);
    }
  }

  Uri _buildUrl(String endpoint) {
    // Si el endpoint es /health, no agregamos la versión
    if (endpoint == ApiConfig.health) {
      return Uri.parse('$baseUrl$endpoint');
    }
    // Para todos los demás endpoints, agregamos la versión
    return Uri.parse('$baseUrl${ApiConfig.getVersionedEndpoint(endpoint)}');
  }

  Map<String, String> _getHeaders() {
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }

    return headers;
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      return jsonDecode(response.body);
    } else {
      throw ApiException(
        statusCode: response.statusCode,
        message: _parseErrorMessage(response),
      );
    }
  }

  String _parseErrorMessage(http.Response response) {
    try {
      final body = jsonDecode(response.body);
      return body['message'] ?? body['error'] ?? response.body;
    } catch (e) {
      return response.body;
    }
  }

  Exception _handleError(dynamic error) {
    if (error is ApiException) return error;
    if (error is http.ClientException) {
      return ApiException(
        statusCode: 0,
        message: 'Error de conexión: ${error.message}',
      );
    }
    return ApiException(
      statusCode: 500,
      message: 'Error inesperado: ${error.toString()}',
    );
  }

  void dispose() {
    _client.close();
  }
}

class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException({required this.statusCode, required this.message});

  @override
  String toString() => 'ApiException: [$statusCode] $message';
} 
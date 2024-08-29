import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  // GET request (Read)
  Future<Response<Map<String, dynamic>>> getRequest(String url) async {
    try {
      return await _dio.get<Map<String, dynamic>>(url);
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }

  // POST request (Create)
  Future<Response<Map<String, dynamic>>> postRequest(
    String url,
    Map<String, dynamic> data,
  ) async {
    try {
      return await _dio.post<Map<String, dynamic>>(url, data: data);
    } catch (e) {
      throw Exception('Failed to post data');
    }
  }

  // PUT request (Update)
  Future<Response<Map<String, dynamic>>> putRequest(
    String url,
    Map<String, dynamic> data,
  ) async {
    try {
      return await _dio.put<Map<String, dynamic>>(url, data: data);
    } catch (e) {
      throw Exception('Failed to update data');
    }
  }

  // DELETE request (Delete)
  Future<Response<Map<String, dynamic>>> deleteRequest(String url) async {
    try {
      return await _dio.delete<Map<String, dynamic>>(url);
    } catch (e) {
      throw Exception('Failed to delete data');
    }
  }
}

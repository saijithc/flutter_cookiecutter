import 'package:cookiecutter_flutter/models/user_model.dart';
import 'package:cookiecutter_flutter/services/api_service.dart';

///
class AuthRepository {
  final ApiService _apiService = ApiService();

  ///
  Future<UserModel> login(String email, String password) async {
    final response = await _apiService.postRequest(
      'https://example.com/login',
      {'email': email, 'password': password},
    );

    final data = response.data!;

    return UserModel.fromJson(data);
  }
}

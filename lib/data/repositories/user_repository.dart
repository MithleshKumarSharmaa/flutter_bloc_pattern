import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:newsapp/core/utils/constants.dart';
import 'package:newsapp/data/models/user_model.dart';

class UserRepository {
  Future<UserModel> fetchUser(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$id'));

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }
}

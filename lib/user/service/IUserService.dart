import 'package:dio/dio.dart';
import 'package:rest_api_example/user/model/user_model.dart';

abstract class IUserService {
  final Dio dio;

  IUserService(this.dio);

  Future<List<UserModel>> fetchAllData();
}

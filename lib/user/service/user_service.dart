import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rest_api_example/user/model/user_model.dart';

import 'IUserService.dart';

part 'user_service_enum.dart';
part 'user_request_enum.dart';

class UserService extends IUserService {
  UserService(Dio dio) : super(dio);

  @override
  Future<List<UserModel>> fetchAllData() async {
    final String appId='app-id';
    final String key='60b13322d5bbfe8dc33e0d84';

    final response = await dio.request(_UserServiceEnum.DATA.rawValue,
        options: Options(
            headers: {appId: key}, method: _UserRequestEnum.GET.rawValue));
    if (response.statusCode == HttpStatus.ok) {

      final data = response.data['data'];
      
      if (data is List)
        return data.map((e) => UserModel.fromJson(e)).toList();
    }

    return [];
  }
}

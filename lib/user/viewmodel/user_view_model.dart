import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rest_api_example/user/model/user_model.dart';

import '../../core/network/network_manager.dart';
import '../service/IUserService.dart';
import '../service/user_service.dart';

part 'user_view_model.g.dart';

class UserModelView = _UserModelViewBase with _$UserModelView;

abstract class _UserModelViewBase with Store {
  BuildContext? context;
  late IUserService userService;

  @observable
  List<UserModel> dataList = [];

  @observable
  LifeState lifeState = LifeState.IDDLE;
  _UserModelViewBase({this.context}) {
    userService = UserService(NetWorkManager.inistance.dio);
  }

  void setContex(BuildContext? context) {
    this.context = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    lifeState = LifeState.LOADING;
    dataList = await userService.fetchAllData();
    lifeState = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}

import 'user_model.dart';

class DataModel {
  List<UserModel>? data;
  int? total;
  int? page;
  int? limit;
  int? offset;

  DataModel({this.data, this.total, this.page, this.limit, this.offset});

 factory DataModel.fromJson(Map<String, dynamic> json) {
    var list=json['data'] as List;
 
List<UserModel> userLisit=list.map((e) => UserModel.fromJson(e)).toList();

    return DataModel(
      limit:  json['limit'],
      offset: json['offset'],
      total: json['total'],
      page: json['page'],
      data: userLisit
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    return data;
  }

 static List<UserModel>? parseUserModel(json) {
    var list=json['data'] as List;
    List<UserModel> userList=list.map((e) => UserModel.fromJson(e)).toList();
    return userList;
  }
}
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? id;
  String? lastName;
  String? firstName;
  String? email;
  String? title;
  String? picture;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UserModelToJson(this);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, lastName: $lastName, firstName: $firstName, email: $email, title: $title, picture: $picture)';
  }
}

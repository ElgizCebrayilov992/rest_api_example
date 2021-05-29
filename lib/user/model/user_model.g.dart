// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel()
    ..id = json['id'] as String?
    ..lastName = json['lastName'] as String?
    ..firstName = json['firstName'] as String?
    ..email = json['email'] as String?
    ..title = json['title'] as String?
    ..picture = json['picture'] as String?;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'email': instance.email,
      'title': instance.title,
      'picture': instance.picture,
    };

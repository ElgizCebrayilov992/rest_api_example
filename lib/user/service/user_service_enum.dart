part of 'user_service.dart';

enum _UserServiceEnum{
  DATA,
}
extension UserServiceEnumExtension on _UserServiceEnum{

 String get rawValue{
    switch (this) {
    case _UserServiceEnum.DATA:
      
      return 'data/api/user';
   
  }
 }
}
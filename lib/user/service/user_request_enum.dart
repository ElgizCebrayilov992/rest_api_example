part of 'user_service.dart';

enum _UserRequestEnum{
  GET,
  POST,

}
extension UserRequestEnumExtension on _UserRequestEnum{

 String get rawValue{
    switch (this) {
    case _UserRequestEnum.GET:
      
      return 'GET';
       case _UserRequestEnum.POST:
      
      return 'POST';
  }
 }
}
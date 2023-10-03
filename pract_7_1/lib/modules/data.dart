class UserVariables {
  String name = '';
  String phoneNumber = '';
  String email = '';
  String message = '';
  String country = '';

  static final UserVariables _singleton = UserVariables._internal();

  factory UserVariables() {
    return _singleton;
  }

  UserVariables._internal();
}
part of 'auth_bloc.dart';

abstract class AuthState{
  final UserInfo userInfo;

  AuthState(this.userInfo);
}

class Authorized extends AuthState{
  Authorized(UserInfo userInfo) : super(userInfo);
}

class UnAuthorized extends AuthState{
  UnAuthorized() : super(null);
}



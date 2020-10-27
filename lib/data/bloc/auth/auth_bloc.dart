import 'dart:developer' as developer;
import 'package:cubit_app_flow/common/app_session.dart';
import 'package:cubit_app_flow/constant/preference_key.dart';
import 'package:cubit_app_flow/data/model/models.dart';
import 'package:cubit_app_flow/data/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';


class AuthBloc extends Cubit<AuthState>{
  static const TAG = 'AuthBloc';
  AuthRepository _authRepository;

  AuthBloc(state, this._authRepository) : super(state);

  Future login(String username, String password) async {
    final user = await _authRepository.signIn(userName: username, password: password);
    AppSession().prefs.setBool(PreferenceKey.isLogin, true);
    emit(Authorized(user));
  }

  Future updateInfo(UserInfo user) async {
    emit(Authorized(user));
  }

  void logout() {
    print('logout');
    if (state is Authorized) {
      emit(UnAuthorized());
    }
  }
}
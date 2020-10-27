import 'dart:developer' as developer;
import 'package:cubit_app_flow/common/app_session.dart';
import 'package:cubit_app_flow/constant/preference_key.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';


class ThemeBloc extends Cubit<ThemeState>{
  static const TAG = 'AuthBloc';

  ThemeBloc(state) : super(state);

  Future changeTheme(bool isThemeLight) async {
    if (isThemeLight) {
      AppSession().prefs.setBool(PreferenceKey.isThemeLight, true);
      emit(ThemeLight());
    } else {
      AppSession().prefs.setBool(PreferenceKey.isThemeLight, true);
      emit(ThemeDark());
    }

  }
}
import 'package:cubit_app_flow/application.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/app_session.dart';
import 'constant/preference_key.dart';
import 'data/bloc/auth/theme/theme_bloc.dart';
import 'data/repositories/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSession().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AuthRepository authRepository = AuthRepository();
  bool isThemeLight = false;

  loadTheme() {
    if (AppSession().prefs.containsKey(PreferenceKey.isThemeLight)) {
      isThemeLight = AppSession().prefs.getBool(PreferenceKey.isThemeLight);
    } else {
      AppSession().prefs.setBool(PreferenceKey.isThemeLight, false);
    }
  }

  @override
  Widget build(BuildContext context) {
    loadTheme();
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(UnAuthorized(), authRepository),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(isThemeLight ? ThemeLight() : ThemeDark()) ,
        )
      ],
      child: Application(),
    );
  }
}


import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/bloc/auth/theme/theme_bloc.dart';
import 'pages/authorization_state_page.dart';


class Application extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc,ThemeState>(
      listener: (context,state) {
        // listen
        debugPrint('listen Application');
      },
      builder: (context,state) {
        debugPrint('render Application $state');
        return MaterialApp(
          home: AuthorizationStatePage(),
          theme: state.isLightTheme ? ThemeData.light() : ThemeData.dark(),
          themeMode: state.isLightTheme ? ThemeMode.light : ThemeMode.dark,
        );
      },
    );
  }
}

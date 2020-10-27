part of 'theme_bloc.dart';

abstract class ThemeState{
  final bool isLightTheme;

  ThemeState(this.isLightTheme);
}

class ThemeLight extends ThemeState{
  ThemeLight() : super(true);
}

class ThemeDark extends ThemeState{
  ThemeDark() : super(false);
}



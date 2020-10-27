part of 'theme_bloc.dart';

abstract class ThemeState{
  bool isLightTheme;

  ThemeState(this.isLightTheme);
}

class ThemeLight extends ThemeState{
  ThemeLight() : super(true);
}

class ThemeDark extends ThemeState{
  ThemeDark() : super(false);
}



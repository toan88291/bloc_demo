import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/account_info_widget.dart';
import 'widget/theme_option_widget.dart';

class ProfileEditPage extends StatefulWidget {
  static const ROUTE_NAME = 'ProfileEditPage';
  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  static const TAG = 'ProfileEditPage';
  GlobalKey<FormState> formEdit = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AccountInfoWidget(),
        ThemeOptionWidget(),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text('Edit Info'),
          onTap: () {
            Navigator.pushNamed(context, ProfileEditPage.ROUTE_NAME);
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout App'),
          onTap: () {
            context.bloc<AuthBloc>().logout();
          },
        )
      ],
    );
  }
}

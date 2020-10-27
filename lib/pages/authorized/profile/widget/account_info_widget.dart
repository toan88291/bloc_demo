import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_app_flow/data/model/models.dart';

class AccountInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context,state) {
        //
      },
      builder: (context, state){
        UserInfo data = state.userInfo;
        return Container(
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text('${data.fullName}'),
            subtitle: Text('${data.email}'),
          ),
        );
      },
    );
  }
}

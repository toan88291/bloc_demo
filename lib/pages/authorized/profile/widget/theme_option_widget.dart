import 'package:cubit_app_flow/data/bloc/auth/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeBloc,ThemeState>(
      listener: (context,state) {

      },
      builder: (context,state) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Icon(Icons.color_lens,color: Colors.grey[600],),
              const SizedBox(width: 16,),
              SizedBox(
                width: 80,
                child: Switch(
                  value: state.isLightTheme,
                  onChanged: (value){
                    context.bloc<ThemeBloc>().changeTheme(!state.isLightTheme);
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
              ),
            ],

          ),
        );
      },
    );
  }
}

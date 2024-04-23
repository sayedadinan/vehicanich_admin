import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/closingtime_blocs/bloc/closingtime_bloc.dart';
import 'package:vehicanich_shop/blocs/registration_blocs/registration_button_bloc/bloc/registration_bloc.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';

class ClosingtimeErrorText extends StatelessWidget {
  const ClosingtimeErrorText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClosingtimeBloc, ClosingtimeState>(
      builder: (context, state) {
        if (state.closingTime.isEmpty &&
            BlocProvider.of<RegistrationBloc>(context, listen: true)
                .state
                .buttonpressed) {
          return Container(
            padding: const EdgeInsets.only(left: 30, top: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Please choose a time',
              style: TextStyle(
                color: Appallcolor().emergencybuttoncolor,
                fontSize: 16,
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
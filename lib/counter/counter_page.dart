/*
This page is responsible for providing CounterCubit to CounterView using BlocProvider.
can use BlocListener to listen to any change in state and take action accordingly.
 */

import 'package:bloc_arch_flutter/counter/counter_cubit.dart';
import 'package:bloc_arch_flutter/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          if (state == 5) {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  content: Text("Counter clicked 5 times!"),
                );
              },
            );
          }
        },
        child: const CounterView(),
      ),
    );
  }
}

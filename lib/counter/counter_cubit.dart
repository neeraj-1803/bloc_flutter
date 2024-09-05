/*
  CUBIT: A Cubit is a class which extends BlocBase and can be extended to manage any type of state.
  A Cubit can expose functions which can be invoked to trigger state changes.
*/

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);
  //increment the counter
  void increment() => emit(state + 1);
  //decrement the counter
  void decrement() => emit(state - 1);
}

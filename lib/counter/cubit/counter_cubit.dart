import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // reset state
  void clear() => emit(state - state);

  // add 1 to the current state
  void increment() => emit(state + 1);

  // subtract 1 from the current state
  void decrement() => emit(state - 1);
}

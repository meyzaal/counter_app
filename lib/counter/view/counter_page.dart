import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/counter/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
    // return MultiBlocProvider(providers: [
    //   BlocProvider(create: (_) => CounterCubit()),
    //   BlocProvider(create: (_) => ThemeCubit())
    // ], child: const CounterPage());
  }
}

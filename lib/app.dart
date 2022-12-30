import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/counter/counter.dart';
import 'package:flutter_learn_bloc/counter/cubit/theme_cubit.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(builder: (context, state) {
      context.read<ThemeCubit>().themeService();

      return MaterialApp(
        home: const CounterPage(),
        debugShowCheckedModeBanner: false,
        theme: state
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(useMaterial3: true),
      );
    });
  }
}

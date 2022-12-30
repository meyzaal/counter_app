import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/counter/counter.dart';
import 'package:flutter_learn_bloc/counter/cubit/theme_cubit.dart';

class CounterApp extends StatelessWidget {
  final bool currentTheme;

  const CounterApp({super.key, required this.currentTheme});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool?>(builder: (context, state) {
      context.read<ThemeCubit>().onThemeChange();

      return MaterialApp(
          home: const CounterPage(),
          debugShowCheckedModeBanner: false,
          theme: (state ?? currentTheme)
              ? ThemeData.dark(useMaterial3: true)
              : ThemeData.light(useMaterial3: true));
    });
  }
}

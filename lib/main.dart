import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/app.dart';
import 'package:flutter_learn_bloc/counter/cubit/theme_cubit.dart';
import 'package:flutter_learn_bloc/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();

  WidgetsFlutterBinding.ensureInitialized();

  // Get current theme
  Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
  bool currentTheme = brightness == Brightness.dark;

  runApp(BlocProvider(
    create: (_) => ThemeCubit(),
    child: CounterApp(
      currentTheme: currentTheme,
    ),
  ));
}

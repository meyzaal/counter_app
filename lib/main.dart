import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_bloc/app.dart';
import 'package:flutter_learn_bloc/counter/cubit/theme_cubit.dart';
import 'package:flutter_learn_bloc/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(BlocProvider(
    create: (_) => ThemeCubit(),
    child: const CounterApp(),
  ));
}

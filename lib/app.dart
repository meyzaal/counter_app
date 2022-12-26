import 'package:flutter/material.dart';
import 'package:flutter_learn_bloc/counter/counter.dart';

class CounterApp extends MaterialApp {
  CounterApp({super.key})
      : super(
          home: const CounterPage(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
        );
}

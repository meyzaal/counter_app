import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);

  final window = WidgetsBinding.instance.window;

  void themeService() {
    // Get current theme
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    emit(brightness == Brightness.dark);

    // This callback is called every time the brightness changes.
    window.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;
      emit(brightness == Brightness.dark);
    };
  }
}

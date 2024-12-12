import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/theme/theme.dart';

/// Events for ThemeBloc
abstract class ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {}

/// States for ThemeBloc
class ThemeState {
  final ThemeData themeData;

  ThemeState({required this.themeData});
}

/// Bloc for Theme Management
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(themeData: AppTheme.lightTheme)) {
    on<ToggleThemeEvent>((event, emit) {
      final isCurrentlyLight = state.themeData == AppTheme.lightTheme;
      emit(ThemeState(
        themeData: isCurrentlyLight ? AppTheme.darkTheme : AppTheme.lightTheme,
      ));
    });
  }
}

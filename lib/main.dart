import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weathery/app.dart';
import 'package:weathery/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatheryApp());
  Bloc.observer = AppBlocObserver();
}

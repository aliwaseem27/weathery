import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/app.dart';
import 'package:weathery/bloc_observer.dart';
import 'package:weathery/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  runApp(WeatheryApp());
  Bloc.observer = AppBlocObserver();
}

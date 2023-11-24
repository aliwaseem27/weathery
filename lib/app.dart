import 'package:flutter/material.dart';
import 'package:weathery/injection.dart';
import 'package:weathery/routes/app_router.dart';

class WeatheryApp extends StatelessWidget {
  WeatheryApp({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}

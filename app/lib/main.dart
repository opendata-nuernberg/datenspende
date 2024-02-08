import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/builder.dart';
import 'core/navigation.dart';

void main() {
  // https://docs.flutter.dev/testing/errors#errors-caught-by-flutter
  runZonedGuarded(() async {
    runApp(const LoadingApp());
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final container = await build();
    //await Future.delayed(const Duration(milliseconds: 2000));
    runApp(
      ContainerWidget(
        container: container,
        child: const DatenspendeApp(),
      ),
    );
  }, (error, stack) {
    if (kDebugMode) {
      print(error);
      print(stack);
    }
    runApp(ErrorWidget(error));
  });
}

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class DatenspendeApp extends StatelessWidget {
  const DatenspendeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Datenspende',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

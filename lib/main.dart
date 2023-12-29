import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:testing/routes/routes_config.dart';

GetIt getIt = GetIt.instance;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routerConfig: RoutesConfig.router,
    );
  }
}

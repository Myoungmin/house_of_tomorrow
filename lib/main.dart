import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/service/theme_service.dart';
import 'src/view/shopping/shopping_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.themeService.themeData,
      home: const ShoppingView(),
    );
  }
}

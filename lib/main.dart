import 'package:flutter/material.dart';
import 'package:flutter_expense/App/views/bottomnavbar.dart';
import 'package:flutter_expense/App/views/provider/homeprovider.dart';

import 'package:flutter_expense/Auntentication/provider/authprovider.dart';
import 'package:flutter_expense/constants/router.dart';

import 'package:provider/provider.dart';

final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Authprovider()),
        ChangeNotifierProvider(create: (_) => Homeprovider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

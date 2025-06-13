import 'package:flutter_expense/App/views/bottomnavbar.dart';
import 'package:flutter_expense/Auntentication/views/add_trans.dart';
import 'package:flutter_expense/Auntentication/views/loginscreen.dart';
import 'package:flutter_expense/Auntentication/views/manage_balance.dart';
import 'package:flutter_expense/Auntentication/views/profile.dart';
import 'package:flutter_expense/Auntentication/views/setting.dart';
import 'package:flutter_expense/Auntentication/views/signup.dart';
import 'package:flutter_expense/main.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  navigatorKey: navigatorkey,
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const Loginscreen(),
        routes: [
          GoRoute(
            path: '/signup',
            builder: (context, state) => const Signupscreen(),
          ),
        ]),
    GoRoute(
        path: '/home',
        builder: (context, state) => const Bottomnavbar(),
        routes: [
          GoRoute(
            path: 'add',
            builder: (context, state) => const AddTransactions(),
          ),
          GoRoute(
            path: 'manage',
            builder: (context, state) => const ManageBalance(),
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const Settingscreen(),
          )
        ]),
  ],
);

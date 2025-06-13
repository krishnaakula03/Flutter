import 'package:flutter/material.dart';
import 'package:flutter_expense/App/views/homescreen.dart';
import 'package:flutter_expense/Auntentication/views/loginscreen.dart';
import 'package:flutter_expense/Auntentication/views/profile.dart';
import 'package:flutter_expense/constants/images.dart';
import 'package:go_router/go_router.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 38,
            )),
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  Appimages.profileicon,
                  height: 30,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                context.go('/');
              },
              child: Row(
                children: [
                  Image.asset(
                    Appimages.logouticon,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
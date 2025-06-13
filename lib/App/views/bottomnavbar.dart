import 'package:flutter/material.dart';
import 'package:flutter_expense/App/views/homescreen.dart';

import 'package:flutter_expense/Auntentication/views/profile.dart';
import 'package:go_router/go_router.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [const Homescreen(), Profile()];
  void _onitemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 33,
            ),
            onPressed: () {
              context.go('/home/add');
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const AddTransactions()));
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _onitemtapped, items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.home_filled,
            color: Colors.black,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
        ),
      ]),
    );
  }
}

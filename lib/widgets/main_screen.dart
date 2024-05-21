import 'package:flutter/material.dart';

import 'package:test_task/widgets/timer/timer.dart';

import '../generated/l10n.dart';
import 'buttons/view/buttons_screen.dart';
import 'geolocation_map/view/location_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    setState(() {
      if (_selectedTab == index) return;
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).testTask),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).home,
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: S.of(context).geolocation,
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_sharp),
            label: S.of(context).tables,
            backgroundColor: Colors.transparent,
          ),
        ],
        onTap: onSelectTab,
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          TimerPage(),
          LocationPage(),
          ButtonsPage(),
        ],
      ),
    );
  }
}
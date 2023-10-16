import 'package:flutter/material.dart';
import 'package:sihati/pages/homepage.dart';
import 'package:sihati/pages/Permohonan/permohonanAKelahiran.dart';
import 'package:sihati/pages/Permohonan/permohonanAKematian.dart';
import 'package:sihati/pages/profile.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:sihati/pages/statistik.dart';

// ignore: camel_case_types
class menu extends StatefulWidget {
  const menu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _menuState createState() => _menuState();
}

// ignore: camel_case_types
class _menuState extends State<menu> {
  int _selectedTabIndex = 0;

  void _onNaBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Listpage = <Widget>[
      homepage(),
      permohonan(),
      statistik(),
      ProfilePage()
    ];

    final bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Symbols.speed), label: "Dashboard"),
      const BottomNavigationBarItem(
          icon: Icon(Symbols.list_alt_rounded), label: "Permohonan"),
      const BottomNavigationBarItem(
          icon: Icon(Symbols.bar_chart_4_bars_rounded), label: "Statistik"),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
    ];

    final bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xffF4F4F4),
      items: bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.black45,
      selectedItemColor: const Color(0xff3883F3),
      onTap: _onNaBarTapped,
    );

    return Scaffold(
      body: Center(
        child: Listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

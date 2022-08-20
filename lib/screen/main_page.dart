import 'package:flutter/material.dart';
import 'package:sport_app/screen/home_page/home_page.dart';
import 'package:sport_app/screen/other_page/other_page.dart';
import 'package:sport_app/screen/user_info_page/user_info_page.dart';
import 'package:sport_app/theme/color.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);
  static const String routeName = "/main";

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  final pages = [const HomePage(), const UserInfoPage(), const OtherPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: bottomNavigatorBar(),
    );
  }

  BottomNavigationBar bottomNavigatorBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: '首頁',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: '個人資訊',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          label: '其他',
        ),
      ],
      currentIndex: _currentIndex,
      fixedColor: primaryColor,
      onTap: _onItemClick,
    );
  }

  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

import 'package:double_tap_app/tab_bar/tab_bar1.dart';
import 'package:double_tap_app/tab_bar/tab_bar2.dart';
import 'package:double_tap_app/tab_bar_view/tab_bar_view1.dart';
import 'package:double_tap_app/tab_bar_view/tab_bar_view2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoubleTabBar(),
    );
  }
}

class DoubleTabBar extends StatefulWidget {
  @override
  State<DoubleTabBar> createState() => _DoubleTabBarState();
}

class _DoubleTabBarState extends State<DoubleTabBar>
    with TickerProviderStateMixin {
  int tabNumber = 1;
  late TabController? _tabController1;
  late TabController? _tabController2;

  @override
  void initState() {
    super.initState();
    _tabController1 = new TabController(length: 3, vsync: this);
    _tabController2 = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("탭바"),
      ),
      body: Column(
        children: [
          TabBar1(
            tabController1: _tabController1,
            onTabPressed: () {
              setState(() {
                tabNumber = 1;
              });
            },
          ),
          TabBar2(
            tabController2: _tabController2,
            onTabPressed: () {
              setState(() {
                tabNumber = 2;
              });
            },
          ),
          Expanded(
            child: Stack(
              children: [
                if (tabNumber == 1)
                  TabBarView1(tabController1: _tabController1),
                if (tabNumber == 2)
                  TabBarView2(tabController2: _tabController2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

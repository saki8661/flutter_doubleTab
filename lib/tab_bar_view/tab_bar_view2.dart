import 'package:flutter/material.dart';

class TabBarView2 extends StatelessWidget {
  const TabBarView2({
    super.key,
    required TabController? tabController2,
  }) : _tabController2 = tabController2;

  final TabController? _tabController2;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController2,
      children: [
        Container(color: Colors.yellow),
        Container(color: Colors.white),
        Container(color: Colors.pink),
      ],
    );
  }
}

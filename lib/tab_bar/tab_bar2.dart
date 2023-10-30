import 'package:flutter/material.dart';

class TabBar2 extends StatelessWidget {
  const TabBar2({
    required this.onTabPressed,
    required TabController? tabController2,
  }) : _tabController2 = tabController2;

  final TabController? _tabController2;
  final VoidCallback onTabPressed;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController2,
      tabs: [
        Tab(icon: Icon(Icons.directions_car, color: Colors.black)),
        Tab(icon: Icon(Icons.directions_transit, color: Colors.black)),
        Tab(icon: Icon(Icons.directions_transit, color: Colors.black)),
      ],
      onTap: (value) {
        onTabPressed();
      },
    );
  }
}

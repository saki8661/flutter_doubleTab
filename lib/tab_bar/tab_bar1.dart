import 'package:flutter/material.dart';

class TabBar1 extends StatelessWidget {
  const TabBar1({
    required this.onTabPressed,
    required TabController? tabController1,
  }) : _tabController1 = tabController1;

  final TabController? _tabController1;
  final VoidCallback onTabPressed;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController1,
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

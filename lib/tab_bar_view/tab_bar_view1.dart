import 'package:flutter/material.dart';

class TabBarView1 extends StatelessWidget {
  const TabBarView1({
    super.key,
    required TabController? tabController1,
  }) : _tabController1 = tabController1;

  final TabController? _tabController1;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController1,
      children: [
        Container(color: Colors.green),
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'history.dart';
import 'home.dart';

class TabBarList extends StatefulWidget {
  const TabBarList({Key key}) : super(key: key);

  @override
  _TabBarListState createState() => _TabBarListState();
}

class _TabBarListState extends State<TabBarList>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          labelStyle: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          tabs: [
            Tab(
              icon: Icon(
                tabController.index == 0 ? Icons.home : Icons.home_outlined,
                color: tabController.index == 0 ? Colors.red : Colors.grey,
              ),
              text: "HOME",
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: tabController.index == 1 ? Colors.red : Colors.grey,
                size: tabController.index == 1 ? 25.0 : 24.0,
              ),
              text: "INBOX",
            ),
            Tab(
              icon: Icon(
                tabController.index == 2
                    ? Icons.receipt_long
                    : Icons.receipt_long_outlined,
                color: tabController.index == 2 ? Colors.red : Colors.grey,
              ),
              text: "HISTORY",
            ),
            Tab(
              icon: Icon(
                tabController.index == 3
                    ? Icons.shopping_bag
                    : Icons.shopping_bag_outlined,
                color: tabController.index == 3 ? Colors.red : Colors.grey,
              ),
              text: "MORE",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: History(),
          ),
          Center(
            child: Home(),
          ),
          Center(
            child: History(),
          ),
          Center(
            child: Home(),
          ),
        ],
      ),
    );
  }
}

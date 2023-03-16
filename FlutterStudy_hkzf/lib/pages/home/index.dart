import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/index.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_info/index.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_search/index.dart';
import 'package:flutterstudy_hkzf/widgets/page_content.dart';


List <Widget> tabViewlist = [
  const TabIndex(),
  const TabSearch(),
  const TabInfo(),
  const PageContent(name: '我的'),
];

List<BottomNavigationBarItem>  barItemList = [
  const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home), ),
  const BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search),),
  const BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info),),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle),),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tabViewlist.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          barItemList[0],
          barItemList[1],
          barItemList[2],
          barItemList[3],
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[600],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

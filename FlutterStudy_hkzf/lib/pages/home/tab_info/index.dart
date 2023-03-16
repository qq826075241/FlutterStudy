import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/info/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({super.key});

  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('资讯tab'),),
      body: ListView(children: <Widget> [
        Info(),
      ],),

    );
  }
}
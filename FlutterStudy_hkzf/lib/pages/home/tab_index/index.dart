import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/index_navigator.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/index_recommend.dart';
import 'package:flutterstudy_hkzf/widgets/common_swipper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('首页'),),
      body: ListView(children: const <Widget> [
        CommonSwipper(),
        IndexNavigator(),
        IndexRecommend(),
        Text('这里是内容'),
      ],),
    );
  }
}
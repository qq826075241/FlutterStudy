import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/widgets/common_swipper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('标题'),),
      body: ListView(children: const <Widget> [
        CommonSwipper(),
        Text('这里是内容'),
      ],),
    );
  }
}
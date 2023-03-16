import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_search/data_list.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('tabSearch'),),
      body: Column(children: <Widget> [
        const SizedBox(
          height: 40.0,
          child: Text('filterBar'),),
          Expanded(child: ListView(
            children: dataList.map((item) => Container(
              height: 200.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: const BoxDecoration(color: Colors.blueGrey),
            ),).toList(),
          )),
      ],),
    );
  }
}
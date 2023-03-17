import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_search/data_list.dart';
import 'package:flutterstudy_hkzf/widgets/room_list_item_widget.dart';
import 'package:flutterstudy_hkzf/widgets/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const SearchBar(), backgroundColor: Colors.white,),
      body: Column(children: <Widget> [
        const SizedBox(
          child: Text('filterBar'),),
          Expanded(child: ListView(
            children: dataList.map((item) => RoomListItemWidget(data: item)).toList(),
          )),
      ],),
    );
  }
}
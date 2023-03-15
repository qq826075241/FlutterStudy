import 'package:flutter/material.dart';
import 'data.dart';

class Info extends StatelessWidget {
  final bool? showTitle;
  final List<InfoItem>? dataList;

  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget> [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10.0),
          child: const Text('最新资讯', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)),
        Column(children: dataList!.map((item) => Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 10.0),
          decoration: const BoxDecoration(color: Colors.red),
        )).toList(),),
      ],),
      
    );
  }
}
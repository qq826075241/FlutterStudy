import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/info/item_widget.dart';
import 'data.dart';

class Info extends StatelessWidget {
  final bool? showTitle;
  final List<InfoItem>? dataList;

  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Column(children: dataList!.map((item) =>ItemWidget(data: item)).toList(),);
  }
}
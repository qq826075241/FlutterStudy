import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/Index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavigatorItemList.map((item) => InkWell(
          onTap: () {
            child: Column(children: <Widget> [
              Image(image: item.imageUri),
              Text(item.title),
            ],),
          },
        )),
      ),
    );
  }
}
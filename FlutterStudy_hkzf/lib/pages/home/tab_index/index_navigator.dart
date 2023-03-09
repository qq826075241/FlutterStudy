import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavigatorItemList.map((item) => InkWell(
          onTap: () {
            item.onTap!(context);
          },
          child: Column(
            children: [
              Image.asset(
                item.imageUri,
                width: 55,
              ),
              Text(
                item.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        )).toList(),
      ),
    );
  }
}
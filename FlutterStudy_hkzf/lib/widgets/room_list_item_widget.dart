import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_search/data_list.dart';
import 'package:flutterstudy_hkzf/widgets/common_image.dart';
import 'package:flutterstudy_hkzf/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;
  const RoomListItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(children: <Widget> [
        CommonImage(src: data.imageUrl, width: 132.5, height: 100.0,),
        const Padding(padding: EdgeInsets.only(left: 10.0)),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
          Text(data.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600),),
          Text(data.subTitle, maxLines: 1, overflow: TextOverflow.ellipsis,),
          Wrap(children: data.tags.map((item) => CommonTag(item)).toList(),),
          Text("${data.price}元/月", style: const TextStyle(color: Colors.orange, fontSize: 16.0, fontWeight: FontWeight.w600),),
        ],))
      ],),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/info/data.dart';
import 'package:flutterstudy_hkzf/widgets/common_image.dart';

var textStyle = const TextStyle(color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.all(10.0),
      child: Row(children: <Widget> [
        CommonImage(src: data.imageUrl, width: 120.0, height: 90.0,),
        const Padding(padding: EdgeInsets.only(left: 10.0)),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Text(data.title, style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
              Text(data.source, style: textStyle,),
              Text(data.time, style: textStyle,),
            ],)
          ],
        ))
      ],),
    );
  }
}
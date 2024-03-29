import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? backgroundColor;
  const CommonTag.origin(this.title,{super.key, this.color = Colors.white70, this.backgroundColor = Colors.grey});

  factory CommonTag(String title) {
    switch(title) {
      
      case '近地铁':case '新上':
        return CommonTag.origin(title, color:Colors.red , backgroundColor: Colors.red[50],);

      case '集中供暖':
        return CommonTag.origin(title, color:Colors.blue , backgroundColor: Colors.blue[50],);

      case '随时看房':
        return CommonTag.origin(title, color:Colors.green , backgroundColor: Colors.green[50],);

      default:
        return CommonTag.origin(title); 
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0)),
      child: Text(title, style: TextStyle(fontSize: 10.0, color: color),),
    );
  }
}
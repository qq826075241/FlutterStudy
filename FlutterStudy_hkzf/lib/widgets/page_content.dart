import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/routes/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("当前页面：$name"),),
      body: ListView(children: <Widget> [
        TextButton(child: Text(Routes.home), onPressed: () {
          Navigator.pushNamed(context, Routes.home);
        },),
        TextButton(child: Text(Routes.login), onPressed: () {
          Navigator.pushNamed(context, Routes.login);
        },),
      ],),
    );
  }
}




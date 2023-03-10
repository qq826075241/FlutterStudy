import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/tab_index/index_recommend_data.dart';
import 'package:flutterstudy_hkzf/widgets/common_image.dart';

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;
  const IndexRecommendItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        width: (MediaQuery.of(context).size.width) / 2.3,
        height: 90.0,
        child: Row(children: <Widget> [
          Column(children: <Widget> [
            Text(data.title),
            Text(data.subTitle),
          ],),
          CommonImage(src: data
          .imageUrl, fit: BoxFit.fill)
        ],),
      ),
    );
  }
}
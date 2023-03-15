import 'package:flutter/material.dart';

import 'index_recommend_data.dart';
import 'index_recommend_item_widget.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;
  const IndexRecommend({super.key, this.dataList = indexRecommendData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('房屋推荐', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
              Text('更多', style: TextStyle(color: Colors.black54,),),
            ],
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10.0,
            runSpacing: 10.0,
            children:
              dataList.map((item) => IndexRecommendItemWidget(data: item)).toList(),
          ),
        ],
      ),
    );
  }
}

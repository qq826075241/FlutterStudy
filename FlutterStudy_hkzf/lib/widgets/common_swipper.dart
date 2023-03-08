import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

const List <String> defaultImages = [
  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F201507%2F11%2F20150711172552_CE55z.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1680854837&t=8512fe5d27fbe2778a7d52e062d2533b',
  'https://img2.baidu.com/it/u=1986930798,1696006396&fm=253&fmt=auto&app=138&f=JPEG?w=700&h=500',
  'https://picnew10.photophoto.cn/20160516/fangdichanguanggao-24504190_1.jpg',
];

// 图片宽高
var imageWidth = 750.0;
var imageHeight = 424.0;

class CommonSwipper extends StatelessWidget {
  final List <String> images;

  const CommonSwipper({super.key, this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width/imageWidth*imageHeight;
    return SizedBox(
      height: height,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return Image.network(images[index],fit: BoxFit.fill,);
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}
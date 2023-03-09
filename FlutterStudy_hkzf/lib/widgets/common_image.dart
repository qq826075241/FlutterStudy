import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

final networkUriReg = RegExp('^http');
final localUriReg = RegExp('^static');

class CommonImage extends StatelessWidget {

  final String src;
  final double width;
  final double height;
  final BoxFit fit;

  const CommonImage({super.key, required this.src, required this.width, required this.height, required this.fit});

  @override
  Widget build(BuildContext context) {
    if(networkUriReg.hasMatch(src)) {
      return CachedNetworkImage(
        width: width,
        height: height,
        fit: fit,
        imageUrl: src,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    }
    if(localUriReg.hasMatch(src)) {
      return Image(
        width: width,
        height: height,
        fit: fit,
        image: AssetImage(src),
      );
    }
    assert(false, '图片地址不合法！');
    return Container();
  }
}
import 'package:flutter/widgets.dart';
import '../../utils/app_size.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.fromNetwork,
    required this.image,
    this.height = double.infinity,
    this.width = double.infinity,
    this.fit = BoxFit.cover,
    this.color,
  });
  final bool fromNetwork;
  final String image;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    if (fromNetwork) {
      return Image.network(
        image,
        height: AppSize.height(value: height),
        width: AppSize.width(value: width),
      );
    } else {
      return Image.asset(
        image,
        height: AppSize.height(value: height),
        width: AppSize.width(value: width),
        color: color,
        fit: fit ?? BoxFit.fill,
      );
    }
  }
}

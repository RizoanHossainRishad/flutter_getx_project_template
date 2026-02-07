import 'package:flutter/widgets.dart';

import 'app_size.dart';


class SpaceWidget extends StatelessWidget {
  const SpaceWidget({
    super.key,
    this.height=0,
    this.width=0,
    this.screenFlag = false,
  });

  final double? height;
  final double? width;
  final bool screenFlag;

  @override
  Widget build(BuildContext context) {
    return (screenFlag==false)?
    SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    ):SizedBox(
      height:height!=0? AppSize.size.height*(height!/100) : 0,
      width:width!=0? AppSize.size.width*(width!/100):0,
    );
  }
}


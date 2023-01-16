import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageWidget extends StatelessWidget {
  final String ImageAsset;
  final double ImageHeight;
  const ImageWidget({
    super.key,
    required this.ImageAsset,
    required this.ImageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.amber,
        child: Image(
          image: AssetImage(ImageAsset),
          width: MediaQuery.of(context).size.width,
          height: ImageHeight,
        ),
      ),
    );
  }
}

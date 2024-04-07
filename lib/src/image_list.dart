import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ll/src/images_helpers.dart';

class ImageViewBuilderHorizontal extends StatelessWidget {
  const ImageViewBuilderHorizontal({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.down,
        padding: const EdgeInsets.all(2.0),
        children: ImageHelpers().imageListBuilder(),
      ),
    );
  }
}

class ImageViewBuilderVertical extends StatelessWidget {
  const ImageViewBuilderVertical({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.down,
        padding: const EdgeInsets.all(2.0),
        children: ImageHelpers().imageListBuilder(),
      ),
    );
  }
}

import 'package:demo_app/core/constant/image_const.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final List<String> images;
  final int? currentIndex;
  final double height;
  const ImageSlider({
    Key? key,
    required this.images,
    required this.height,
    this.currentIndex,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late final Widget placeHolderWidget;
  final PageController pageController = PageController();
  ValueNotifier<int> valueIndexNotifier = ValueNotifier(0);
  @override
  void initState() {
    super.initState();
    placeHolderWidget = Image.asset(
      ImageConsts.placeholder,
      height: widget.height,
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.images.isEmpty) return placeHolderWidget;

    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: widget.height,
              viewportFraction: 1,
              onPageChanged: (v, a) {
                valueIndexNotifier.value = v;
              }),
          items: widget.images.map((i) {
            return Image.network(
              i,
              fit: BoxFit.fill,
              width: double.maxFinite,
              errorBuilder: (context, error, stackTrace) => placeHolderWidget,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Stack(
                  children: [
                    placeHolderWidget,
                    SizedBox.expand(
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                        child: const Center(
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Center(
              child: ValueListenableBuilder<int>(
                  valueListenable: valueIndexNotifier,
                  builder: (x, value, v) {
                    return AnimatedSmoothIndicator(
                      activeIndex: value,
                      count: 6,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.white.withOpacity(0.4),
                        fixedCenter: false,
                        dotHeight: 8,
                        activeDotScale: 1,
                        dotWidth: 8,
                        activeStrokeWidth: 0,
                      ),
                    );
                  })),
        )
      ],
    );
  }
}

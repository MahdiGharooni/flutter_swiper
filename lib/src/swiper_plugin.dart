import 'package:flutter/widgets.dart';
import 'package:sun/widgets/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:sun/widgets/flutter_swiper/src/swiper.dart';
import 'package:sun/widgets/flutter_swiper/src/swiper_controller.dart';

/// plugin to display swiper components
///
abstract class SwiperPlugin {
  const SwiperPlugin();

  Widget  build(BuildContext  context, SwiperPluginConfig? config);
}

class SwiperPluginConfig {
  SwiperPluginConfig(
      {@required this.scrollDirection,
      @required this.controller,
      this.activeIndex,
      this.itemCount,
      this.indicatorLayout,
      this.outer,
      this.pageController,
      this.layout,
      this.loop})
      : assert(scrollDirection != null),
        assert(controller != null);
  final int? activeIndex;
  final int? itemCount;
  final PageIndicatorLayout? indicatorLayout;
  final Axis  scrollDirection;
  final bool? loop;
  final bool? outer;
  final PageController? pageController;
  final SwiperController  controller;
  final SwiperLayout? layout;
}

class SwiperPluginView extends StatelessWidget {
  const SwiperPluginView(this.plugin, this.config);
  final SwiperPlugin  plugin;
  final SwiperPluginConfig  config;

  @override
  Widget  build(BuildContext  context) {
    return plugin.build(context, config);
  }
}

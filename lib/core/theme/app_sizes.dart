import 'package:flutter/widgets.dart';

extension AppSizesExt on BuildContext {
  AppSizes get as => AppSizes(this);
}

class AppSizes {
  final BuildContext context;

  const AppSizes(this.context);
  double get appWidth => MediaQuery.of(context).size.width;
  double get appHeight => MediaQuery.of(context).size.height;
  double get authDevider => 20;
  double get authHeaderHeigth => MediaQuery.of(context).size.height * 0.4;
  double get size30 => MediaQuery.of(context).size.shortestSide * 0.3;
  double get size40 => MediaQuery.of(context).size.shortestSide * 0.4;
  double get size60 => MediaQuery.of(context).size.shortestSide * 0.6;
  double get size80 => MediaQuery.of(context).size.shortestSide * 0.8;
  double get padding => 16;
  double get innerPadding => 24;
  double get inputHeigth => 64;
}

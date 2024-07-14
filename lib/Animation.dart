import 'package:flutter/cupertino.dart';

class AnimatePage extends PageRouteBuilder {
  final Widget widget;

  AnimatePage({required this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secanimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 10),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secanimation,
              Widget child) {
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
        );
}

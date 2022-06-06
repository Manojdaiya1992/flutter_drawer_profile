import 'dart:math';

import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    final drawer = Container(
      color: Colors.blue,
    );
    final body = Container(
      color: Colors.yellow,
    );
    var p = pi;
    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          double slide = 225.0 * animationController.value;
          double scale = 1 - (animationController.value * 0.3);
          return Stack(
            children: [
              drawer,
              Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001) // door open and close
                  ..rotateY(-p / 2 * animationController.value),
                // ..translate(slide) //slider animation
                // ..scale(scale),
                alignment: Alignment.centerLeft,
                child: body,
              ),
            ],
          );
        },
      ),
    );
  }
}

Stack _builder(Container drawer, Container body) {
  return Stack(
    children: [
      drawer,
      Transform(
        transform: Matrix4.identity()
          ..translate(225.0)
          ..scale(0.5),
        alignment: Alignment.centerLeft,
        child: body,
      ),
    ],
  );
}

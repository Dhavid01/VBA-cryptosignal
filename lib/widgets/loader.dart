import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final Widget child;
  final bool busy;
  final double? height;
  const Loader({
    Key? key,
    required this.child,
    required this.busy,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: height ?? double.infinity,
            width: double.infinity,
            child: child,
          ),
          busy
              ? Container(
                  height: height ?? double.infinity,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.65),
                  child: const Center(child: CircularProgressIndicator()),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

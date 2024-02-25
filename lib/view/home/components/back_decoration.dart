import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo/view_model/responsive.dart';

import '../../../res/constants.dart';

class BackColors extends StatelessWidget {
  const BackColors({super.key});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      color: Colors.black54,
      child: Stack(
        children: [
      Positioned.fill(child: BackdropFilter(
            filter:ImageFilter.blur(sigmaY: 30,sigmaX: 30),child: const SizedBox(),
          )),
        ],
      ),
    );
  }
}
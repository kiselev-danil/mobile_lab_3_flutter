import 'package:flutter/material.dart';
import 'package:flutter_lab/UserProfile.dart';

class TopWidget extends Widget {
  const TopWidget({super.key});

  @override
  Element createElement() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
            child: Image.asset("assets/images/ic_24_cross.png")),
        const Spacer(),
        UserProfile(),
        const Spacer(),
        Padding(
            padding:
                const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
            child: Image.asset("assets/images/ic_24_arrow_right_square.png")),
      ],
    ).createElement();
  }
}



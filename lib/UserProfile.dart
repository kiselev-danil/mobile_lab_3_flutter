import 'package:flutter/material.dart';

class UserProfile extends Widget {
  @override
  Element createElement() {
    return Padding(
        padding: const EdgeInsets.only(left: 0, top: 14, right: 0, bottom: 0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/portrait.png",
                  height: 110,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 36),
              child: Text("Екатерина",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
            )
          ],
        )).createElement();
  }
}

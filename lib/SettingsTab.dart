import 'package:flutter/material.dart';

class SettingsTab extends Widget {
  const SettingsTab({super.key});

  @override
  Element createElement() {
    return Align(
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.only(top: 42),
                child: Image.asset("assets/images/settings.gif")))
        .createElement();
  }
}

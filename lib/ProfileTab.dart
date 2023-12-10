import 'package:flutter/material.dart';
import 'package:flutter_lab/SubscriptionCard.dart';

class ProfileTab extends Widget {
  const ProfileTab({super.key});

  @override
  Element createElement() {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('У вас подключено',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.7,
                )),
            const SizedBox(height: 8),
            const Text(
                'Подписки, автоплатежи и сервисы на которые вы подписались',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x8C000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Display",
                  letterSpacing: -0.42,
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 30, right: 16),
              child: Row(
                children: [
                  SubscriptionCard("assets/images/logo.png", "СберПрайм",
                      "Платёж 9 июля", "199 ₽ в месяц"),
                  const SizedBox(width: 8,),
                  SubscriptionCard("assets/images/ic_36_percent_fill.png",
                      "Переводы", "Автопродление 21 августа", "199 ₽ в месяц"),
                  const SizedBox(width: 8,),
                  SubscriptionCard("assets/images/settings.gif",
                      "СберПрайм", "Платёж 9 июля", "199 ₽ в месяц"),
                ],
              ),
            )
          ],
        )).createElement();
  }
}

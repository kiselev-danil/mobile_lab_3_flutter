import 'dart:ffi';

import 'package:flutter/material.dart';

Widget SubscriptionCard(String imageAsset, String subscriptionName,
    String paymentDate, String paymentCost) {
  return SizedBox(
    height: 130,
    width: 216,
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 14,
            spreadRadius: 0,
            color: Color.fromRGBO(79, 79, 108, 0.07),
          ),
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      imageAsset,
                      height: 36,
                      width: 36,
                      fit: BoxFit.contain,
                    )),
                Text(subscriptionName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                    ))
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(paymentDate,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(paymentCost,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0x8C000000),
                  )),
            )
          ],
        ),
      ),
    ),
  );
}

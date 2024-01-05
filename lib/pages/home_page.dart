import 'package:flutter/material.dart';

import '../themes.dart';
import '../widgets/furniture_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: edge,
            ),
            // TITLE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Best Furniture',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Perfect Choice!',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // POPULAR FURNITURE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(
              child: FurnitureCard(),
            ),
          ],
        ),
      ),
    );
  }
}

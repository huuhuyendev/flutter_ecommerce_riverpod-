import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:gap/gap.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kPrimaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Apple Store', style: AppTheme.kBigTitle),
                  const Gap(8),
                  Text(
                    "Find the Apple product and accessories are looking for",
                    style: AppTheme.kBodyText,
                  ),
                  const Gap(4),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kWhiteColor,
                        foregroundColor: kSecondaryColor,
                      ),
                      onPressed: () {},
                      child: const Text('Shop new year'))
                ],
              ),
            ),
          ),
          Image.asset('assets/general/landing.png')
        ],
      ),
    );
  }
}

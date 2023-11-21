import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/general/store_brand_white.svg',
          color: kWhiteColor,
          width: 180,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.local_mall),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
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
                            const Text('Apple Store',
                                style: AppTheme.kBigTitle),
                            Text(
                              "Find the Apple product and accessories are looking for",
                              style: AppTheme.kBodyText,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Shop new year'))
                          ],
                        ),
                      ),
                    ),
                    Image.asset('assets/general/landing.png')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

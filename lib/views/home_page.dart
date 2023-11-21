import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/widgets/chip_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../widgets/ads_banner_widget.dart';

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
              const AdsBannerWidget(),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ChipWidget(chipLabel: 'ALl'),
                    ChipWidget(chipLabel: 'Computers'),
                    ChipWidget(chipLabel: ''
                        ''
                        ''
                        ''
                        ''
                    ),
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

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/widgets/chip_widget.dart';
import 'package:flutter_ecommerce/widgets/product_card_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
                    ChipWidget(chipLabel: 'Smartphones'),
                    ChipWidget(chipLabel: 'Tablets'),
                    ChipWidget(chipLabel: 'Accessories'),
                  ],
                ),
              ),
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot sales', style: AppTheme.kHeadingOne),
                  Text('See all', style: AppTheme.kSeeAll),
                ],
              ),
              Container(
                height: 300,
                padding: const EdgeInsets.all(4.0),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      ProductCardWidget(productIndex: index),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Products', style: AppTheme.kHeadingOne),
                  Text('See all', style: AppTheme.kSeeAll),
                ],
              ),
              MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => SizedBox(
                    height: 250, child: ProductCardWidget(productIndex: index)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

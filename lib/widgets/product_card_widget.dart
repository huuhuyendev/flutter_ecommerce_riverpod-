import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_ecommerce/controller/product_controller.dart';

class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({
    Key? key,
    required this.productIndex,
  }) : super(key: key);

  final int productIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(12.0),
              color: kLightBackgroundColor,
              child: Image.asset(
                product[productIndex].imgURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(4),
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Product name', style: AppTheme.kCardTitle),
                Text(
                  'Short description product',
                  style: AppTheme.kBodyText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('\$854', style: AppTheme.kCardTitle),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
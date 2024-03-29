import 'package:flutter_ecommerce/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/product_list.dart';

class ProductNotifier extends StateNotifier<List<ProductModel>> {
  ProductNotifier() : super(productItems);
}

final productNotifierProvider =
    StateNotifierProvider<ProductNotifier, List<ProductModel>>((ref) {
  return ProductNotifier();
});

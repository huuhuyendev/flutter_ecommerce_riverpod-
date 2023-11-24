class ProductModel {
  final int pid;
  final String imgURL;
  final String title;
  final double price;
  final String sortDescription;
  final String longDescription;
  final int reviews;
  final double rating;
  bool isSelected;
  int qty;
  ProductModel({
    required this.pid,
    required this.imgURL,
    required this.title,
    required this.price,
    required this.sortDescription,
    required this.longDescription,
    required this.reviews,
    required this.rating,
    this.isSelected = false,
    this.qty = 1,
  });
}

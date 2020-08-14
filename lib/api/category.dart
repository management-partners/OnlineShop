import 'package:OnlineShop/models/category.dart';

List<Category> categories = [
  Category(id: 1, parent: 0, name: 'Woman', slug: '', image: 'assets/images/dancer.png', description: 'This is product for woman'),
  Category(id: 2, parent: 0, name: 'Man', slug: '', image: 'assets/images/CartoonMan20.png', description: 'This is product for man'),
  Category(id: 3, parent: 0, name: 'Chair', slug: '', image: 'assets/images/Item_1.png', description: 'This is product for house'),
  Category(id: 4, parent: 1, name: 'Hand bag', slug: '', image: 'assets/images/handbag.png', description: ''),
  Category(id: 5, parent: 1, name: 'Jewellery', slug: '', image: 'assets/images/jewellery.png', description: ''),
  Category(id: 6, parent: 1, name: 'Footwear', slug: '', image: 'assets/images/shoes.png', description: ''),
  Category(id: 7, parent: 1, name: 'Dresses', slug: '', image: 'assets/images/dress.png', description: ''),
];

List<Category> homeCategories = categories.where((element) => element.parent == 0).toList();

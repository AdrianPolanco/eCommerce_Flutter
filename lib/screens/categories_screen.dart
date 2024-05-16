import 'package:ecommerce_with_flutter_firebase/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = Category.categories;
    List<int> _extends = [];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
        ),
        body: MasonryGridView.count(
            crossAxisCount: 3,
            itemCount: Category.categories.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
                height: 100,
                width: 100,
                child: Center(
                  child: Text('Item $index'),
                ),
              );
            }));
  }
}

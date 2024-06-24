import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/pages/category_page.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.Category});
  final CategoryModel Category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(
                category: Category.categoryname,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
        ),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(Category.image), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              Category.categoryname,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

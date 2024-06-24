import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_widget.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/business.avif', categoryname: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryname: 'Entertainment'),
    CategoryModel(image: 'assets/health.avif', categoryname: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryname: 'Science'),
    CategoryModel(image: 'assets/sports.avif', categoryname: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryname: 'Technology'),
    CategoryModel(image: 'assets/general.avif', categoryname: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryWidget(Category: categories[index]);
        },
      ),
    );
  }
}

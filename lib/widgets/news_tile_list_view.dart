import 'package:flutter/material.dart';
import 'package:news/models/news_tile_model.dart';
import 'package:news/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView(
      {super.key, required this.articles,});

  final List<NewsTileModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            thevariable: articles[index],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/widgets/category_list_view.dart';
import 'package:news/widgets/news_list_view_builder.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),

        // child: Column(
        //   children: [
        //     CategoryListView(),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(child: NewsTileListView()),
        //   ],
        // ),
      ),
    );
  }
}



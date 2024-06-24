import 'package:flutter/material.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category,});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsServices().getnews(
          widget.category,
        ),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTileListView(articles: snapshot.data!,);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Text('OOPS there is an error !'),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

// class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
//   List<NewsTileModel> articles = [];
//   bool isloading = true;

//   @override
//   void initState() {
//     super.initState();
//     getgeneralnews();
//   }

//   Future<void> getgeneralnews() async {
//     articles = await NewsServices().getnews();
//     isloading = false;
//     setState(() {});
//   }
//   @override
//   Widget build(BuildContext context) {
//     // if statement
//     return isloading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator(),))
//         : NewsTileListView(articles: articles,);
//   }
// }
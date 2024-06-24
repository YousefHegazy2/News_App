import 'package:flutter/material.dart';
import 'package:news/models/news_tile_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.thevariable});

  final NewsTileModel thevariable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Column(
        children: [
          // adding image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              thevariable.image ??
                  'https://t2.gstatic.com/images?q=tbn:ANd9GcRTgSdSDt57Tr3XuFy9PmiQg2jaoCJ62nR1xX1VxYNzKD6aT3eC',
              fit: BoxFit.cover,
              height: 220,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // adding title
          Text(
            thevariable.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 6,
          ),
          // adding subtitle
          Text(
            thevariable.subtitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}


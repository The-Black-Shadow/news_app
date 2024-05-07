import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final DateTime date;
  final String title;
  final String author;

  const TrendingWidget({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.date,
    required this.title,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          width: 300,
          //height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Column(
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    tag,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const Spacer(),
                  Text(
                    '$date',
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      maxLines: 2,
                      title,
                      style: const TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(author)
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }
}

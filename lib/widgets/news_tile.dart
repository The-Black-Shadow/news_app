import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String title;
  final DateTime date;
  const NewsTile({
    super.key,
    required this.imageUrl,
    required this.author,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.background,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F234e1d3f-0742-4733-888f-40a6a8299845%2Fus_russia.webp?rect=0%2C0%2C980%2C653&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.3',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 30, width: 8),
                    const Text('Md Mehedi Hasan'),
                  ],
                ),
                const Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Save water, save life, Save water, save life,Save water, save life,Save water, save life,Save water, save life,',
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '2 days ago',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

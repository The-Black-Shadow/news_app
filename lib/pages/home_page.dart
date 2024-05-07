import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/widgets/trending_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Newseekers',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 70,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            size: 25,
                            Icons.home,
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            size: 25,
                            Icons.book,
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            size: 25,
                            Icons.settings,
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Hottest News',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View All'),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(height: 20),
                      TrendingWidget(
                          imageUrl:
                              'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F234e1d3f-0742-4733-888f-40a6a8299845%2Fus_russia.webp?rect=0%2C0%2C980%2C653&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.3',
                          tag: 'Technology',
                          date: DateTime.now(),
                          title: 'The future of AI',
                          author: 'John Doe'),
                      TrendingWidget(
                          imageUrl:
                              'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F6a0b91a7-0460-40fa-a54f-5b45be96e28d%2FP1_1.jpg?rect=0%2C0%2C1540%2C1027&auto=format%2Ccompress&fmt=webp&format=webp&w=300&dpr=1.3',
                          tag: 'Technology',
                          date: DateTime.now(),
                          title: 'The future of AI',
                          author: 'John Doe'),
                      TrendingWidget(
                          imageUrl:
                              'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F6a0b91a7-0460-40fa-a54f-5b45be96e28d%2FP1_1.jpg?rect=0%2C0%2C1540%2C1027&auto=format%2Ccompress&fmt=webp&format=webp&w=300&dpr=1.3',
                          tag: 'Technology',
                          date: DateTime.now(),
                          title: 'The future of AI',
                          author: 'John Doe'),
                      TrendingWidget(
                          imageUrl:
                              'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F6a0b91a7-0460-40fa-a54f-5b45be96e28d%2FP1_1.jpg?rect=0%2C0%2C1540%2C1027&auto=format%2Ccompress&fmt=webp&format=webp&w=300&dpr=1.3',
                          tag: 'Technology',
                          date: DateTime.now(),
                          title: 'The future of AI',
                          author: 'John Doe'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'News for you',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View All'),
                    )
                  ],
                ),
                Column(
                  children: [
                    NewsTile(
                      imageUrl:
                          'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F234e1d3f-0742-4733-888f-40a6a8299845%2Fus_russia.webp?rect=0%2C0%2C980%2C653&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.3',
                      author: 'Md Mehedi Hasan',
                      title: 'US Russia',
                      date: DateTime.now(),
                    ),
                    NewsTile(
                      imageUrl:
                          'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F234e1d3f-0742-4733-888f-40a6a8299845%2Fus_russia.webp?rect=0%2C0%2C980%2C653&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.3',
                      author: 'Md Mehedi Hasan',
                      title: 'US Russia',
                      date: DateTime.now(),
                    ),
                    NewsTile(
                      imageUrl:
                          'https://images.prothomalo.com/prothomalo-bangla%2F2024-05%2F234e1d3f-0742-4733-888f-40a6a8299845%2Fus_russia.webp?rect=0%2C0%2C980%2C653&auto=format%2Ccompress&fmt=webp&format=webp&w=640&dpr=1.3',
                      author: 'Md Mehedi Hasan',
                      title: 'US Russia',
                      date: DateTime.now(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

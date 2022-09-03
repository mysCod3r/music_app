import 'package:flutter/material.dart';

class HomeSuggested extends StatefulWidget {
  const HomeSuggested({Key? key}) : super(key: key);

  @override
  State<HomeSuggested> createState() => _HomeSuggestedState();
}

class _HomeSuggestedState extends State<HomeSuggested> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            Components(
              text: "Recently Played",
              borderRadius: BorderRadius.circular(24),
            ),
            Components(
              text: "Artists",
              borderRadius: BorderRadius.circular(60),
            ),
            Components(
              text: "Most Played",
              borderRadius: BorderRadius.circular(24),
            ),
          ],
        ),
      ),
    );
  }
}

class Components extends StatelessWidget {
  const Components({
    Key? key,
    required this.text,
    required this.borderRadius,
  }) : super(key: key);
  final String text;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ComponentText(text: text),
          ComponentItems(borderRadius: borderRadius),
        ],
      ),
    );
  }
}

class ComponentItems extends StatelessWidget {
  ComponentItems({
    Key? key,
    required this.borderRadius,
  }) : super(key: key);

  final BorderRadius borderRadius;
  final a = [
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaa",
    "aaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaa"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            padding: const EdgeInsets.only(
              right: 8.0,
              top: 16.0,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 124,
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    a[index],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ComponentText extends StatelessWidget {
  const ComponentText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SeeAll(
          onTap: () {},
        ),
      ],
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        "See All",
        style: TextStyle(fontSize: 16, color: Colors.orange),
      ),
    );
  }
}

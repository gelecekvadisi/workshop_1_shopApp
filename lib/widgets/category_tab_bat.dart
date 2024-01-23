import 'package:flutter/material.dart';

import '../util/constants.dart';

class CategoryTabBar extends StatefulWidget {
  const CategoryTabBar({
    super.key,
  });

  @override
  State<CategoryTabBar> createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar> {
  final List<String> categories = [
    "Hand bag",
    "Jewellery",
    "Footwear",
    "Dresses",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.all(Constants.defaultPadding),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return const SizedBox(width: Constants.defaultPadding * 2);
          },
          itemCount: categories.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? Constants.textColor
                              : Constants.textLightColor,
                        ),
                  ),
                  Visibility(
                    visible: isSelected,
                    child: Container(
                      height: 2,
                      width: 30,
                      color: Constants.textColor,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

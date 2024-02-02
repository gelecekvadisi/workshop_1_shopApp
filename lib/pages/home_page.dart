import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workshop_1_project/data/data_source.dart';
import 'package:workshop_1_project/util/constants.dart';
import 'package:workshop_1_project/widgets/app_bar.dart';
import 'package:workshop_1_project/widgets/product_item_widget.dart';

import '../widgets/category_tab_bat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: Constants.defaultPadding),
              child:
                  Text("Women", style: Theme.of(context).textTheme.titleLarge),
            ),
            CategoryTabBar(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding),
              child: _buildProductGridView(),
            ),
          ],
        ),
      ),
    );
  }

  GridView _buildProductGridView() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: Constants.defaultPadding,
        crossAxisSpacing: Constants.defaultPadding,
        childAspectRatio: 3 / 4.5,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return ProductItemWidget(
          product: productList[index],
        );
      },
    );
  }
}

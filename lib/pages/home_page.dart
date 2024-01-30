import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workshop_1_project/data/data_source.dart';
import 'package:workshop_1_project/util/constants.dart';
import 'package:workshop_1_project/widgets/product_item_widget.dart';

import '../widgets/category_tab_bat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: Constants.defaultPadding),
              child: Text("Women", style: Theme.of(context).textTheme.titleLarge),
            ),
            CategoryTabBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: Constants.defaultPadding,
                  crossAxisSpacing: Constants.defaultPadding,
                  childAspectRatio: 3/4.5,
                ),
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductItemWidget(product: productList[index],);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Center(
          child: SvgPicture.asset(
            "assets/icons/back.svg",
            colorFilter: ColorFilter.mode(Constants.textColor, BlendMode.srcIn),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Center(
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              colorFilter:
                  ColorFilter.mode(Constants.textColor, BlendMode.srcIn),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/cart.svg",
                  colorFilter:
                      ColorFilter.mode(Constants.textColor, BlendMode.srcIn),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

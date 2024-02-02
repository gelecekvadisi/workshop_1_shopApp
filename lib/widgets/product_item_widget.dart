import 'package:flutter/material.dart';
import 'package:workshop_1_project/model/product.dart';
import 'package:workshop_1_project/pages/detail_page.dart';

import '../util/constants.dart';

class ProductItemWidget extends StatelessWidget {
  ProductItemWidget({
    super.key,
    required this.product,
  });

  Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              product: product,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: Constants.defaultPadding / 2),
              decoration: BoxDecoration(
                color: product.backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Constants.defaultPadding),
                child: Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(product.image),),
                ),
              ),
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Constants.textLightColor),
          ),
          Text(
            "\$${product.price}",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

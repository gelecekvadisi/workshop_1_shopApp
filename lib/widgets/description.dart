import 'package:flutter/material.dart';
import 'package:workshop_1_project/model/product.dart';
import 'package:workshop_1_project/util/constants.dart';

class Description extends StatelessWidget {
  const Description({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constants.defaultPadding),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}

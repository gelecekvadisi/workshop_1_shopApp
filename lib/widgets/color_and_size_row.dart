import 'package:flutter/material.dart';
import 'package:workshop_1_project/model/product.dart';
import 'package:workshop_1_project/util/constants.dart';

class ColorAndSizeRow extends StatelessWidget {
  const ColorAndSizeRow({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildColorSection(),
        _buildSizeSection(context),
      ],
    );
  }

  Widget _buildColorSection() {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color"),
          Row(
            children: [
              CircularColor(color: Color(0xFF356C95), isSelected: true),
              CircularColor(color: Color(0xFFF8C078), isSelected: true),
              CircularColor(color: Color(0xFFA29B9B), isSelected: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSizeSection(BuildContext context) {
    return Expanded(
      child: Text(
        "Size\n${product.size} cm",
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CircularColor extends StatelessWidget {
  const CircularColor({Key? key, required this.color, required this.isSelected})
      : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Constants.defaultPadding / 2,
        right: Constants.defaultPadding / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

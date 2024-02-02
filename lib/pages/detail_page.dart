import 'package:flutter/material.dart';
import 'package:workshop_1_project/model/product.dart';
import 'package:workshop_1_project/util/constants.dart';
import 'package:workshop_1_project/widgets/app_bar.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.product});

  Product product;

  String brandName = "Aristocratic Hand Bag";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: product.backgroundColor,
      appBar: MyAppBar(
        context: context,
        backgroundColor: product.backgroundColor,
        iconColor: Colors.white,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBackgroundContainer(size),
          ),
          _buildBody(context),
        ],
      ),
    );
  }

  Container _buildBackgroundContainer(Size size) {
    return Container(
      height: size.height * 0.57,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Constants.defaultRadius),
          topRight: Radius.circular(Constants.defaultRadius),
        ),
      ),
    );
  }

  Padding _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitle(context),
          _buildPriceAndImage(context),
        ],
      ),
    );
  }

  Padding _buildPriceAndImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildPrice(context),
          Expanded(
            child: _buildImage(),
          ),
        ],
      ),
    );
  }

  Column _buildTitle(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          brandName,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          product.title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Column _buildPrice(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          "\$${product.price}",
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Padding _buildImage() {
    return Padding(
      padding:
          const EdgeInsets.all(Constants.defaultPadding * 2).copyWith(right: 0),
      child: Hero(
          tag: product.image,
          child: Image.asset(
            product.image,
            fit: BoxFit.contain,
          )),
    );
  }
}

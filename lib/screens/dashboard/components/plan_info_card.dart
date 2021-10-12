import 'package:solway_dashboard/Utilities/theme_of.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class CategoryInfoCard extends StatelessWidget {
  const CategoryInfoCard({
    Key? key,
    required this.title,
    required this.image,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  final String title, image, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Constants.defaultPadding),
      padding: const EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: theme(context).primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(Constants.defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Image.network(image),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numOfFiles Tests",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}

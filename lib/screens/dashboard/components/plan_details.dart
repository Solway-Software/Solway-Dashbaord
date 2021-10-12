import 'package:solway_dashboard/Utilities/theme_of.dart';
import 'package:flutter/material.dart';
import 'package:solway_dashboard/models/category_model.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'plan_info_card.dart';

class PlanDetails extends StatelessWidget {
  const PlanDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: theme(context).accentColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Plan Status",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: Constants.defaultPadding),
          const Chart(),
          Column(
            children: demoCategories(context)
                .map(
                  (cat) =>  CategoryInfoCard(
                    image: cat.image,
                    title: cat.nameEn,
                    amountOfFiles: "33 Bids",
                    numOfFiles: 99,
                  ),
                )
                .toList(),
          )
          //
          // StorageInfoCard(
          //   svgSrc: "assets/icons/media.svg",
          //   title: "Media Tests",
          //   amountOfFiles: "15.3GB",
          //   numOfFiles: 1328,
          // ),
          // StorageInfoCard(
          //   svgSrc: "assets/icons/folder.svg",
          //   title: "Other Tests",
          //   amountOfFiles: "1.3GB",
          //   numOfFiles: 1328,
          // ),
          // StorageInfoCard(
          //   svgSrc: "assets/icons/unknown.svg",
          //   title: "Unknown",
          //   amountOfFiles: "1.3GB",
          //   numOfFiles: 140,
          // ),
        ],
      ),
    );
  }
}

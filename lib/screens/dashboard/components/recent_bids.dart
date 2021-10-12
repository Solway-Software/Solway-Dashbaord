import 'package:solway_dashboard/Utilities/theme_of.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:solway_dashboard/models/bid_model.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentBids extends StatelessWidget {
  const RecentBids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.defaultPadding),
      decoration: BoxDecoration(
        color: theme(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Bids",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: Constants.defaultPadding,
              minWidth: Responsive.isMobile(context) ? 350 :600,
              columns: Responsive.isMobile(context)
                  ? const [
                      DataColumn(
                        label: Text("Name",),
                      ),
                      DataColumn(
                        label: Text("Bidder"),
                      ),
                      // DataColumn(
                      //   label: Text("Last Price"),
                      // ),
                      DataColumn(
                        label: Text("Date/time"),
                      ),
                    ]
                  : const [
                      DataColumn(
                        label: Text("Product Name"),
                      ),
                      DataColumn(
                        label: Text("Name Bidder"),
                      ),
                      DataColumn(
                        label: Text("Last Price"),
                      ),
                      DataColumn(
                        label: Text("Date/time"),
                      ),
                    ],
              rows: List.generate(
                demoBids(context).length,
                (index) => recentFileDataRow(demoBids(context)[index], context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(BidModel bidInfo, BuildContext context) {
  return Responsive.isMobile(context)
      ? DataRow(
          cells: [
            DataCell(
              Text(bidInfo.nameEn),
            ),
            DataCell(Text(bidInfo.userId)),
            // DataCell(Text(bidInfo.lastPrice.toString())),
            DataCell(Text(bidInfo.createdAt)),
          ],
        )
      : DataRow(
          cells: [
            DataCell(
              Row(
                children: [
                  Image.network(
                    bidInfo.images[0],
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding),
                    child: Text(bidInfo.nameEn),
                  ),
                ],
              ),
            ),
            DataCell(Text(bidInfo.userId)),
            DataCell(Text(bidInfo.lastPrice.toString())),
            DataCell(Text(bidInfo.createdAt, style: const TextStyle(overflow: TextOverflow.ellipsis),)),
          ],
        );
}

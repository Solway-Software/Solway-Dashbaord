import 'package:provider/provider.dart';
import 'package:solway_dashboard/controllers/menu_controller.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/dashboard_fields.dart';
import 'components/header.dart';

import 'components/recent_bids.dart';
import 'components/plan_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final menuController = Provider.of<MenuController>(context,listen: true);
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Constants.defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: Constants.defaultPadding),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const TopCategories(),
                      const SizedBox(height: Constants.defaultPadding),
                      const RecentBids(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: Constants.defaultPadding),
                      if (Responsive.isMobile(context)) const PlanDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: Constants.defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: PlanDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

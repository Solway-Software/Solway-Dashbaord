import 'package:solway_dashboard/models/my_files.dart';
import 'package:solway_dashboard/helpers/responsive.dart';
import 'package:flutter/material.dart';
import 'package:solway_dashboard/models/vendor_plan_model.dart';
import 'package:solway_dashboard/utilities/theme_of.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dashboard Information",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding * 1.1,
                  vertical:
                      Constants.defaultPadding / (Responsive.isMobile(context) ? 2.1 : 1),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.headset_mic_outlined),
              label: Text("Call Solway ",style: theme(context).textTheme.bodyText1,),
            ),
          ],
        ),
        const SizedBox(height: Constants.defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width > 1400 ? 1.4 : 1.3,
          ),
          miniDesktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoVenderPlans(context).length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: Constants.defaultPadding,
        mainAxisSpacing: Constants.defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          CategoryInfoCard(plan: demoVenderPlans(context)[index]),
    );
  }
}

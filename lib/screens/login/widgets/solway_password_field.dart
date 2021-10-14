import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solway_dashboard/helpers/size_helper.dart';
import 'package:solway_dashboard/utilities/theme_of.dart';

class SolwayPasswordField extends StatelessWidget {
  const SolwayPasswordField({
    required this.icon,
    required this.hint,
    // required this.inputType,
    required this.inputAction,
  });

  final String icon;
  final String hint;
  // final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: SizeHelper.screenHeight/15,
        width: SizeHelper.screenWidth/1.4,
        decoration: ShapeDecoration(
          color: theme(context).textSelectionTheme.selectionHandleColor,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SvgPicture.asset(
                  icon,
                  color: theme(context).unselectedWidgetColor,
                ),
              ),
              hintText: hint,
              hintStyle: theme(context).textTheme.subtitle2,
            ),
            obscureText: true,
            style: theme(context).textTheme.bodyText2,
            // keyboardType: inputType,
            // textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}

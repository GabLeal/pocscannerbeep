import 'package:flutter/material.dart';
import 'package:pocscanner/shared/app_colors.dart';

// ignore: must_be_immutable
class ButtonCustom extends StatelessWidget {
  ButtonCustom({
    required this.title,
    required this.onTap,
    this.backgroundColor = AppColors.primaryGreen,
    this.textColor = Colors.black,
    Key? key,
  }) : super(key: key);

  final String title;
  final Function() onTap;
  Color? backgroundColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 160,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

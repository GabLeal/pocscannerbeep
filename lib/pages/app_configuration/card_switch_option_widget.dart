import 'package:flutter/material.dart';
import 'package:pocscanner/shared/app_colors.dart';

class CardSwitchOptionWidget extends StatefulWidget {
  const CardSwitchOptionWidget({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  // ignore: library_private_types_in_public_api
  _CardSwitchOptionWidgetState createState() => _CardSwitchOptionWidgetState();
}

class _CardSwitchOptionWidgetState extends State<CardSwitchOptionWidget> {
  var status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: status,
            onChanged: (value) {
              setState(() {
                status = value;
              });
            },
            inactiveTrackColor: AppColors.primaryGreen,
            activeTrackColor: AppColors.primaryGreen,
            activeColor: AppColors.primaryGreen,
          ),
        ],
      ),
    );
  }
}

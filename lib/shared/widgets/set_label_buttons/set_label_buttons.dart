import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import '../divider/divider_veritcal_widget.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrymaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrymaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelBtton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style:
                  this.enablePrymaryColor ? AppTextStyles.buttonPrimary : null,
            ),
          ),
          DividerVerticalWidget(),
          Expanded(
            child: LabelBtton(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}

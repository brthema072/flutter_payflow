import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final Function() onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 50.0,
          child: Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16.0,
                  ),
                  Image.asset(AppImages.google),
                  SizedBox(
                    width: 16.0,
                  ),
                  Container(
                    height: 56,
                    width: 1,
                    color: AppColors.stroke,
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Entrar com Google",
                      style: AppTextStyles.buttonGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

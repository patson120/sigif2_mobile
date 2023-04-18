import 'package:flutter/material.dart';
import 'package:sigif2/theme/Palette.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? bordered;
  final bool? circularIndicator;
  final double? opacity;
  final Color? borderColor;
  final Function()? onTap;
  const CustomButton(
      {super.key,
      this.borderRadius,
      this.onTap,
      this.textColor,
      this.backgroundColor,
      this.bordered,
      this.circularIndicator,
      this.opacity,
      this.borderColor,
      required this.title,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: opacity ?? 1,
        child: Container(
          height: height ?? 45,
          width: width ?? MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: backgroundColor ?? Palette.primaryGreenColor,
              border: Border.all(
                  width: bordered == true ? 1.6 : 0,
                  color: borderColor ?? Palette.borderGreyColor),
              borderRadius: BorderRadius.circular(borderRadius ?? 10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circularIndicator == true
                  ? Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(),
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  : const SizedBox(),
              Text(
                title,
                style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

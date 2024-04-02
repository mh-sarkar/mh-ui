import 'package:flutter/material.dart';
import 'package:mh_ui/utils/color/custom_color.dart';

/// [CustomButton] class custom button widget
/// This class is used to create a custom button
/// If you set your application primary color then it will use that color using [CustomColor.kPrimaryColor]. Here [primary] is used to set the button color.
/// This button has a [isDisable] property to disable the button. We can set the [disableColor] to change the disable button color.
/// Only one required property is [label] other properties are optional. If you don't set the optional properties then it will use the default value.
/// This button has a [loading] property to show the loading indicator in the button. We can set the [loadingColor] to change the loading indicator color.
/// We can set the [prefixImage] and [suffixImage] to show the image before and after the label. We can set the [prefixImageHeight], [prefixImageWidth], [prefixImageColor], [suffixImageHeight], [suffixImageWidth], [suffixImageColor] to change the image properties.
/// [elevation] is used to set the elevation of the button. [boxShadowColor] is used to set the shadow color of the button.
/// [borderColor] is used to set the border color of the button. [labelColor] is used to set the label color of the button.
/// [fontSize] is used to set the font size of the label. [fontWeight] is used to set the font weight of the label.
/// [iconData] is used to set the icon before the label. [height] is used to set the height of the button.
/// [borderWidth] is used to set the border width of the button. [isBorder] is used to set the border of the button.
/// [width] is used to set the width of the button. [borderRadiusAll] is used to set the border radius of the button. [borderRadius] is used to set custom border radius of the button.
///
/// Example:
///
/// ```dart
/// CustomButton(
///  label: 'Login',
///  onPressed: () {
///  print('Login');
///  },
///  primary: Colors.red,
///  borderColor: Colors.red,
///  labelColor: Colors.white,
///  fontSize: 16,
///  fontWeight: FontWeight.bold,
///  prefixImage: 'assets/images/login.png',
/// );
/// ```
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.primary,
    this.borderColor,
    this.labelColor,
    this.fontSize,
    this.fontWeight,
    this.labelStyle,
    this.iconData,
    this.height,
    this.borderWidth,
    this.elevation,
    this.boxShadowColor,
    this.isBorder = false,
    this.width,
    this.borderRadiusAll,
    this.marginHorizontal,
    this.marginVertical,
    this.margin,
    this.contentPadding,
    this.contentHorizontalPadding,
    this.contentVerticalPadding,
    this.padding,
    this.isDisable = false,
    this.prefixImage,
    this.suffixImage,
    this.suffixImageHeight,
    this.suffixImageWidth,
    this.suffixImageColor,
    this.prefixImageHeight,
    this.prefixImageWidth,
    this.prefixImageColor,
    this.loading = false,
    this.loadingColor,
    this.disableColor,
    this.loadingHeight,
    this.loadingWidth,
    this.loadingStrokeWidth = 4.0,
    this.borderRadius,
  }) : super(key: key);

  /// [label] is used to set the button label
  /// This is a required property
  /// This is a string type property
  /// This is a mandatory property
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomButton(
  /// label: 'Login',
  /// );
  /// ```
  final String label;

  /// [onPressed] is used to set the button action
  /// This is an optional property
  /// This is a function type property
  ///
  /// Example:
  ///
  /// ```dart
  /// CustomButton(
  /// label: 'Login',
  /// onPressed: () {
  /// print('Login');
  /// },
  /// );
  final Function()? onPressed;

  /// [primary] is used to set the button color
  /// This is an optional property
  /// This is a color type property
  final Color? primary;

  /// [labelColor] is used to set the label color of the button
  /// This is an optional property
  /// This is a color type property
  final Color? labelColor;

  /// [fontSize] is used to set the font size of the label
  /// This is an optional property
  /// This is a double type property
  final double? fontSize;

  /// [fontWeight] is used to set the font weight of the label
  /// This is an optional property
  /// This is a font weight type property
  final FontWeight? fontWeight;

  /// [labelStyle] is used to set the label style of the button
  /// This is an optional property
  /// This is a text style type property
  final TextStyle? labelStyle;

  /// [boxShadowColor] is used to set the shadow color of the button
  /// This is an optional property
  /// This is a color type property
  final Color? boxShadowColor;

  /// [borderColor] is used to set the border color of the button
  /// This is an optional property
  /// This is a color type property
  final Color? borderColor;

  /// [marginHorizontal] is used to set the horizontal margin of the button
  /// This is an optional property
  /// This is a double type property
  final double? marginHorizontal;

  /// [marginVertical] is used to set the vertical margin of the button
  /// This is an optional property
  /// This is a double type property
  final double? marginVertical;

  /// [margin] is used to set the margin of the button
  /// This is an optional property
  /// This is a EdgeInsetsGeometry type property
  final EdgeInsetsGeometry? margin;

  /// [height] is used to set the height of the button
  /// This is an optional property
  /// This is a double type property
  final double? height;

  /// [elevation] is used to set the elevation of the button
  /// This is an optional property
  /// This is a double type property
  final double? elevation;

  /// [contentPadding] is used to set the content padding of the button
  /// This is an optional property
  /// This is a double type property
  final double? contentPadding;

  /// [contentHorizontalPadding] is used to set the content horizontal padding of the button
  /// This is an optional property
  /// This is a double type property
  final double? contentHorizontalPadding;

  /// [contentVerticalPadding] is used to set the content vertical padding of the button
  /// This is an optional property
  /// This is a double type property
  final double? contentVerticalPadding;

  /// [padding] is used to set the padding of the button
  /// This is an optional property
  /// This is a EdgeInsetsGeometry type property
  final EdgeInsetsGeometry? padding;

  /// [width] is used to set the width of the button
  /// This is an optional property
  /// This is a double type property
  final double? width;

  /// [borderWidth] is used to set the border width of the button
  /// This is an optional property
  /// This is a double type property
  final double? borderWidth;

  /// [borderRadiusAll] is used to set the border radius of the button
  /// This is an optional property
  /// This is a double type property
  final double? borderRadiusAll;

  /// [borderRadius] is used to set the custom border radius of the button
  /// This is an optional property
  /// This is a BorderRadiusGeometry type property
  final BorderRadiusGeometry? borderRadius;

  /// [iconData] is used to set the icon before the label
  /// This is an optional property
  /// This is a string type property
  final String? iconData;

  /// [isDisable] is used to disable the button
  /// This is an optional property
  /// This is a bool type property
  final bool isDisable;

  /// [isBorder] is used to set the border of the button
  /// This is an optional property
  /// This is a bool type property
  final bool isBorder;

  /// [prefixImage] is used to set the image before the label
  /// This is an optional property
  /// This is a string type property
  final String? prefixImage;

  /// [suffixImage] is used to set the image after the label
  /// This is an optional property
  /// This is a string type property
  final String? suffixImage;

  /// [prefixImageHeight] is used to set the height of the prefix image
  /// This is an optional property
  /// This is a double type property
  final double? prefixImageHeight;

  /// [prefixImageWidth] is used to set the width of the prefix image
  /// This is an optional property
  /// This is a double type property
  final double? prefixImageWidth;

  /// [prefixImageColor] is used to set the color of the prefix image
  /// This is an optional property
  /// This is a color type property
  final Color? prefixImageColor;

  /// [loadingColor] is used to set the loading indicator color
  /// This is an optional property
  /// This is a color type property
  final Color? loadingColor;

  /// [disableColor] is used to set the disable button color
  /// This is an optional property
  /// This is a color type property
  final Color? disableColor;

  /// [loadingHeight] is used to set the height of the loading indicator
  /// This is an optional property
  /// This is a double type property
  final double? loadingHeight;

  /// [loadingWidth] is used to set the width of the loading indicator
  /// This is an optional property
  /// This is a double type property
  final double? loadingWidth;

  /// [loadingStrokeWidth] is used to set the stroke width of the loading indicator
  /// This is an optional property
  /// This is a double type property
  final double loadingStrokeWidth;

  /// [suffixImageHeight] is used to set the height of the suffix image
  /// This is an optional property
  /// This is a double type property
  final double? suffixImageHeight;

  /// [suffixImageWidth] is used to set the width of the suffix image
  /// This is an optional property
  /// This is a double type property
  final double? suffixImageWidth;

  /// [suffixImageColor] is used to set the color of the suffix image
  /// This is an optional property
  /// This is a color type property
  final Color? suffixImageColor;

  /// [loading] is used to show the loading indicator in the button
  /// This is an optional property
  /// This is a bool type property
  final bool loading;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: height ?? 48,
      width: width ?? size.width,
      margin: margin ??
          EdgeInsets.symmetric(
            horizontal: marginHorizontal ?? 16,
            vertical: marginVertical ?? 36,
          ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 2.0),
            blurRadius: 12,
            color: boxShadowColor ?? const Color(0xffF37048).withOpacity(.12),
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: loading
            ? () {}
            : isDisable
                ? null
                : onPressed,
        style: ElevatedButton.styleFrom(
          splashFactory: isDisable ? NoSplash.splashFactory : null,
          disabledBackgroundColor: disableColor ?? (primary ?? CustomColor.kPrimaryColor).withOpacity(.5),
          disabledForegroundColor: disableColor ?? (primary ?? CustomColor.kPrimaryColor).withOpacity(.5),
          foregroundColor: primary ?? CustomColor.kPrimaryColor,
          backgroundColor: primary ?? CustomColor.kPrimaryColor,
          elevation: elevation,
          padding: padding ?? EdgeInsets.symmetric(horizontal: contentHorizontalPadding ?? contentPadding ?? 8, vertical: contentVerticalPadding ?? contentPadding ?? 8),
          shape: RoundedRectangleBorder(
            side: isBorder ? BorderSide(color: borderColor ?? Colors.black, width: 1) : BorderSide.none,
            borderRadius: borderRadius ?? BorderRadius.circular(borderRadiusAll ?? 4),
          ),
        ),
        child: loading
            ? SizedBox(
                height: loadingHeight ?? ((height ?? 48) - 15),
                width: loadingWidth ?? ((height ?? 48) - 15),
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: loadingStrokeWidth,
                    valueColor: AlwaysStoppedAnimation<Color>(loadingColor ?? Colors.white),
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixImage != null)
                    Image.asset(
                      prefixImage!,
                      width: prefixImageWidth,
                      height: prefixImageHeight,
                      color: prefixImageColor,
                    ),
                  if (prefixImage != null) const SizedBox(width: 8),
                  Text(label,
                      style: labelStyle ??
                          TextStyle(
                            fontSize: fontSize ?? 14,
                            fontWeight: fontWeight ?? FontWeight.w600,
                            color: labelColor ?? Colors.white,
                          )),
                  if (suffixImage != null) const SizedBox(width: 8),
                  if (suffixImage != null)
                    Image.asset(
                      suffixImage!,
                      color: suffixImageColor,
                      height: suffixImageHeight,
                      width: suffixImageWidth,
                    ),
                ],
              ),
      ),
    );
  }
}

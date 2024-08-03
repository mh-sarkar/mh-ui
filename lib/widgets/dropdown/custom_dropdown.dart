import 'package:flutter/material.dart';
import 'package:mh_ui/utils/color/custom_color.dart';
import 'package:mh_ui/utils/constant.dart';

/// [DropdownListType] enum to set the dropdown list type.
/// This enum is used to set the dropdown list type.
/// This is very useful for setting the dropdown list type.
/// This is a global enum.
/// This is used in custom_dropdown.dart file.
enum DropdownListType { none, object, json }

/// [TitleDropdown] widget use for dropdown with title or without title.
/// Here [dwValue] is used to set the dropdown value.
/// Here [title] is used to set the dropdown title.
/// Here [dwItems] is used to set the dropdown items.
/// Here [viewKey] is used to set the dropdown view key.
/// Here [valueKey] is used to set the dropdown value key.
/// Here [isTitle] is used to set the dropdown title visibility.
///
/// Example: For Normal Dropdown with title
///
/// ```dart
/// String? dwValue;
/// TitleDropdown(
///  dwItems: ['One', 'Two', 'Three'],
///  dwValue: dwValue,
///  title: 'Normal Dropdown',
///  onChange: (value) {
///   print(value); //One
///   dwValue = value;
///   setState(() {});
///  },
///  )
///  ```
///
/// Example: For Dropdown with json object
///
/// ```dart
/// String? dwValue;
/// TitleDropdown(
/// dwItems: [
///  {'name': 'One', 'id': 1},
///  {'name': 'Two', 'id': 2},
///  {'name': 'Three', 'id': 3},
///  ],
///  dwValue: dwValue,
///  type: DropdownListType.json,
///  title: 'Object Dropdown',
///  viewKey: 'name',
///  valueKey: 'id',
///  onChange: (value) {
///  print(value); //1
///  dwValue = value;
///  setState(() {});
///  },
///  )
///  ```
///
/// Example: For Dropdown with object
///
/// ```dart
/// final List<DropdownModel> dwItems = [
/// DropdownModel(name: 'One', id: 1),
/// DropdownModel(name: 'Two', id: 2),
/// DropdownModel(name: 'Three', id: 3),
/// ];
/// String? dwValue;
/// TitleDropdown(
/// dwItems: dwItems,
/// dwValue: dwValue,
/// type: DropdownListType.object,
/// title: 'Object Dropdown',
/// viewKey: 'name',
/// valueKey: 'id',
/// onChange: (value) {
/// print(value); //1
/// dwValue = value;
/// setState(() {});
/// },
/// )
/// ```
///
/// Example: For Dropdown with additional flag text
///
/// ```dart
/// String? dwValue;
/// TitleDropdown(
/// dwItems: ['One', 'Two', 'Three'],
/// dwValue: dwValue,
/// title: 'Normal Dropdown',
/// additionFlagText: 'Flag', // Additional flag text using for dropdown item visual purpose like [One Flag, Two Flag, Three Flag]
/// onChange: (value) {
/// print(value); //One
/// dwValue = value;
/// setState(() {});
/// },
/// )
/// ```
///
/// Example: For Dropdown with custom style
///
/// ```dart
/// String? dwValue;
/// TitleDropdown(
/// dwItems: ['One', 'Two', 'Three'],
/// dwValue: dwValue,
/// title: 'Normal Dropdown',
/// onChange: (value) {
/// print(value); //One
/// dwValue = value;
/// setState(() {});
/// },
/// height: 48,
/// width: 200,
/// marginHorizontal: 16,
/// marginVertical: 12,
/// circularBorderRadius: 5,
/// hintText: 'Select',
/// textColor: Colors.black,
/// rightIconColor: Colors.black,
/// borderColor: Colors.black.withOpacity(.14),
/// bgColor: Colors.white,
/// itemColor: Colors.black,
/// fillColor: Colors.white,
/// rightIconBgColor: Colors.black,
/// hintTextStyle: TextStyle(
/// fontWeight: FontWeight.w400,
/// fontSize: 14,
/// color: Colors.black.withOpacity(.50),
/// ),
/// textStyle: TextStyle(
/// color: Colors.black,
/// fontWeight: FontWeight.w600,
/// fontSize: 12,
/// ),
/// titleStyle: TextStyle(
/// fontWeight: FontWeight.w600,
/// fontSize: 14,
/// color: Colors.black,
/// ),
/// dropDownIconData: Icons.keyboard_arrow_down_outlined,
/// horizontalContentPadding: 8,
/// isFillColor: false,
/// isBorder: true,
/// isTitle: true,
/// isRightIcon: true,
/// )
/// ```
///
class TitleDropdown extends StatelessWidget {
  /// [dwValue] is used to set the dropdown value. When the dropdown value is selected then the value should be updated in the [dwValue]. This field is nullable.
  final String? dwValue;

  /// [title] is used to set the dropdown title. This field is nullable. If the title is not set then the title will not be visible.
  final String? title;

  /// [dwItems] is used to set the dropdown items. The dropdown items should be a list of dynamic type. That means the dropdown items can be a list of
  /// string or list of object or list of json. Using the [type] field we can set the dropdown list type. Using the [viewKey] and [valueKey] field we can set the dropdown view
  /// key and value key for object or json type dropdown list. This field is required.
  final List<dynamic> dwItems;

  /// [viewKey] is used to set the dropdown view key. This field is nullable. This field is used when the dropdown list type is object or json. viewKey is used to set the view
  /// key of the dropdown list. That means the view key is used to show which field of the object or json should be shown in the dropdown list to be very specific. User can set
  /// your own view key from the object or json.
  final String? viewKey;

  /// [valueKey] is used to set the dropdown value key. This field is nullable. This field is used when the dropdown list type is object or json. valueKey is used to set the value
  /// key of the dropdown list. That means the value key is used to set which field of the object or json should be set as the dropdown value. User can set your own value key
  /// from the object or json.
  final String? valueKey;

  /// [onChange] is used to set the dropdown value. When the dropdown value is selected then the value should be updated in the [dwValue]. This field is  used to set the
  /// dropdown value. When the dropdown value is selected then the value should be updated in the [dwValue]. This field is required.
  final Function onChange;

  /// [height] is used to set the dropdown height. This field is nullable. If the height is not set then the default height will be 44.
  final double? height;

  /// [width] is used to set the dropdown width. This field is nullable. If the width is not set then the default width will be double.infinity.
  final double? width;

  /// [marginHorizontal] is used to set the dropdown horizontal margin. This field is nullable. If the marginHorizontal is not set then the default marginHorizontal will be 16.
  final double? marginHorizontal;

  /// [marginVertical] is used to set the dropdown vertical margin. This field is nullable. If the marginVertical is not set then the default marginVertical will be 12.
  final double? marginVertical;

  /// [marginTop] is used to set the dropdown top margin. This field is nullable. If the marginTop is not set then the default marginTop will be 12.
  final double? marginTop;

  /// [marginLeft] is used to set the dropdown left margin. This field is nullable. If the marginLeft is not set then the default marginLeft will be 16.
  final double? marginLeft;

  /// [marginRight] is used to set the dropdown right margin. This field is nullable. If the marginRight is not set then the default marginRight will be 16.
  final double? marginRight;

  /// [marginBottom] is used to set the dropdown bottom margin. This field is nullable. If the marginBottom is not set then the default marginBottom will be 12.
  final double? marginBottom;

  /// [margin] is used to set the dropdown margin. This field is nullable. If the margin is not set then the default margin will be
  /// ```dart
  /// EdgeInsets.symmetric(
  ///  horizontal: 16,
  ///  vertical: 12,
  ///  )
  ///  ```
  final EdgeInsetsGeometry? margin;

  /// [circularBorderRadius] is used to set the dropdown circular border radius. This field is nullable. If the circularBorderRadius is not set then the default circularBorderRadius will be 5.
  final double? circularBorderRadius;

  /// [hintText] is used to set the dropdown hint text. This field is nullable. If the hintText is not set then the default hintText will be empty string.
  final String? hintText;

  /// [textColor] is used to set the dropdown text color. This field is nullable. If the textColor is not set then the default textColor will be Colors.black.
  final Color? textColor;

  /// [rightIconColor] is used to set the dropdown right icon color. This field is nullable. If the rightIconColor is not set then the default rightIconColor will be CustomColor.kTextColor.
  final Color? rightIconColor;

  /// [borderColor] is used to set the dropdown border color. This field is nullable. If the borderColor is not set then the default borderColor will be Colors.black.withOpacity(.14).
  final Color? borderColor;

  /// [bgColor] is used to set the dropdown background color. This field is nullable. If the bgColor is not set then the default bgColor will be Color(0xffFCFCFA).
  final Color? bgColor;

  /// [itemColor] is used to set the dropdown item color. This field is nullable. If the itemColor is not set then the default itemColor will be Colors.black.
  final Color? itemColor;

  /// [horizontalContentPadding] is used to set the dropdown horizontal content padding. This field is nullable. If the horizontalContentPadding is not set then the default horizontalContentPadding will be 8.
  final Color? fillColor;

  /// [rightIconBgColor] is used to set the dropdown right icon background color. This field is nullable. If the rightIconBgColor is not set then the default rightIconBgColor will be CustomColor.kPrimaryColor.
  final Color? rightIconBgColor;

  /// [hintTextStyle] is used to set the dropdown hint text style. This field is nullable. If the hintTextStyle is not set then the default hintTextStyle will be
  /// ```dart
  /// TextStyle(
  /// fontWeight: FontWeight.w400,
  /// fontSize: 14,
  /// color: Colors.black.withOpacity(.50),
  /// )
  /// ```
  final TextStyle? hintTextStyle;

  /// [textStyle] is used to set the dropdown text style. This field is nullable. If the textStyle is not set then the default textStyle will be
  /// ```dart
  /// TextStyle(
  /// color: Colors.black,
  /// fontWeight: FontWeight.w600,
  /// fontSize: 12,
  /// )
  /// ```
  final TextStyle? textStyle;

  /// [titleStyle] is used to set the dropdown title style. This field is nullable. If the titleStyle is not set then the default titleStyle will be
  /// ```dart
  /// TextStyle(
  /// fontWeight: FontWeight.w600,
  /// fontSize: 14,
  /// color: Colors.black,
  /// )
  /// ```
  final TextStyle? titleStyle;

  /// [dropDownIconData] is used to set the dropdown icon data. This field is nullable. If the dropDownIconData is not set then the default dropDownIconData will be Icons.keyboard_arrow_down_outlined.
  final IconData? dropDownIconData;

  /// [horizontalContentPadding] is used to set the dropdown horizontal content padding. This field is nullable. If the horizontalContentPadding is not set then the default
  /// horizontalContentPadding will be 8. This field is used to set the horizontal content padding of the dropdown.
  final double? horizontalContentPadding;

  /// [isFillColor] is used to set the dropdown fill color. This field is nullable. If the isFillColor is not set then the default isFillColor will be false. This field is used
  /// to set the dropdown fill color. If the isFillColor is true then the dropdown will be filled with the fill color.
  final bool isFillColor;

  /// [isBorder] is used to set the dropdown border. This field is nullable. If the isBorder is not set then the default isBorder will be true. This field is used to set the
  /// dropdown border. If the isBorder is true then the dropdown will be shown with the border.
  final bool isBorder;
  // final bool isTitle;

  /// [isRightIcon] is used to set the dropdown right icon. This field is nullable. If the isRightIcon is not set then the default isRightIcon will be true. This field is used
  /// to set the dropdown right icon. If the isRightIcon is true then the dropdown will be shown with the right icon.
  final bool isRightIcon;

  /// [type] is used to set the dropdown list type. This field is nullable. If the type is not set then the default type will be DropdownListType.none. This field is used to set
  /// the dropdown list type. Using the type field we can set the dropdown list type. Using the type field we can set the dropdown list type. The dropdown list type can be
  /// DropdownListType.none or DropdownListType.object or DropdownListType.json.
  final DropdownListType? type;

  /// [additionFlagText] is used to set the dropdown additional flag text. This field is nullable. If the additionFlagText is not set then the default additionFlagText will be
  /// null. This field is used to set the dropdown additional flag text. This field is used for dropdown item visual purpose like [One Flag, Two Flag, Three Flag].
  final String? additionFlagText;

  const TitleDropdown({
    super.key,
    required this.dwItems,
    this.title,
    required this.dwValue,
    required this.onChange,
    this.height,
    this.width,
    this.bgColor,
    this.rightIconColor,
    this.borderColor,
    this.hintText,
    this.textColor,
    this.itemColor,
    this.circularBorderRadius,
    this.hintTextStyle,
    this.textStyle,
    this.titleStyle,
    this.horizontalContentPadding,
    this.isFillColor = false,
    this.isBorder = true,
    // this.isTitle = true,
    this.isRightIcon = true,
    this.viewKey,
    this.valueKey,
    this.type = DropdownListType.none,
    this.marginHorizontal,
    this.marginVertical,
    this.marginTop,
    this.marginLeft,
    this.marginRight,
    this.marginBottom,
    this.margin,
    this.fillColor,
    this.dropDownIconData,
    this.rightIconBgColor,
    this.additionFlagText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          EdgeInsets.symmetric(
            horizontal: marginHorizontal ?? 16,
            vertical: marginVertical ?? 12,
          ).copyWith(
            left: marginLeft ?? marginHorizontal ?? 16,
            top: marginTop ?? marginVertical ?? 12,
            right: marginRight ?? marginHorizontal ?? 16,
            bottom: marginBottom ?? marginVertical ?? 12,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(title ?? '',
                style: titleStyle ??
                    const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    )),
          if (title != null) space2C,
          Container(
            // padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 16),
            width: width ?? double.infinity,
            height: height ?? 44,
            decoration: BoxDecoration(
                color: fillColor ?? const Color(0xffFCFCFA),
                border: isBorder ? Border.all(color: borderColor ?? Colors.black.withOpacity(.14), width: 1) : null,
                borderRadius: BorderRadius.circular(circularBorderRadius ?? 5),
                boxShadow: [BoxShadow(offset: const Offset(0.0, 4.0), blurRadius: 16, color: const Color(0xff25251C).withOpacity(.05))]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(circularBorderRadius ?? 5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: const Color(0xffFCFCFA),
                  hint: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: horizontalContentPadding ?? 8),
                    child: Text(
                      hintText ?? '',
                      style: hintTextStyle ??
                          TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black.withOpacity(.50),
                          ),
                    ),
                  ),
                  icon: Container(
                    margin: EdgeInsets.only(right: horizontalContentPadding ?? 8),
                    height: (height ?? 44) - 8,
                    width: (height ?? 44) - 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: rightIconBgColor ?? CustomColor.kPrimaryColor,
                    ),
                    child: Center(
                      child: Icon(dropDownIconData ?? Icons.keyboard_arrow_down_outlined, color: rightIconColor ?? CustomColor.kTextColor),
                    ),
                  ),
                  isExpanded: true,
                  isDense: true,
                  value: dwValue,
                  onChanged: (newValue) {
                    onChange(newValue);
                  },
                  items: dwItems
                      .map((e) => type == DropdownListType.object ? e.toJson() : e)
                      .toList()
                      .map(
                        (item) => DropdownMenuItem<String>(
                          value: type == DropdownListType.none ? item : item[valueKey],
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: horizontalContentPadding ?? 8),
                              child: Text(
                                (type == DropdownListType.none ? item : item[viewKey]) + (additionFlagText != null ? ' $additionFlagText' : ''),
                                style: textStyle ??
                                    const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

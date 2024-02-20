import 'package:flutter/material.dart';
import 'package:mh_ui/utils/constant.dart';
import 'package:mh_ui/utils/global.dart';
import 'package:mh_ui/utils/number_utils.dart';

enum RatingTextPosition {
  left,
  right,
  top,
  bottom,
}

class RatingWidget extends StatelessWidget {
  final double rating;
  final bool showRatingValue;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? ratingIconSize;
  @Deprecated('Use [textColor] [ratingColor] instead')
  final Color? color;
  final Color? textColor;
  final Color? ratingColor;
  final Color? emptyColor;
  final double? outOf;
  final RatingTextPosition? ratingTextPosition;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  const RatingWidget({
    super.key,
    required this.rating,
    this.showRatingValue = true,
    this.fontSize,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    @Deprecated('Use [textColor] [ratingColor] instead') this.color,
    this.textColor = const Color(0xffFFA873),
    this.ratingColor = const Color(0xffFFA873),
    this.ratingIconSize = 14,
    this.emptyColor,
    this.ratingTextPosition = RatingTextPosition.left,
    this.outOf,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showRatingValue && ratingTextPosition == RatingTextPosition.top)
          Text(
            localizationCheckForNumber(rating.toStringAsFixed(1)) + '/' + localizationCheckForNumber(outOf?.toStringAsFixed(0)),
            style: TextStyle(color: color ?? textColor, fontSize: fontSize ?? 16, fontWeight: fontWeight),
          ),
        if (showRatingValue && ratingTextPosition == RatingTextPosition.top) space1C,
        Row(
          mainAxisAlignment: mainAxisAlignment!,
          crossAxisAlignment: crossAxisAlignment!,
          children: [
            if (showRatingValue && ratingTextPosition == RatingTextPosition.left)
              Text(
                localizationCheckForNumber(rating.toStringAsFixed(1)) + '/' + localizationCheckForNumber(outOf?.toStringAsFixed(0)),
                style: TextStyle(color: color ?? textColor, fontSize: fontSize ?? 16, fontWeight: fontWeight),
              ),
            if (showRatingValue && ratingTextPosition == RatingTextPosition.left) space1R,
            Icon(rating > 0 && rating < 1 ? Icons.star_half : Icons.star, color: rating > 0 ? color ?? ratingColor : emptyColor ?? const Color(0xff8C8FA5), size: ratingIconSize),
            Icon(rating > 1 && rating < 2 ? Icons.star_half : Icons.star, color: rating > 1 ? color ?? ratingColor : emptyColor ?? const Color(0xff8C8FA5), size: ratingIconSize),
            Icon(rating > 2 && rating < 3 ? Icons.star_half : Icons.star, color: rating > 2 ? color ?? ratingColor : emptyColor ?? const Color(0xff8C8FA5), size: ratingIconSize),
            Icon(rating > 3 && rating < 4 ? Icons.star_half : Icons.star, color: rating > 3 ? color ?? ratingColor : emptyColor ?? const Color(0xff8C8FA5), size: ratingIconSize),
            Icon(rating > 4 && rating < 5 ? Icons.star_half : Icons.star, color: rating > 4 ? color ?? ratingColor : emptyColor ?? const Color(0xff8C8FA5), size: ratingIconSize),
            if (showRatingValue && ratingTextPosition == RatingTextPosition.right) space1R,
            if (showRatingValue && ratingTextPosition == RatingTextPosition.right)
              Text(
                localizationCheckForNumber(rating.toStringAsFixed(1)) + '/' + localizationCheckForNumber(outOf?.toStringAsFixed(0)),
                style: TextStyle(color: color ?? textColor, fontSize: fontSize ?? 16, fontWeight: fontWeight),
              ),
          ],
        ),
        if (showRatingValue && ratingTextPosition == RatingTextPosition.bottom) space1C,
        if (showRatingValue && ratingTextPosition == RatingTextPosition.bottom)
          Text(
            localizationCheckForNumber(rating.toStringAsFixed(1)) + '/' + localizationCheckForNumber(outOf?.toStringAsFixed(0)),
            style: TextStyle(color: color ?? textColor, fontSize: fontSize ?? 16, fontWeight: fontWeight),
          ),
      ],
    );
  }
}

class GiveARatingWidget extends StatefulWidget {
  const GiveARatingWidget({super.key, this.rating = 0, this.onRating, this.enabled = true, this.isDebug = false});
  final int? rating;
  final bool enabled;
  final bool isDebug;

  final Function(int)? onRating;
  @override
  State<GiveARatingWidget> createState() => _GiveARatingWidgetState();
}

class _GiveARatingWidgetState extends State<GiveARatingWidget> {
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _selectedIndex = widget.rating! <= 0 ? 0 : widget.rating! - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          5,
          (index) {
            return GestureDetector(
              onTap: widget.enabled
                  ? () {
                      if (widget.isDebug) {
                        globalLogger.d(index);
                      }
                      _selectedIndex = index;
                      setState(() {});
                      if (widget.onRating != null) widget.onRating!(index + 1);
                    }
                  : null,
              child: Icon(Icons.star, color: _selectedIndex >= index ? const Color(0xffFFA873) : Colors.grey, size: 16),
            );
          },
        ),
      ],
    );
  }
}

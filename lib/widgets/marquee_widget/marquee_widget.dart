import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A [MarqueeWidget] is a custom widget that scrolls its child back and forth
/// horizontally or vertically, creating a marquee effect.
///
/// The widget has three main properties that control the animation:
/// - [animationDuration] controls the duration of the scrolling animation.
/// - [backDuration] controls the duration of the scrolling back animation.
/// - [pauseDuration] controls the duration of the pause before changing direction.
///
/// Example usage:
///
/// ```dart
/// MarqueeWidget(
///   child: Text('This is a scrolling marquee!'),
///   direction: Axis.horizontal,
///   animationDuration: Duration(seconds: 6),
///   backDuration: Duration(seconds: 1),
///   pauseDuration: Duration(seconds: 1),
/// )
/// ```
class MarqueeWidget extends StatefulWidget {
  /// The widget to be displayed and scrolled.
  final Widget child;

  /// The direction of the scrolling. It can be either [Axis.horizontal] or [Axis.vertical].
  final Axis direction;

  /// The duration of the scrolling animation from start to end.
  final Duration animationDuration;

  /// The duration of the scrolling back animation from end to start.
  final Duration backDuration;

  /// The duration of the pause before changing the scrolling direction.
  final Duration pauseDuration;

  /// Creates a [MarqueeWidget].
  ///
  /// The [child] parameter is required and must not be null.
  /// The [direction] parameter defaults to [Axis.horizontal].
  /// The [animationDuration], [backDuration], and [pauseDuration] parameters
  /// have default values of 6000ms, 800ms, and 800ms respectively.
  const MarqueeWidget({
    Key? key,
    required this.child,
    this.direction = Axis.horizontal,
    this.animationDuration = const Duration(milliseconds: 6000),
    this.backDuration = const Duration(milliseconds: 800),
    this.pauseDuration = const Duration(milliseconds: 800),
  }) : super(key: key);

  @override
  _MarqueeWidgetState createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    // Initializes the ScrollController with an initial scroll offset of 0.0.
    scrollController = ScrollController(initialScrollOffset: 0.0);
    // Adds a post-frame callback to start the scrolling after the initial frame.
    WidgetsBinding.instance.addPostFrameCallback(scroll);
  }

  @override
  void dispose() {
    // Disposes the ScrollController to release resources.
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: widget.child,
      scrollDirection: widget.direction,
      controller: scrollController,
    );
  }

  /// Scrolls the content back and forth indefinitely.
  ///
  /// This method uses a loop to animate the scrolling to the end, pause,
  /// then scroll back to the start and pause again, creating an infinite loop.
  void scroll(_) async {
    while (scrollController.hasClients) {
      // Pauses before starting the scroll.
      await Future.delayed(widget.pauseDuration);
      if (scrollController.hasClients) {
        // Animates to the maximum scroll extent.
        await scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: widget.animationDuration,
          curve: Curves.linear,
        );
      }
      // Pauses before starting the scroll back.
      await Future.delayed(widget.pauseDuration);
      if (scrollController.hasClients) {
        // Animates back to the starting position.
        await scrollController.animateTo(
          0.0,
          duration: widget.backDuration,
          curve: Curves.easeOut,
        );
      }
    }
  }
}

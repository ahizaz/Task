import 'package:flutter/material.dart';

class GradientSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  const GradientSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    required TextDirection textDirection,
  }) {
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Radius radius = Radius.circular(trackRect.height / 2);

    // 🔵 Active gradient
    final Paint activePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff4E91FD),
          Color(0xff080B7F),
        ],
      ).createShader(trackRect);

    // ⚪ Inactive solid color
    final Paint inactivePaint = Paint()
      ..color = const Color(0xffB6B8D0);

    // 🟦 Active rounded part
    final RRect activeRRect = RRect.fromRectAndCorners(
      Rect.fromLTRB(
        trackRect.left,
        trackRect.top,
        thumbCenter.dx,
        trackRect.bottom,
      ),
      topLeft: radius,
      bottomLeft: radius,
      topRight: radius,
      bottomRight: radius,
    );

    // ⬜ Inactive rounded part
    final RRect inactiveRRect = RRect.fromRectAndCorners(
      Rect.fromLTRB(
        thumbCenter.dx,
        trackRect.top,
        trackRect.right,
        trackRect.bottom,
      ),
      topRight: radius,
      bottomRight: radius,
    );

    context.canvas.drawRRect(activeRRect, activePaint);
    context.canvas.drawRRect(inactiveRRect, inactivePaint);
  }

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 4.0;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;

    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

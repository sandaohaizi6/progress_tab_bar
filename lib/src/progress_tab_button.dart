import 'package:flutter/material.dart';

class ProgressTabButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String label;
  final int position;
  final double outlineWidth;
  final Color labelColor;
  final Color color;
  final bool filled;
  final double fontSize;
  double spacing;

  ProgressTabButton({
    required this.width,
    required this.height,
    required this.onPressed,
    required this.label,
    required this.position,
    required this.outlineWidth,
    required this.labelColor,
    required this.color,
    required this.filled,
    this.spacing = 0,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    bool _isFirst = false;
    if (position == 0) {
      _isFirst = true;
    }
    return InkWell(
        onTap: onPressed,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            color: labelColor,
          ),
        )
        // RawMaterialButton(
        //   child: CustomPaint(
        //     isComplex: false,
        //     size: Size(width, height),
        //     painter: ButtonPainter(
        //         label: label,
        //         isFirst: _isFirst,
        //         strokeWidth: outlineWidth,
        //         labelColor: labelColor,
        //         filled: filled,
        //         fontSize: fontSize,
        //         buttonColor: color),
        //   ),
        //   //TODO:关闭点击效果
        //   onPressed: null,
        // )
        );
  }
}

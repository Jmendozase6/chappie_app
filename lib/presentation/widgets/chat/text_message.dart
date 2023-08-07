import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mental_health/domain/entities/entities.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    super.key,
    required this.color,
    required this.text,
    required this.origin,
  });

  final Color color;
  final String text;
  final OriginMessage origin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: REdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: origin == OriginMessage.bard ? Colors.black : Colors.white,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: origin == OriginMessage.bard ? Colors.black : Colors.white),
      ),
    );
  }
}

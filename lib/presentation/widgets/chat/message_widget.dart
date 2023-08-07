import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mental_health/config/theme/app_colors.dart';
import 'package:mental_health/domain/entities/entities.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  Widget build(BuildContext context) {
    bool isBardMessage = message.origin == OriginMessage.bard;

    return Column(
      crossAxisAlignment:
          isBardMessage ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Align(
          alignment:
              isBardMessage ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            padding: REdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(vertical: 5.h),
            // width: 0.7.sw,
            margin: EdgeInsets.only(
              left: isBardMessage ? 10.w : 100.w,
              right: isBardMessage ? 100.w : 10.w,
              top: 3.h,
              bottom: 3.h,
            ),
            // width: 100.w,

            alignment:
                isBardMessage ? Alignment.centerLeft : Alignment.centerRight,
            decoration: BoxDecoration(
              color:
                  isBardMessage ? AppColors.bardMessage : AppColors.myMessage,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: Colors.black45,
              ),
            ),
            child: Text(
              message.content,
              style: TextStyle(
                color: isBardMessage ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health/config/theme/app_colors.dart';
import 'package:mental_health/domain/entities/role.dart';
import 'package:mental_health/presentation/providers/message_repository_provider.dart';
import 'package:mental_health/utils/app_router/router_utils.dart';
import 'package:provider/provider.dart';

final colors = <Color>[
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.blue,
];

class RoleCard extends StatelessWidget {
  const RoleCard({super.key, required this.role});

  final Role role;

  @override
  Widget build(BuildContext context) {
    final messagesProvider = context.watch<MessageRepositoryProvider>();

    return GestureDetector(
      onTap: () {
        messagesProvider.role = role;
        messagesProvider.initChat();
        context.pushNamed(AppRoutes.chat.routeName);
      },
      child: Container(
        margin: REdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Image.asset(
                role.image,
                height: 100.r,
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Text(
                role.rol,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

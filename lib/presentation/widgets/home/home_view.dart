import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_health/config/theme/app_colors.dart';
import 'package:mental_health/domain/entities/role.dart';
import 'package:mental_health/presentation/widgets/shared/message_field_box.dart';
import 'package:mental_health/presentation/widgets/shared/role_card.dart';
import 'package:mental_health/utils/app_router/router_utils.dart';
import 'package:mental_health/utils/constants/app_images.dart';
import 'package:mental_health/utils/constants/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            AppConstants.homeScreenTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
          Image.asset(
            AppImages.chatBot,
            width: 0.6.sw,
          ),
          SizedBox(
            width: 0.7.sw,
            child: const Divider(color: AppColors.primaryColor),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                ...roles.map(
                  (role) => RoleCard(role: role),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => context.pushNamed(AppRoutes.chat.routeName),
            child: AbsorbPointer(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: MessageFieldBox(
                  onValue: (value) {},
                  myMessageController: TextEditingController(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

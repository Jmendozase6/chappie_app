import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({
    super.key,
    required this.onValue,
    required this.myMessageController,
  });

  final ValueChanged<String> onValue;
  final TextEditingController myMessageController;

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        onPressed: () {
          final message = myMessageController.value.text;
          myMessageController.clear();
          onValue(message);
        },
        icon: const Icon(TablerIcons.send),
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: TextFormField(
        onTapOutside: (_) => focusNode.unfocus(),
        controller: myMessageController,
        decoration: inputDecoration,
        focusNode: focusNode,
        onFieldSubmitted: (value) {
          myMessageController.clear();
          focusNode.requestFocus();
          onValue(value);
        },
      ),
    );
  }
}

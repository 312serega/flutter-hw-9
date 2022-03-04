import 'package:flutter/material.dart';

import '../../../constans/staff_colors.dart';
import '../../../constans/staff_text_style.dart';
import '../../staff_main_screen/widgets/staff_users.dart';

class StaffUserScreenHead extends StatelessWidget {
  const StaffUserScreenHead({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 57,
          backgroundImage: AssetImage(StaffUsers().getUser(id).avatar),
        ),
        const SizedBox(height: 18),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            StaffUsers().getUser(id).name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: StaffColors.colorGray,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 11),
        Text(
          StaffUsers().getUser(id).position,
          style: StaffTextStyle.fontSize16fontNormalBlue,
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constans/staff_colors.dart';
import '../../../constans/staff_text_style.dart';

class StaffUserScreenHead extends StatelessWidget {
  const StaffUserScreenHead({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 57,
          backgroundImage: AssetImage('assets/images/user1.png'),
        ),
        const SizedBox(height: 18),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Жыпаркулов Мырзабек Жыпаркулович - id ($id)',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: StaffColors.colorGray,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 11),
        const Text(
          'Генеральный директор',
          style: StaffTextStyle.fontSize16fontNormalBlue,
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_img_src.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/staff_user_screen.dart';

class StaffCircleItem extends StatelessWidget {
  const StaffCircleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Color(0xff3B81EA),
      child: InkWell(
        child: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(StaffImgSrc.userAvatar),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StaffUserScreen(),
            ),
          );
        },
      ),
    );
  }
}

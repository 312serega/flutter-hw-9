import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_img_src.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/staff_user_screen.dart';

class StaffCircleItem extends StatelessWidget {
  const StaffCircleItem({Key? key, required this.userImage}) : super(key: key);
  final String userImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Color(0xff3B81EA),
          child: InkWell(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(userImage),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StaffUserScreen(
                    id: 3333,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_users.dart';

import '../../../constans/staff_colors.dart';

class StaffUserScreenInfo extends StatelessWidget {
  const StaffUserScreenInfo({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffEBECEE),
              width: 1,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 23),
          title: Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Text(
              'Направление',
              style: TextStyle(
                fontSize: 12,
                color: StaffColors.colorGrayLight,
              ),
            ),
          ),
          subtitle: Text(
            StaffUsers().getUser(id).branch,
            style: TextStyle(
                fontSize: 16,
                color: StaffColors.colorGray,
                fontWeight: FontWeight.w500),
          ),
        ),
        ListTile(
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffEBECEE),
              width: 1,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 23),
          title: Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Text(
              'Отдел',
              style: TextStyle(
                fontSize: 12,
                color: StaffColors.colorGrayLight,
              ),
            ),
          ),
          subtitle: Text(
            "Отдел управления",
            style: TextStyle(
                fontSize: 16,
                color: StaffColors.colorGray,
                fontWeight: FontWeight.w500),
          ),
        ),
        ListTile(
          shape: Border(
            bottom: BorderSide(
              color: Color(0xffEBECEE),
              width: 1,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 23),
          title: Padding(
            padding: EdgeInsets.only(bottom: 3),
            child: Text(
              'Телефон основной',
              style: TextStyle(
                fontSize: 12,
                color: StaffColors.colorGrayLight,
              ),
            ),
          ),
          subtitle: Text(
            "+996 555 345 543",
            style: TextStyle(
                fontSize: 16,
                color: StaffColors.colorGray,
                fontWeight: FontWeight.w500),
          ),
          trailing: Icon(
            Icons.phone,
            color: Color(0xff36CD72),
          ),
        ),
      ],
    );
  }
}

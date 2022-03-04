import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_text_style.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/staff_user_screen.dart';
import 'package:flutter_application_9_hw/screens/widgets/custom_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constans/staff_colors.dart';
import 'staff_users.dart';

class StaffUserListItem extends StatefulWidget {
  const StaffUserListItem({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  State<StaffUserListItem> createState() => _StaffUserListItemState();
}

class _StaffUserListItemState extends State<StaffUserListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StaffUserScreen(
                      id: widget.id,
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 21,
                    backgroundImage:
                        AssetImage(StaffUsers().getUser(widget.id).avatar),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      StaffUsers().getUser(widget.id).name,
                      style: StaffTextStyle.fontSize16fontNormalGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            child: const Icon(
              Icons.phone,
              color: Color(0xff36CD72),
            ),
            onTap: () {
              customeBottomSheet(context, widget.id);
            },
          )
        ],
      ),
    );
  }
}

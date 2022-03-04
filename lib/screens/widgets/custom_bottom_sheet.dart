import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constans/staff_colors.dart';
import '../../constans/staff_text_style.dart';
import '../staff_main_screen/widgets/staff_users.dart';

Future<void> _makePhoneCall(String phoneNumber) async {
  await launch(phoneNumber);
}

void customeBottomSheet(BuildContext context, int id) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    backgroundColor: Colors.white,
    builder: (context) => Container(
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(23, 27, 23, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Позвонить',
                        style: StaffTextStyle.fontSize20fontBoldGrey,
                      ),
                      const SizedBox(height: 13),
                      Text(
                        StaffUsers().getUser(id).name,
                        style: StaffTextStyle.fontSize16fontNormalGrey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffDEE1E6),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        size: 18,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 37),
          ListTile(
            shape: const Border(
              bottom: BorderSide(
                color: Color(0xffEBECEE),
                width: 1,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 23),
            title: const Padding(
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
              StaffUsers().getUser(id).phone,
              style: const TextStyle(
                  fontSize: 16,
                  color: StaffColors.colorGray,
                  fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(
              Icons.phone,
              color: Color(0xff36CD72),
            ),
            onTap: () => _makePhoneCall(StaffUsers().getUser(id).phone),
          ),
        ],
      ),
    ),
  );
}

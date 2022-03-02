import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_text_style.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/staff_user_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constans/staff_colors.dart';

// const String _url = 'https://www.megacom.kg/';

class StaffUserListItem extends StatefulWidget {
  const StaffUserListItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StaffUserListItem> createState() => _StaffUserListItemState();
}

class _StaffUserListItemState extends State<StaffUserListItem> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

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
                    builder: (context) => const StaffUserScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 21,
                    backgroundImage: AssetImage('assets/images/user1.png'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.title,
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
                  padding: const EdgeInsets.fromLTRB(23, 27, 23, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Позвонить',
                                  style: StaffTextStyle.fontSize20fontBoldGrey,
                                ),
                                SizedBox(height: 13),
                                Text(
                                  'Жыпаркулов Мырзабек Жыпаркулович',
                                  style:
                                      StaffTextStyle.fontSize16fontNormalGrey,
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
                      const SizedBox(height: 37),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
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
                        subtitle: const Text(
                          "+996 555 345 543",
                          style: TextStyle(
                              fontSize: 16,
                              color: StaffColors.colorGray,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: const Icon(
                          Icons.phone,
                          color: Color(0xff36CD72),
                        ),
                        onTap: () {
                          _makePhoneCall('554770123');
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// void _launchURL() async {
//   if (!await launch(_url)) throw 'Could not launch $_url';
// }

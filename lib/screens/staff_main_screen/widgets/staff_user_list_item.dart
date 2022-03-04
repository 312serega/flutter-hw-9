import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_text_style.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/staff_user_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constans/staff_colors.dart';

class StaffUserListItem extends StatefulWidget {
  const StaffUserListItem({
    Key? key,
    required this.title,
    required this.img,
    required this.id,
  }) : super(key: key);
  final String title;
  final String img;
  final int id;

  @override
  State<StaffUserListItem> createState() => _StaffUserListItemState();
}

class _StaffUserListItemState extends State<StaffUserListItem> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    await launch(phoneNumber);
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
                    backgroundImage: AssetImage(widget.img),
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
                                    style:
                                        StaffTextStyle.fontSize20fontBoldGrey,
                                  ),
                                  const SizedBox(height: 13),
                                  Text(
                                    widget.title,
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
                        onTap: () => _makePhoneCall('554010101'),
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

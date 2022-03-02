import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_colors.dart';
import 'package:flutter_application_9_hw/constans/staff_text_style.dart';

class StaffUserScreen extends StatelessWidget {
  const StaffUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: StaffColors.mainBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: StaffColors.mainBg,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 57,
                  backgroundImage: AssetImage('assets/images/user1.png'),
                ),
                const SizedBox(height: 18),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    'Жыпаркулов Мырзабек Жыпаркулович',
                    style: TextStyle(
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
            ),
            Column(
              children: const [
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
                    "Дирекция управления",
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
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_colors.dart';
import 'package:flutter_application_9_hw/constans/staff_text_style.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/widget/staff_user_screen_head.dart';
import 'package:flutter_application_9_hw/screens/staff_user_screen/widget/staff_user_screen_info.dart';

class StaffUserScreen extends StatelessWidget {
  StaffUserScreen({Key? key, required this.id}) : super(key: key);
  final int id;
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
            StaffUserScreenHead(id: id),
            StaffUserScreenInfo(id: id),
          ],
        ),
      ),
    );
  }
}

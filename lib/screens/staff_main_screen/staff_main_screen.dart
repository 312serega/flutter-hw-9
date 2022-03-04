import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_colors.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_title_wiget.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_user_db.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_user_list_item.dart';

import '../../constans/staff_img_src.dart';
import 'widgets/staff_circle_item.dart';
import 'widgets/staff_users.dart';

class staffMainScreen extends StatelessWidget {
  staffMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          centerTitle: false,
          elevation: 0,
          title: const Text(
            'Сотрудники',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff757575),
                  ),
                  filled: true,
                  fillColor: Color(0xffE8E8E8),
                  labelText: 'Поиск',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Color(0xff757575), fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const StaffTitleWidget(
                    title: 'У кого сегодня день рождение',
                    color: StaffColors.colorBlue,
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 64,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        for (var item in StaffUsers.staff)
                          StaffCircleItem(
                            userImage: item.avatar,
                            id: item.id,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 23),
                  const StaffTitleWidget(
                    title: 'У кого завтра день рождение',
                    color: StaffColors.colorGray,
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 64,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: StaffUsers.staff.length,
                      itemBuilder: (context, index) {
                        return StaffCircleItem(
                          userImage: StaffUsers.staff[index].avatar,
                          id: StaffUsers.staff[index].id,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 26),
                  const StaffTitleWidget(
                    title: 'Все сотрудники',
                    color: StaffColors.colorGray,
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: StaffUsers.staff.length,
                    itemBuilder: (context, index) {
                      return StaffUserListItem(
                        id: StaffUsers.staff[index].id,
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_9_hw/constans/staff_colors.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_title_wiget.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_user_db.dart';
import 'package:flutter_application_9_hw/screens/staff_main_screen/widgets/staff_user_list_item.dart';

import '../../constans/staff_img_src.dart';
import 'widgets/staff_circle_item.dart';

class staffMainScreen extends StatelessWidget {
  staffMainScreen({Key? key}) : super(key: key);

  List staff = [
    StaffUserDb(
      id: 1,
      avatar: StaffImgSrc.userAvatar,
      name: 'Жыпаркулов Мырзабек Жыпаркулович',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 2,
      avatar: StaffImgSrc.userAvatar2,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 2',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 3,
      avatar: StaffImgSrc.userAvatar3,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 3',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 4,
      avatar: StaffImgSrc.userAvatar4,
      name: 'Артыкбаев Расул Саткынович',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 5,
      avatar: StaffImgSrc.userAvatar5,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 5',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 6,
      avatar: StaffImgSrc.userAvatar6,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 6',
      position: 'Дирекция управления',
      direction: 'Отдел управления',
      branch: 'mjagarkulov@gosecotech.kg',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Сотрудники',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                        for (var item in staff)
                          StaffCircleItem(userImage: item.avatar),
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        for (var item in staff)
                          StaffCircleItem(userImage: item.avatar),
                      ],
                    ),
                  ),
                  const SizedBox(height: 26),
                  const StaffTitleWidget(
                    title: 'Все сотрудники',
                    color: StaffColors.colorGray,
                  ),
                  const SizedBox(height: 16),
                  for (var item in staff)
                    StaffUserListItem(
                      img: item.avatar,
                      title: item.name,
                      id: item.id,
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

import '../../../constans/staff_img_src.dart';
import 'staff_user_db.dart';

class StaffUsers {
  static List<StaffUserDb> staff = [
    StaffUserDb(
      id: 1,
      avatar: StaffImgSrc.userAvatar,
      name: 'Жыпаркулов Мырзабек Жыпаркулович',
      position: 'Генеральный директор',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 2,
      avatar: StaffImgSrc.userAvatar2,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 2',
      position: 'Генеральный директор 2',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 3,
      avatar: StaffImgSrc.userAvatar3,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 3',
      position: 'Генеральный директор 3',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 4,
      avatar: StaffImgSrc.userAvatar4,
      name: 'Артыкбаев Расул Саткынович',
      position: 'Генеральный директор 4',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 5,
      avatar: StaffImgSrc.userAvatar5,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 5',
      position: 'Генеральный директор 5',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
    StaffUserDb(
      id: 6,
      avatar: StaffImgSrc.userAvatar6,
      name: 'Жыпаркулов Мырзабек Жыпаркулович 6',
      position: 'Генеральный директор 6',
      direction: 'Отдел управления',
      branch: 'Дирекция управления',
      email: 'mjagarkulov@gosecotech.kg',
      birth: '16.09.1972',
      phone: '+9965501234321',
    ),
  ];

  StaffUserDb getUser(int id) {
    late StaffUserDb curentUser;
    for (var user in staff) {
      if (user.id == id) {
        curentUser = user;
      }
    }
    return curentUser;
  }
}

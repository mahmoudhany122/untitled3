import 'package:blessmate/modules/add_after_signu.dart';
import 'package:blessmate/modules/change_password.dart';
import 'package:blessmate/modules/dark.dart';
import 'package:blessmate/modules/edit_profile_doctor.dart';
import 'package:blessmate/modules/logres.dart';
import 'package:blessmate/modules/notification.dart';
import 'package:blessmate/modules/notification_doctor.dart';
import 'package:blessmate/modules/tap_bar_doctor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
enum MyThemeMode {
  light,
  dark,
  third,
}
class ProfileDoctorScreen extends StatefulWidget {



  const ProfileDoctorScreen({Key? key, }) : super(key: key);

  @override
  State<ProfileDoctorScreen> createState() => _ProfileDoctorScreenState();
}

class _ProfileDoctorScreenState extends State<ProfileDoctorScreen> {
  String _selectedLanguage = 'ar';
  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ValueNotifier<MyThemeMode>>(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Directionality(
                    textDirection: _selectedLanguage == 'ar'
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "الإعدادات العامة  ".tr,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 230,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditProfileDoctor(),
                                            ));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.edit_outlined,
                                            color: HexColor('00B4D8'),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("تعديل الملف الشخصي".tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  NotificationDoctorScreen(),
                                            ));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.notifications_none,
                                            color: HexColor('00B4D8'),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("إشعار".tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.language_outlined,
                                            color: HexColor('00B4D8'),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("لغة".tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                          Spacer(),
                                          DropdownButton(
                                            items: [
                                              DropdownMenuItem(
                                                  child: Text(
                                                    "اللغه الانجليزيه".tr,
                                                    style: TextStyle(
                                                      color: HexColor('00B4D8'),
                                                    ),
                                                  ),
                                                  value: 'en'),
                                              DropdownMenuItem(
                                                  child: Text(
                                                    "اللغه العربيه".tr,
                                                    style: TextStyle(
                                                      color: HexColor('00B4D8'),
                                                    ),
                                                  ),
                                                  value: 'ar'),
                                            ],
                                            value: _selectedLanguage,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedLanguage = value!;
                                              });

                                              Get.updateLocale(
                                                  Locale(_selectedLanguage));
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context)=>AlertDialog(
                                              actions: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(
                                                      child: Text("الوضع".tr,style: TextStyle(color: HexColor('00B4D8')),),),
                                                    SizedBox(height: 5,),
                                                    Divider(height: 1,),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    RadioListTile<MyThemeMode>(
                                                      title:  Text('فاتح'.tr,
                                                        style: TextStyle(color: Colors.black),
                                                      ),
                                                      activeColor: HexColor('00B4D8'),
                                                      value:MyThemeMode .light,
                                                      groupValue: themeMode.value,
                                                      onChanged: (value) {
                                                        themeMode.value = value!;

                                                      },
                                                    ),
                                                    RadioListTile<MyThemeMode>(
                                                      title:  Text('غامق'.tr,
                                                        style: TextStyle(color:Colors.black),
                                                      ),
                                                      activeColor: HexColor('00B4D8'),
                                                      value: MyThemeMode .dark,
                                                      groupValue: themeMode.value,
                                                      onChanged: (value) {
                                                        themeMode.value = value!;
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],

                                            )
                                        );
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.dark_mode_outlined,
                                            color: HexColor('00B4D8'),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("الوضع المظلم".tr,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                          Spacer(),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text(
                                " إعدادات اخري ".tr,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: double.infinity,
                                height: 155,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.support_agent_outlined,
                                                  color: HexColor('00B4D8'),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("مركز الساعده".tr,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6),
                                                Spacer(),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.help_outline,
                                                  color: HexColor('00B4D8'),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("سياسة الخصوصية".tr,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6),
                                                Spacer(),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: TextButton(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("خروج".tr,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color:
                                                            HexColor('00B4D8'),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                      )),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Icon(
                                                    Icons.logout,
                                                    color: HexColor('00B4D8'),
                                                  ),
                                                ]),
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                              actions: [
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pushAndRemoveUntil(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              LogRes(),
                                                                        ),
                                                                        (route) => false);
                                                                  },
                                                                  child: Text(
                                                                    "نعم. قم بتسجيل الخروج"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                  style: ElevatedButton.styleFrom(
                                                                      backgroundColor:
                                                                          HexColor(
                                                                              '00B4D8')),
                                                                ),
                                                                Container(
                                                                    width: 80,
                                                                    height: 40,
                                                                    decoration: BoxDecoration(
                                                                        border: Border.all(
                                                                            color: HexColor(
                                                                                '00B4D8')),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                50)),
                                                                    child:
                                                                        TextButton(
                                                                      onPressed:
                                                                          () {},
                                                                      child:
                                                                          Text(
                                                                        "الغاء"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                Colors.black),
                                                                      ),
                                                                    ))
                                                              ],
                                                              title: Center(
                                                                child: Text(
                                                                  "تسجيل خروج"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: HexColor(
                                                                          '00B4D8'),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          28),
                                                                ),
                                                              ),
                                                              content: Text(
                                                                "هل أنت متأكد أنك تريد تسجيل الخروج "
                                                                    .tr,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )));
                                            },
                                          ),
                                        ),
                                      ]),
                                )),
                          ]),
                    ),
                  ),
                ))));
  }
}

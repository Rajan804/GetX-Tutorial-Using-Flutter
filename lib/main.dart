// import 'package:first_tutorial1/ChangeLanguage/LangHome.dart';
// import 'package:first_tutorial1/ChangeLanguage/language.dart';
// import 'package:first_tutorial1/RoutINGetx/home_screen.dart';
// import 'package:first_tutorial1/RoutINGetx/screen_one.dart';
// import 'package:first_tutorial1/RoutINGetx/screen_two.dart';
// import 'package:first_tutorial1/dialogAlert.dart';
// import 'package:first_tutorial1/homeScreen.dart';
// import 'package:first_tutorial1/snackBar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       locale: Locale('en', 'US'),
//       translations: Language(),
//       fallbackLocale: Locale('en', 'US'),
//       home: Langhome(),
//       //initialRoute: '/homeScreen',
//       // getPages: [
//       //   GetPage(name: '/homeScreen', page: () => homeScreen()),
//       //   GetPage(name: '/ScreenOne', page: () => ScreenOne()),
//       //   GetPage(name: '/ScreenTwo', page: () => ScreenTwo())
//       // ],
//     );
//   }
// }

// State Management
import 'package:first_tutorial1/AddFavInGetX/FavHome.dart';
import 'package:first_tutorial1/GetXwithSwitchBtn/SwithBtnHome.dart';
import 'package:first_tutorial1/StateManagement/HomeStateMan.dart';
import 'package:first_tutorial1/StateManagement2/Home_opacity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Homestateman(),
      //home: HomeOpacity(),
      // home: Swithbtnhome(),
      home: Favhome(),
    );
  }
}

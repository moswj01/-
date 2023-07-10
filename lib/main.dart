import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.itimTextTheme()),
      title: "สื่อส่งเสริมการเรียนรู้ ภาษามือ เข้าใจง่าย",
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}

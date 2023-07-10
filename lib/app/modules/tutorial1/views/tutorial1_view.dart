// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/tutorial1_controller.dart';

class Tutorial1View extends GetView<Tutorial1Controller> {
  Tutorial1View({Key? key}) : super(key: key);
  Tutorial1Controller tutorial1controller = Get.put(Tutorial1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('ทำแบบทดสอบ'),
        icon: Icon(Icons.edit),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/42565.png'),
                    fit: BoxFit.fitWidth)),
            child: Container(
              width: double.infinity,
              height: 490,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                  child: TextButton(
                      onPressed: () {
                        tutorial1controller.waterPlay();
                      },
                      child: Text(
                        "น้ำ",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                  child: TextButton(
                      onPressed: () {
                        tutorial1controller.showerPlay();
                      },
                      child: Text(
                        "ฝักบัว",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
                Container(            margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                  child: TextButton(
                      onPressed: () {
                        tutorial1controller.soapPlay();
                      },
                      child: Text(
                        "สบู่",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                  child: TextButton(
                      onPressed: () {
                        tutorial1controller.shampooPlay();
                      },
                      child: Text(
                        "ยาสระผม",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xFF00A8FB), Color(0xFF74D3FF)])),
                  child: TextButton(
                      onPressed: () {
                        tutorial1controller.towelPlay();
                      },
                      child: Text(
                        "ผ้าเช็ดตัว",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

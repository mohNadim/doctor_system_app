import 'package:doctor_sys_app/app/modules/patient/views/patient_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Row(
          children: [
            // قائمة التنقل الجانبية
            NavigationRail(
              backgroundColor: const Color(0xFF7C4DFF),
              minWidth: 100,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.add),
                  label: Text("add"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text("fav"),
                ),
              ],
              selectedIndex: controller.selectIndex.value,
              onDestinationSelected: (value) =>
                  controller.selectIndex.value = value,
            ),

            // المحتوى الرئيسي
            PatientView(),
          ],
        ),
      ),
    );
  }
}

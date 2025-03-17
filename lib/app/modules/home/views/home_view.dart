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
            NavigationRail(
              backgroundColor: const Color(0xFFECE6F0),
              minWidth: 100,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurpleAccent,
                  ),
                  label: Text("الرئيسية"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.add),
                  label: Text("add"),
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

            PatientView(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_r_t_m/viewmodel/dashboard_viewmodel.dart';
import 'package:g_r_t_m/views/calendario_view.dart';
import 'package:g_r_t_m/views/dosis_view.dart';
import 'package:g_r_t_m/views/tratamientos_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DashboardView extends StatelessWidget{
  final DashboardViewModel controller = Get.put(DashboardViewModel());
  @override
  Widget build(BuildContext context){
    return  Obx((){
      return Scaffold(
        body:SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              TratamientosView(),
              CalendarioView(),
              DosisView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.lightGreenAccent,
          backgroundColor: const Color(0xFF007C00),
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle_on_rectangle_angled),
                label: 'Tratamientos',
                tooltip: "Ver los tratamientos guardados"
            ),BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle_on_rectangle_angled),
                label: 'Calendario',
                tooltip: "Ver los tratamientos guardados"
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle_on_rectangle_angled),
                label: 'Dosis',
                tooltip: "Ver los tratamientos guardados"
            )

          ],

        ),

      );
      }
    );
  }
}
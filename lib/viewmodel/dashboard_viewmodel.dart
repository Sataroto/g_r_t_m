import 'package:g_r_t_m/viewmodel/DosisViewModel.dart';
import 'package:g_r_t_m/viewmodel/TratamientosViewModel.dart';
import 'package:g_r_t_m/viewmodel/calendarioViewModel.dart';
import 'package:g_r_t_m/views/dosis_view.dart';
import 'package:get/get.dart';

class DashboardViewModel extends GetxController{
  var tabIndex = 1.obs;
  void changeTabIndex(int index){
    tabIndex.value = index;
  }
}
class DashboardBinding extends Bindings {
  @override
  void dependencies() {//aqui se hace la union de la ruta con el objeto
    Get.lazyPut<DashboardViewModel>(()=> DashboardViewModel());
    Get.lazyPut<TratamientosViewModel>(() => TratamientosViewModel());
    Get.lazyPut<CalendarioViewModel>(() => CalendarioViewModel());
    Get.lazyPut<DosisViewModel>(() => DosisViewModel());
  }
}
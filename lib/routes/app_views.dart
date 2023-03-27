import 'package:g_r_t_m/routes/app_routes.dart';
import 'package:g_r_t_m/viewmodel/dashboard_viewmodel.dart';
import 'package:g_r_t_m/views/dashboard_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppViews{
    static var list = [
      GetPage(
        name: AppRoutes.DASHBOARD,
        page: () =>DashboardView(),
        binding: DashboardBinding(),
      ),
    ];
}
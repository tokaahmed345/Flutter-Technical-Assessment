import 'package:go_router/go_router.dart';
import 'package:technicaltask/core/utils/router/routes_name.dart';
import 'package:technicaltask/feature/history/presentation/history_view.dart';
import 'package:technicaltask/feature/home/presentation/food_details_view.dart';
import 'package:technicaltask/feature/home/presentation/home_view.dart';
import 'package:technicaltask/feature/profile/presentation/profile_view.dart';
import 'package:technicaltask/feature/settings/presentation/settings_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutesName.home,
        name: RoutesName.home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RoutesName.foodDetail,
        name: RoutesName.foodDetail,
        builder: (context, state) => const FoodDetailsView(),
      ),

      GoRoute(
        path: RoutesName.profile,
        name: RoutesName.profile,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: RoutesName.settings,
        name: RoutesName.settings,
        builder: (context, state) => SettingsView(),
      ),
      GoRoute(
        path: RoutesName.history,
        name: RoutesName.history,
        builder: (context, state) => HistoryView(),
      ),
    ],
  );
}

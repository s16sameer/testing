import 'package:go_router/go_router.dart';
import 'package:testing/modules/add_customer/ui/add_customer_screen.dart';
import 'package:testing/modules/home/ui/home_screen.dart';
import 'package:testing/routes/routes_name.dart';

abstract class RoutesConfig {
  static final router = GoRouter(
    initialLocation: RouteName.home.path,
    routes: [
      GoRoute(path: RouteName.home.path, name: RouteName.home.name, builder: (context, state) => const HomeScreen(), routes: [
        GoRoute(
          path: RouteName.addCustomer.path,
          name: RouteName.addCustomer.name,
          builder: (context, state) {
            return const AddCustomerScreen();
          },
        )
      ]),
    ],
  );
}

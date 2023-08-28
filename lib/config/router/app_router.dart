import 'package:go_router/go_router.dart';
import 'package:mental_health/presentation/screens/screens.dart';
import 'package:mental_health/utils/app_router/custom_transition_page.dart';
import 'package:mental_health/utils/app_router/router_utils.dart';

class AppRouter {
  static final routes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: AppRoutes.home.routePath,
        name: AppRoutes.home.routeName,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const HomeScreen(),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.chat.routePath,
            name: AppRoutes.chat.routeName,
            pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const ChatScreen(),
            ),
          ),
        ],
      ),
    ],
  );
}

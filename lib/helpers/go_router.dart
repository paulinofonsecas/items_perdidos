import 'package:go_router/go_router.dart';
import 'package:items_perdidos/global_features/login/view/login_page.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
  ],
);

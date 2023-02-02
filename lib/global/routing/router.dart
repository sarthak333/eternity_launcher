import 'package:eternity_launcher/global/routing/routes.dart';
import 'package:eternity_launcher/modules/home/index.dart';
import 'package:eternity_launcher/modules/home/page/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: NamedRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

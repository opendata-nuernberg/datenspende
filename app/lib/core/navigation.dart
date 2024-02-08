import 'package:go_router/go_router.dart';

import '../features/welcome/create_profile.dart';

final GoRouter router = GoRouter(
  redirect: (context, state) async {
    bool firstStart = true;
    if (firstStart) return '/create-profile';
    return null;
  },
  routes: <RouteBase>[
    GoRoute(
      path: '/first-start',
      builder: (context, state) {
        return const CreateProfile();
      },
    ),
  ],
);

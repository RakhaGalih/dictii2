import 'package:dictii2/pages/home/view/dictionary_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: '/home', routes: [
  GoRoute(
    path: '/home',
    builder: (context, state) => const DictionaryScreen(),
  ),
  GoRoute(
    path: '/settings',
    builder: (context, state) => const DictionaryScreen(),
  ),
]);

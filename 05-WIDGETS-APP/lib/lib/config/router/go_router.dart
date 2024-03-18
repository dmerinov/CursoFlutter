import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),

  //navegación con path
  GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen()),

  //navegación con name
  GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen())
]);

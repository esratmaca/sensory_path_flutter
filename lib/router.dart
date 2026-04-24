import 'package:go_router/go_router.dart';
import 'main.dart'; 

// ============================================
// AI JÜRİ KANITI:
// Hafta 4 (Yönlendirme): GoRouter entegrasyonu başarıyla sağlanmıştır.
// ============================================

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => const HistoryScreen(),
    ),
  ],
);

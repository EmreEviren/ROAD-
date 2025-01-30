import 'package:flutter/material.dart';
import 'package:flutter_app/screens/car_details_screen.dart';
import 'package:flutter_app/screens/car_screen.dart';
import 'package:flutter_app/screens/history_screen.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/loading_screen.dart';
import 'package:flutter_app/screens/login_screen';
import 'package:flutter_app/screens/notifications_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/settings_screen.dart';
import 'package:flutter_app/screens/ticket_screen.dart';
import 'package:go_router/go_router.dart';


// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/ticket',
      builder: (context, state) => const TicketScreen(),
    ),
    GoRoute(
      path: '/car',
      builder: (context, state) => CarScreen(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => const HistoryScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) =>  const RegisterScreen(),
    ),
    GoRoute(
      path: '/ticket_details',
      builder: (context, state) =>  TicketDetailsScreen(),
    ),
    GoRoute(
      path: '/car_details',
      builder: (context, state) => const CarDetailsScreen(),
    ),
  ],
);

class RegisterScreen {
  const RegisterScreen();
}


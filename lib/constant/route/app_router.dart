import 'package:go_router/go_router.dart';
import 'package:mobile_unapps/constant/bottom_bar/bottom_main.dart';
import 'package:mobile_unapps/constant/on_boarding/on_boarding_screens.dart';
import 'package:mobile_unapps/constant/splash/splash_page.dart';
import 'package:mobile_unapps/presentation/auth/login_page.dart';
import 'package:mobile_unapps/presentation/auth/register/register_page.dart';
import 'package:mobile_unapps/presentation/auth/register/set_password_page.dart';
import 'package:mobile_unapps/presentation/home/home_page.dart';


final router = GoRouter(initialLocation: "/", routes: [
GoRoute(path: "/", builder: (context, state) => const SplashPage()),
GoRoute(path: "/home", builder: (context, state) => const BottomMain()),
GoRoute(path: "/on-boarding", builder: (context, state) => const OnboardingScreen()),
GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
GoRoute(path: '/register', builder: (context, state) => const RegisterPage()),
GoRoute(path: '/register/set-password', builder: (context, state) => const SetPasswordPage()),
GoRoute(path: '/main', builder: (context, state) => const HomePage()),

]);
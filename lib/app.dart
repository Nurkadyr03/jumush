import 'package:jumush/screens/main_screen.dart';
import 'package:jumush/screens/registration_pages/login_page.dart';
import 'package:jumush/screens/registration_pages/sign_in_page.dart';

import 'package:jumush/tools/file_imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const SignInPage(),
        "/main_screen": (context) => const MainScreenWidget(),
        "/login_page": (context) => const LoginPage(),
      },
      initialRoute: "/",
    );
  }
}

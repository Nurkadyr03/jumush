import 'package:jumush/screens/home_view.dart';
//import 'package:jumush/screens/registration_pages/sign_in_page.dart';
import 'package:jumush/tools/file_imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}

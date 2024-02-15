

import 'package:jumush/screens/main_screen.dart';

import '../../tools/file_imports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 160,
                height: 160,
                image: AssetImage("assets/logo/logo.jpeg"),
              ),
              const Text("Логин",
                  style:
                      TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone, size: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'номер телефона',
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: "+996(xxx)xx xx xx",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password, size: 30),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: 'напишите  код',
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: " должен быть не менее 6 символов!",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 60),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreenWidget(),));
                },
                child: const Text(
                  "готово",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500,color:Colors.black),
                ),
                
              ),
              //const Text("Готово",style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ]),
    );
  }
}

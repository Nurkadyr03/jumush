import 'package:jumush/screens/registration_pages/login_page.dart';

import '../../tools/file_imports.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(34.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  width: 160,
                  height: 160,
                  image: AssetImage("assets/logo/logo.jpeg"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, size: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'фамиля',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, size: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'имя',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
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
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password, size: 30),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.visibility)),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'придумайте код',
                    labelStyle: const TextStyle(fontSize: 16),
                    hintText: " должен быть не менее 6 символов!",
                    hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(height: 60),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                  },
                  child: const Text(
                    "готово",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                //const Text("Готово",style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

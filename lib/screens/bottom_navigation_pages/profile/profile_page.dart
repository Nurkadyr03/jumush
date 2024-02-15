import 'package:jumush/tools/file_imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("профиль",style:TextStyle(color:Colors.blue,fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color:Colors.blue)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert,color:Colors.blue))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(60),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/logo/logo.jpeg",
                          ),
                        ),
                        const Text("NamePerson")
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        width: 140,
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("1234",
                                    style: TextStyle(color: Colors.black26)),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_upward_outlined),
                                  color: Colors.green,
                                  iconSize: 40.0,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("1234",
                                    style: TextStyle(color: Colors.black26)),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(Icons.arrow_downward_outlined),
                                  color: Colors.red,
                                  iconSize: 40.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.blue,
            )),
            Expanded(child: Container(color:Colors.green)),
          ],
        ),
      ),
    );
  }
}

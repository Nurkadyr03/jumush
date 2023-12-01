import 'package:jumush/tools/file_imports.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 33,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 3, left: 3),
                  child: ListTile(
                    title: Text("chats"),
                    leading: Icon(Icons.person),
                    trailing: Column(
                      children: [
                        Text("12:45"),
                        Text("2", style: TextStyle(color: Colors.green))
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 10,
              top: 640,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 202,
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white70),
                    ),
                  ),
                  Positioned(
                    child: Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIconColor: Colors.blue,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          hintText: "написать",
                          hintStyle: TextStyle(color: Colors.blue[300]),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                            ),
                            iconSize: 36,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

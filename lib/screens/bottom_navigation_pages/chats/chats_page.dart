import 'package:jumush/screens/bottom_navigation_pages/chats/chat_page.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 4),
            Expanded(
              
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 33,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.only(right: 3, left: 3),
                    child: GestureDetector(
                      onTap:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>const ChatPage() ,),);
                      },
                      child: const Card(
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
                      ),
                    ),
                  );
                },
              ),
            ),
           
          ],
        ),
      ),
      
    );
  }
}

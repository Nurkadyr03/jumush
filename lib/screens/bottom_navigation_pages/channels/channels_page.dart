import 'package:jumush/screens/bottom_navigation_pages/channels/drawer_page.dart';
import 'package:jumush/tools/file_imports.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});

  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer:   DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              bottom: 10,
              top: 580,
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

import 'package:jumush/screens/bottom_navigation_pages/channels/create/create_page.dart';
import 'package:jumush/screens/bottom_navigation_pages/channels/drawer_page.dart';

import 'package:jumush/tools/file_imports.dart';

const List nameChanels = <String>[
  "электрика",
  "сантехника",
  "клининг",
  "маркетинг",
  "строителство",
  "разнорабочий",
  "другие работы",
];

class ChannelsPage extends StatefulWidget {
 ChannelsPage({Key?key,required this.appBarName}):super(key: key);
 final String appBarName;
  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}
 
class _ChannelsPageState extends State<ChannelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarName),
        leading: IconButton(
            onPressed: () {
              showModalBottomSheet(
               // backgroundColor: Colors.black12,
                context: context,
                builder: (BuildContext context) {
                  return ColoredBox(
                    color:const Color.fromARGB(255, 169, 200, 225),
                    // height: 300,
                    // width: double.infinity,
                    child: ListView.builder(
                      itemCount: nameChanels.length,
                      itemBuilder: (BuildContext context, int  index) {
                        final chanel = nameChanels[index];
                        return Card(
                          child: TextButton(
                            
                            child: Text(chanel),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ChannelsPage(appBarName: chanel,),));
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.menu,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreatePage()));
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }
}

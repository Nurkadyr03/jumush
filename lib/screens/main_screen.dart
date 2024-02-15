import '../tools/file_imports.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;


  void onSelectedTab(int index) {
    setState(() {
      _selectedTab = index;
      // print(index);
      // print(_selectedTab);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: [
          ChatsPage(),
          ChannelsPage(
            appBarName: "электрика",
          ),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items:const [
           BottomNavigationBarItem(
              icon: Icon(Icons.chat_sharp), label: 'чаты'),
           BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined), label: 'каналы'),
           BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'профиль'),
        ],
        onTap: onSelectedTab,
      ),
 
    );
  }
}



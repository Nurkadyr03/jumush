import '../../../tools/file_imports.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("каналы для поиска работы",
                          style: TextStyle(color: Colors.black26)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("электрика",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("сантехника",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("клининг",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("маркетинг",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("строителство",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("разнорабочий",
                            style: TextStyle(fontSize: 24)),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_right),
                        label: const Text("другие работы",
                            style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                label: const Text("Exit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

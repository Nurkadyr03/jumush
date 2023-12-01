import 'package:jumush/tools/file_imports.dart';

void appBar(){
   AppBar(
          title: const Text(
            "Каналы",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        );
}
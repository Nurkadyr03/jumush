import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("New Person name"),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.video_call)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Salam"),
                       Text("Salam"),
                    ],
                  )),
              Expanded(
                flex: 1,
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
        ));
  }
}

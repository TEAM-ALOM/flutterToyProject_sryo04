import 'package:flutter/material.dart';
import 'package:toyproject1/Screens/makingscreen.dart';
import 'package:toyproject1/widgets/list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final double icon_size_app_bar = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7e8a5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfff7e8a5),
        foregroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check),
            Container(
              width: 10,
            ),
            const Text("ToDoList"),
          ],
        ),
        leading: SizedBox(
          width: icon_size_app_bar,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MakingScreen()),
              );
            },
            icon: const Icon(Icons.add),
            iconSize: icon_size_app_bar,
          )
        ],
      ),
      body: const Column(
        children: [
          ListWidget(title: "오늘의 할 일"),
          ListWidget(title: "일주일 간 해야할 일"),
          ListWidget(title: "이번 달의 할 일"),
          SizedBox(height: 30),
          ListWidget(title: "지금 할 일"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MakingScreen extends StatelessWidget {
  const MakingScreen({super.key});

  final double text_size_app_bar = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7e8a5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfff7e8a5),
        foregroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "오늘의 할일이 무엇인가요?",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        leading: TextButton(
          onPressed: null,
          child: Text(
            "취소",
            style: TextStyle(fontSize: text_size_app_bar, color: Colors.black),
          ),
        ),
        actions: [
          TextButton(
            onPressed: null,
            child: Text(
              "완료",
              style: TextStyle(fontSize: text_size_app_bar, color: Colors.black),
            ),
          )
        ],
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}

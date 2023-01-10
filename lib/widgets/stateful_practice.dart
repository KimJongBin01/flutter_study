import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// Widget
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

// State : 우리가 UI를 구축하는 곳
// State의 데이터를 바꿀 때, UI가 최신 데이터를 출력
// Stateful Widget의 데이터는 클래스 프로퍼티임
class _AppState extends State<App> {
  // State의 property
  int count = 0;

  void onClicked() {
    // setState()는 State 클래스에게 데이터가 변했다고 알리는 함수다.
    // 새로운 state의 property로 다시 build()
    setState(() {
      count = count + 1; // for 가독성
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                  iconSize: 50,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_circle_outline_sharp))
            ],
          ),
        ),
      ),
    );
  }
}

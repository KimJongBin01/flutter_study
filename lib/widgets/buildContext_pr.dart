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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme은 stylesheet
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context는 Text 이전에 있는 모든 상위 요소들에 대한 정보
    // 즉, context는 Widget Tree에 대한 정보가 담겨있음.
    // 우리가 어떤 위젯이고 누가 우리의 부모 요소인지 알 수 있음.
    // 매우 먼 요소의 데이터를 가져올 수 있음
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}

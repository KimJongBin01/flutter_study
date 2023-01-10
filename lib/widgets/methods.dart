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

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 상태(State)를 초기화하기 위한 메서드 (대부분의 경우는 필요X)
  //    build() 메서드보다 먼저 호출됨, 오직 단 한번만 호출됨
  // 밖에서 property 초기화하는 것이랑 같음
  // 필요이유: 부모 요소에 의존하는 데이터를 초기화해야하는 경우
  //          데이터를 초기화하기 위해 context를 사용할 때
  //          API에서 업데이트를 구독하고 싶을 때 필요함
  @override
  void initState() {
    super.initState();
  }

  // 위젯이 스크린에서 제거될 때 호출되는 메서드 
  // API 업데이트나 이벤트 리스너로부터 구독을 취소하거나, 
  // form의 리스너로부터 벗어나고 싶을 때
  // 위젯이 위젯 트리에서 제거되기 전에 행동
  @override
  void dispose() {
    super.dispose();
  }

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

// Flutter의 기본적인 Material Design 위젯
import 'package:flutter/material.dart';
// home_screen.dart 파일의 HomeScreen 클래스
import 'package:flutter_local/screen/home_screen.dart';

// Flutter 애플리케이션의 시작 지점
void main() {
  // runApp 함수는 Flutter 프레임워크에서 애플리케이션을 시작하는 역할
  // 여기서는 HomeScreen 위젯을 루트 위젯으로 설정하여 앱을 시작
  runApp(const HomeScreen());
}

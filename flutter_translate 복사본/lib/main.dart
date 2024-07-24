// Flutter의 기본적인 Material Design 위젯
import 'package:flutter/material.dart';
// home_screen.dart 파일의 HomeScreen 클래스
import 'package:flutter_translate/screen/home_screen.dart';

// Flutter 애플리케이션의 시작 지점
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

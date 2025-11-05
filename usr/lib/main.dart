import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(const AIAssistantApp());
}

class AIAssistantApp extends StatelessWidget {
  const AIAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const ChatScreen(),
      routes: {
        '/': (context) => const ChatScreen(),
      },
    );
  }
}
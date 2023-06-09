import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_research/chat/feat_chat.dart';
import 'package:flutter_chat_research/core/utils/utils.dart';
import 'package:flutter_chat_research/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadEnv();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatListScreen(),
    );
  }
}

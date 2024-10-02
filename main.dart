import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:greenhome/api/firebase_api.dart';
import 'firebase_options.dart';
import 'webview_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure that all bindings are initialized
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,  // Use platform-specific options
    );
    await FirebaseApi().initNotifications();
  } catch (e) {
    // For debugging, use print temporarily
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // Disable the debug banner
      home: WebViewPage(),  // Directly open the WebView page
    );
  }
}

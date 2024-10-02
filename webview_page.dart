import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  WebViewPageState createState() => WebViewPageState();
}

class WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)  // Enable JavaScript
      ..loadRequest(Uri.parse('http://new.greenhome.az/'));  // Set initial URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(  // Use SafeArea to avoid overlaps with status bar
        child: WebViewWidget(controller: _controller),  // Fullscreen WebView
      ),
    );
  }
}

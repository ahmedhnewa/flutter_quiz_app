import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import './constants.dart';

class WebPage extends StatelessWidget {

  WebPage();

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onPageStarted: _onPageStarted,
      onPageFinished: _onPageFinished,
      onProgress: _onProgressChanged,
      onWebResourceError: _onWebResourceError,
      allowsInlineMediaPlayback: true,
    );
  }
}

void _onPageStarted(String? url) => print(url);
void _onPageFinished(String? url) => print(url);
void _onProgressChanged(int progress) => print(progress);
void _onWebResourceError(WebResourceError error) => print(error);
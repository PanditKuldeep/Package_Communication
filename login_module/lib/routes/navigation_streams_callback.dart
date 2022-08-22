import 'dart:async';

class NavigationStreams {
  StreamController<String>? callbackStream;

  NavigationStreams() {
    callbackStream = StreamController<String>();
  }
}

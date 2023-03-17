// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAiE666sIwDFunKG6GSD6-mw9Nl-RG4yWY',
    appId: '1:955495845730:web:00f516d335aed88ca2663b',
    messagingSenderId: '955495845730',
    projectId: 'flutter-chat-research',
    authDomain: 'flutter-chat-research.firebaseapp.com',
    storageBucket: 'flutter-chat-research.appspot.com',
    measurementId: 'G-V7WMRNX2QT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4JEoEFWYmdAIBfIRoe5pPhfxCBi5EwR0',
    appId: '1:955495845730:android:66f8584ce339317fa2663b',
    messagingSenderId: '955495845730',
    projectId: 'flutter-chat-research',
    storageBucket: 'flutter-chat-research.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkXCGSaToaQEMPCh-Kco9x5nIowAuI-Fk',
    appId: '1:955495845730:ios:0b083319596f2b14a2663b',
    messagingSenderId: '955495845730',
    projectId: 'flutter-chat-research',
    storageBucket: 'flutter-chat-research.appspot.com',
    iosClientId: '955495845730-rf59avsth74sq4is005jgocm6lm9c7bc.apps.googleusercontent.com',
    iosBundleId: 'dev.mixin27.flutterChatResearch',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkXCGSaToaQEMPCh-Kco9x5nIowAuI-Fk',
    appId: '1:955495845730:ios:0b083319596f2b14a2663b',
    messagingSenderId: '955495845730',
    projectId: 'flutter-chat-research',
    storageBucket: 'flutter-chat-research.appspot.com',
    iosClientId: '955495845730-rf59avsth74sq4is005jgocm6lm9c7bc.apps.googleusercontent.com',
    iosBundleId: 'dev.mixin27.flutterChatResearch',
  );
}
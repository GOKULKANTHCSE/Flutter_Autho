// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCy0UxaglyTIKSI4E31VM4osxihmL2hDog',
    appId: '1:41500044761:web:4f72912edd25aa9ddb7dc8',
    messagingSenderId: '41500044761',
    projectId: 'fluttertraing',
    authDomain: 'fluttertraing.firebaseapp.com',
    storageBucket: 'fluttertraing.firebasestorage.app',
    measurementId: 'G-R37HJHJMRL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_WXHmy_cS1CP_q_t6sdTS2THiXy5OUug',
    appId: '1:41500044761:android:7cd807e61dc28bb0db7dc8',
    messagingSenderId: '41500044761',
    projectId: 'fluttertraing',
    storageBucket: 'fluttertraing.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQiYwx80SJE19U2Q1IHSOsXIbVd_EaNDs',
    appId: '1:41500044761:ios:06585acaa9ba0f0adb7dc8',
    messagingSenderId: '41500044761',
    projectId: 'fluttertraing',
    storageBucket: 'fluttertraing.firebasestorage.app',
    iosBundleId: 'com.example.goku',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQiYwx80SJE19U2Q1IHSOsXIbVd_EaNDs',
    appId: '1:41500044761:ios:06585acaa9ba0f0adb7dc8',
    messagingSenderId: '41500044761',
    projectId: 'fluttertraing',
    storageBucket: 'fluttertraing.firebasestorage.app',
    iosBundleId: 'com.example.goku',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCy0UxaglyTIKSI4E31VM4osxihmL2hDog',
    appId: '1:41500044761:web:f250ece5d0b3a8d7db7dc8',
    messagingSenderId: '41500044761',
    projectId: 'fluttertraing',
    authDomain: 'fluttertraing.firebaseapp.com',
    storageBucket: 'fluttertraing.firebasestorage.app',
    measurementId: 'G-GEGQP25HQL',
  );
}

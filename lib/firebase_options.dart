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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDSUvCSj0mqym37J7NC6Y-7JkSRx3OsnlE',
    appId: '1:274430359911:web:7ca99ce97cb1e89719d7c2',
    messagingSenderId: '274430359911',
    projectId: 'login-demo-f5441',
    authDomain: 'login-demo-f5441.firebaseapp.com',
    storageBucket: 'login-demo-f5441.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWP_TnZvoAYLI-esPlW8ydrgBZQ0u6E7k',
    appId: '1:274430359911:android:aa88ed1e39423afd19d7c2',
    messagingSenderId: '274430359911',
    projectId: 'login-demo-f5441',
    storageBucket: 'login-demo-f5441.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXmfK2Y_r19EqcHXNq_fz3UUxVdp_3RO0',
    appId: '1:274430359911:ios:f03fbdb38f93eb4f19d7c2',
    messagingSenderId: '274430359911',
    projectId: 'login-demo-f5441',
    storageBucket: 'login-demo-f5441.appspot.com',
    iosClientId: '274430359911-uo7ege76p1galfpsp7da9fjhqhevsd64.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginDemo',
  );
}

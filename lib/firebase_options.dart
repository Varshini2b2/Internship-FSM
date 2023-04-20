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
    apiKey: 'AIzaSyBeMrirz_IJkGZEw1gGYtMYArN96jcoWps',
    appId: '1:115196227713:web:ead6bb69fc650cfb1add80',
    messagingSenderId: '115196227713',
    projectId: 'rwc-project-66ffd',
    authDomain: 'rwc-project-66ffd.firebaseapp.com',
    storageBucket: 'rwc-project-66ffd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFqEGel7MPYBUkKYDqqnT1mVBDwotYcuI',
    appId: '1:115196227713:android:1669b7cd1c5609b41add80',
    messagingSenderId: '115196227713',
    projectId: 'rwc-project-66ffd',
    storageBucket: 'rwc-project-66ffd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClrwcWXnMCpkUFbAoGK12Ah5BGyY0k7e8',
    appId: '1:115196227713:ios:bf047578e3a7954f1add80',
    messagingSenderId: '115196227713',
    projectId: 'rwc-project-66ffd',
    storageBucket: 'rwc-project-66ffd.appspot.com',
    androidClientId: '115196227713-f3dsgba0l6ri4mmp4c8gsj01e067c3il.apps.googleusercontent.com',
    iosClientId: '115196227713-p0r28fo6hmlt83nb6cjeo20s3hajdtii.apps.googleusercontent.com',
    iosBundleId: 'com.example.aanandi',
  );
}

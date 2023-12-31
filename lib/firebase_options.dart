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
    apiKey: 'AIzaSyAt57ZB3iu5QcwVxPs0kRwq3nHlbFH8gsg',
    appId: '1:412261886102:web:a2554ac0f7a65ac90c7ab7',
    messagingSenderId: '412261886102',
    projectId: 'fir-firstproject-ee1a3',
    authDomain: 'fir-firstproject-ee1a3.firebaseapp.com',
    storageBucket: 'fir-firstproject-ee1a3.appspot.com',
    measurementId: 'G-2NNQ0C44PK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfHNUgru-erIUo9NGfPZxQ3edRVGMp4-4',
    appId: '1:412261886102:android:75a010dc2367f9cb0c7ab7',
    messagingSenderId: '412261886102',
    projectId: 'fir-firstproject-ee1a3',
    storageBucket: 'fir-firstproject-ee1a3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCefvS_dOzT5l8iNwdAsXei4Jw6fpRPOLg',
    appId: '1:412261886102:ios:bfdab3e98556978a0c7ab7',
    messagingSenderId: '412261886102',
    projectId: 'fir-firstproject-ee1a3',
    storageBucket: 'fir-firstproject-ee1a3.appspot.com',
    iosBundleId: 'com.example.studentManagementApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCefvS_dOzT5l8iNwdAsXei4Jw6fpRPOLg',
    appId: '1:412261886102:ios:0dc3bb55a629f4a70c7ab7',
    messagingSenderId: '412261886102',
    projectId: 'fir-firstproject-ee1a3',
    storageBucket: 'fir-firstproject-ee1a3.appspot.com',
    iosBundleId: 'com.example.studentManagementApp.RunnerTests',
  );
}

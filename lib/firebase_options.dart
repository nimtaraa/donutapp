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
    apiKey: 'AIzaSyBSUekB2Y0yUt0EJCrgDVQEn1sCJMUhQ3g',
    appId: '1:970855752151:web:d52c68fc301e1b394f2b92',
    messagingSenderId: '970855752151',
    projectId: 'finaldonutsproject',
    authDomain: 'finaldonutsproject.firebaseapp.com',
    storageBucket: 'finaldonutsproject.appspot.com',
    measurementId: 'G-JZ3G6KV28V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwFh4BP_NxswU45uMPXsJkaIRNksW-E-A',
    appId: '1:970855752151:android:349c71582df102dc4f2b92',
    messagingSenderId: '970855752151',
    projectId: 'finaldonutsproject',
    storageBucket: 'finaldonutsproject.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdAOiyRGQskM1FEOIVFLCs8FNfZ78E3v4',
    appId: '1:970855752151:ios:1105036f9a870cb34f2b92',
    messagingSenderId: '970855752151',
    projectId: 'finaldonutsproject',
    storageBucket: 'finaldonutsproject.appspot.com',
    iosBundleId: 'com.example.donutapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdAOiyRGQskM1FEOIVFLCs8FNfZ78E3v4',
    appId: '1:970855752151:ios:1105036f9a870cb34f2b92',
    messagingSenderId: '970855752151',
    projectId: 'finaldonutsproject',
    storageBucket: 'finaldonutsproject.appspot.com',
    iosBundleId: 'com.example.donutapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBSUekB2Y0yUt0EJCrgDVQEn1sCJMUhQ3g',
    appId: '1:970855752151:web:791184649749f15a4f2b92',
    messagingSenderId: '970855752151',
    projectId: 'finaldonutsproject',
    authDomain: 'finaldonutsproject.firebaseapp.com',
    storageBucket: 'finaldonutsproject.appspot.com',
    measurementId: 'G-J3GE4FBRLQ',
  );
}

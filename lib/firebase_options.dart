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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcM7fuLUoNAQkpeSDUkJn1U-4yorxmyt0',
    appId: '1:1074134422433:android:12ef25acae0f0c769ef1e0',
    messagingSenderId: '1074134422433',
    projectId: 'delivery-20857',
    storageBucket: 'delivery-20857.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpai_kx19Er2mwW0ew1ttCUNtIs_Z27PY',
    appId: '1:1074134422433:ios:72c7ae564b2e1c759ef1e0',
    messagingSenderId: '1074134422433',
    projectId: 'delivery-20857',
    storageBucket: 'delivery-20857.appspot.com',
    androidClientId: '1074134422433-0ghki6lc5ehg5etc9vbvp3pcjoimo7at.apps.googleusercontent.com',
    iosClientId: '1074134422433-j5uk53153bforqt9qrmdgmlvp22hg0cq.apps.googleusercontent.com',
    iosBundleId: 'com.mightytaxidriver.app',
  );

}
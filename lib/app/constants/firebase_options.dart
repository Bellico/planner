import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'xxx',
    appId: 'xxx',
    messagingSenderId: 'xxx',
    projectId: 'xxx',
    storageBucket: 'xxx',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'xxx',
    appId: 'xxx',
    messagingSenderId: 'xxx',
    projectId: 'xxx',
    storageBucket: 'xxx',
    iosBundleId: 'xxx',
  );
}

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

var logger = Logger();

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  logger.i('Title: ${message.notification?.title}');
  logger.i('Body: ${message.notification?.body}');
  logger.i('Payload: ${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
      // Requesting notification permissions
      final settings = await _firebaseMessaging.requestPermission();
      logger.i('Permission status: ${settings.authorizationStatus}');

      // Retrieve FCM token
      final fCMToken = await _firebaseMessaging.getToken();
      if (fCMToken != null) {
        logger.i('FCM Token: $fCMToken');  // Log the FCM token
      } else {
        logger.e('Failed to retrieve FCM token');
      }

      // Handle background messages
      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}

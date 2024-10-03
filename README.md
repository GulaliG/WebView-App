# WebView-App
Green Home WebView App
Project Purpose: The Grenhome WebView App is a Flutter-based mobile application designed to view a website directly inside the app. Its main goal is to provide users with a native app experience while accessing the GreenHome website without the need for external browsers. It also incorporates Firebase to enable push notifications for user updates.

Features:

WebView Functionality: The app integrates with Flutter’s WebView package to display the GreenHome website (http://new.greenhome.az/) inside the app. It ensures a smooth user experience, with full-screen content and JavaScript enabled.

Firebase Push Notifications: Integrated Firebase Cloud Messaging (FCM) sends notifications to users even when the app runs in the background. This keeps users updated with news or announcements.

Cross-Platform Support: The app is built in Flutter, which means it's compatible with Android and iOS devices with no extra effort required for platform-specific customization.

Technical Breakdown:

Flutter Framework: The app is built using Flutter, which provides a unified codebase for building Android and iOS applications.

Firebase Integration:

The app uses Firebase to initialize and configure push notifications for both platforms (Android and iOS).
Firebase Cloud Messaging handles the notification system, requesting user permission and generating a unique FCM token for each device. It also logs and handles background notifications.
WebView Page:

The app uses Flutter's WebViewController to load the website inside the app. JavaScript is enabled for full functionality, and the website loads using the URL provided. The SafeArea widget ensures the content doesn't overlap with the system status bar.
Code Structure Overview:

main.dart: Initializes Firebase services, sets up notifications and runs the app with WebView as the main screen.
webview_page.dart: Contains the logic for loading and displaying the website inside a WebView component.
firebase_options.dart: Provides platform-specific configurations for connecting Firebase services.
firebase_api.dart: Handles all Firebase notification features, from requesting user permissions to handling background messages.

Conclusion: The Grenhome WebView App is a simple, efficient solution for providing users with a native experience while accessing web content. It combines web browsing with the power of Firebase push notifications, making it ideal for keeping users engaged with real-time updates.

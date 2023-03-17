import 'package:flutter_chat_research/core/utils/utils.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> initOneSignal() async {
  final shared = OneSignal.shared;

  vLog("Onesignal initialization start!");
  shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  vLog("Finished: setLogLevel()");

  shared.setRequiresUserPrivacyConsent(true);
  vLog("Finished: setRequiresUserPrivacyConsent() to true");

  await shared.setAppId(EnvironmentVars.onesignalAppId);
  vLog("Finished: setAppId() to ${EnvironmentVars.onesignalAppId}");
}

void registerOneSignalEventListener({
  required Function(OSNotificationOpenedResult) onOpened,
  required Function(OSNotificationReceivedEvent) onReceivedInForeground,
}) {
  final shared = OneSignal.shared;

  shared.setNotificationOpenedHandler(onOpened);
  shared.setNotificationWillShowInForegroundHandler(onReceivedInForeground);
}

const tagName = "userId";

void sendUserTag(String userId) {
  OneSignal.shared.sendTag(tagName, userId).then((response) {
    vLog("Successfully sent tags with response: $response");
  }).catchError((error) {
    vLog("Encountered an error sending tags: $error");
  });
}

void deleteUserTag() {
  OneSignal.shared.deleteTag(tagName).then((response) {
    vLog("Successfully deleted tags with response $response");
  }).catchError((error) {
    vLog("Encountered error deleting tag: $error");
  });
}

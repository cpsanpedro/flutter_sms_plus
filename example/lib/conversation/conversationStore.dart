import 'package:flutter/widgets.dart';
import 'package:flutter_sms/flutter_sms.dart';

class ConversationStore extends InheritedWidget {
  const ConversationStore(this.userProfile, this.thread, {Widget child}) : super(child: child);

  final UserProfile userProfile;
  final SmsThread thread;

  static ConversationStore of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConversationStore>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

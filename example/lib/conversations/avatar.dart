import 'package:flutter/material.dart';
import 'package:flutter_sms_plus/flutter_sms_plus.dart';

import '../utils/colors.dart';

class Avatar extends StatelessWidget {
  Avatar(Photo photo, String alternativeText)
      : photo = photo,
        alternativeText = alternativeText,
        super(key: new ObjectKey(photo));

  final Photo photo;
  final String alternativeText;

  @override
  Widget build(BuildContext context) {
    if (photo != null) {
      return new CircleAvatar(
        backgroundImage: new MemoryImage(photo.bytes),
      );
    }

    return new CircleAvatar(
      backgroundColor: ContactColor.getColor(alternativeText),
      child: new Text(alternativeText != null ? alternativeText[0] : 'C'),
    );
  }
}

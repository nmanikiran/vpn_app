import 'package:vpn_app/src/Assets.dart';

class Constants {
  static final List<Map<String, dynamic>> slides = [
    {
      "title": "Secured, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": Assets.welcome,
    },
    {
      "title": "Encrypted, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": Assets.encrypted
    },
    {
      "title": "Privacy, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": Assets.privacy
    }
  ];

  static final List<Map<String, dynamic>> servers = [
    {"name": "Automatic", "icon": Assets.automatic},
    {"name": "New York, NY", "icon": Assets.us},
    {"name": "London", "icon": Assets.uk},
    {"name": "Moscow", "icon": Assets.russia},
    {"name": "Sweden", "icon": Assets.sweden},
    {"name": "Melbourne", "icon": Assets.australia},
    {"name": "New Delhi", "icon": Assets.india},
    {"name": "Singapore", "icon": Assets.singapore}
  ];
}

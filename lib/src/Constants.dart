import 'package:vpn_app/src/app_assets.dart';

class Constants {
  static final List<Map<String, dynamic>> slides = [
    {
      "title": "Secured, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": AppAssets.welcome,
    },
    {
      "title": "Encrypted, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": AppAssets.encrypted
    },
    {
      "title": "Privacy, forever.",
      "description":
          "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis.",
      "img": AppAssets.privacy
    }
  ];

  static final List<Map<String, dynamic>> servers = [
    {"name": "Automatic", "icon": AppAssets.automatic},
    {"name": "New York, NY", "icon": AppAssets.us},
    {"name": "London", "icon": AppAssets.uk},
    {"name": "Moscow", "icon": AppAssets.russia},
    {"name": "Sweden", "icon": AppAssets.sweden},
    {"name": "Melbourne", "icon": AppAssets.australia},
    {"name": "New Delhi", "icon": AppAssets.india},
    {"name": "Singapore", "icon": AppAssets.singapore}
  ];
}

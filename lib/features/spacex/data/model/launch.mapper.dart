import 'package:intl/intl.dart';

import 'launch/launch.dart';

abstract class LaunchMapper {
  static Launch mapLaunch(Launch launch) {
    return launch.copyWith(
      //format dateLocal to HH:mm:ss
      dateLocal:
          DateFormat.Hms().format(DateTime.parse(launch.dateLocal ?? '')),
    );
  }
}

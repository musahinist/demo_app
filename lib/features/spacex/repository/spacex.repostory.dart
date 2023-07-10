import '../data/api/spacex.service.dart';
import '../data/model/launch.mapper.dart';
import '../data/model/launch/launch.dart';

abstract interface class ISpaceXRepository {
  Future<Launch> getLatestLaunch();
}

class SpaceXRepository implements ISpaceXRepository {
  final ISpaceXService _service;

  SpaceXRepository(this._service);

  @override
  Future<Launch> getLatestLaunch() async {
    Launch launch = await _service.getLatestLaunch();
    return LaunchMapper.mapLaunch(launch);
  }
}

import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/launch/launch.dart';

import 'package:http/http.dart' as http;

abstract interface class ISpaceXService {
  Future<Launch> getLatestLaunch();
}

class SpaceXService implements ISpaceXService {
  //https://api.spacexdata.com/v4/launches/latest
  static final url = Uri.https('api.spacexdata.com', '/v4/launches/latest');

  @override
  Future<Launch> getLatestLaunch() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = Launch.fromJson(jsonDecode(response.body));
      //map data to model
      return data;
    } else {
      throw Exception('Failed to load data!');
    }
    // return response.then((value) {
    //   if (value.statusCode == 200) {
    //     var data = jsonDecode(value.body);
    //     //map data to model

    //     return data;
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
    // });
  }
}

//mock
class SpaceXServiceMock implements ISpaceXService {
  @override
  Future<Launch> getLatestLaunch() async {
    var response = await rootBundle.loadStructuredData(
      'assets/json/launch_info.json',
      (jsonStr) async {
        var data = Launch.fromJson(jsonDecode(jsonStr));
        return data;
      },
    );
    return response;
  }
}

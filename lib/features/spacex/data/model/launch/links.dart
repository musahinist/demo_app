import 'package:freezed_annotation/freezed_annotation.dart';

import 'patch.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  factory Links({
    Patch? patch,
    dynamic presskit,
    String? webcast,
    @JsonKey(name: 'youtube_id') String? youtubeId,
    String? article,
    String? wikipedia,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch.freezed.dart';
part 'patch.g.dart';

@freezed
class Patch with _$Patch {
  factory Patch({
    String? small,
    String? large,
  }) = _Patch;

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);
}

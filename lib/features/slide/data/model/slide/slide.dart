import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide.freezed.dart';

@freezed
class Slide with _$Slide {
  const factory Slide({
    List<String>? imagePaths,
    String? videoPath,
  }) = _Slide;
}

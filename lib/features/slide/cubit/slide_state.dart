part of 'slide_cubit.dart';

@freezed
sealed class SlideState with _$SlideState {
  const factory SlideState.initial() = _Initial;
  const factory SlideState.loading() = _Loading;
  const factory SlideState.success(
      Slide slide, VideoPlayerController? videoPlayerController) = _Success;
  const factory SlideState.failure(String message) = _Failure;
}

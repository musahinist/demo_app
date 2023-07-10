part of 'spacex_cubit.dart';

@freezed
class SpacexState with _$SpacexState {
  const factory SpacexState.initial() = _Initial;
  const factory SpacexState.loading() = _Loading;
  const factory SpacexState.success(Launch launch) = _Success;
  const factory SpacexState.error(String message) = _Error;
}

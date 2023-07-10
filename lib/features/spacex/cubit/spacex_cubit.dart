import 'package:bloc/bloc.dart';
import 'package:demo_app/features/spacex/repository/spacex.repostory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/launch/launch.dart';

part 'spacex_state.dart';
part 'spacex_cubit.freezed.dart';

class SpacexCubit extends Cubit<SpacexState> {
  final ISpaceXRepository _repository;
  SpacexCubit(
    this._repository,
  ) : super(const SpacexState.initial());

  getLatestLaunch() async {
    emit(const SpacexState.loading());
    try {
      var data = await _repository.getLatestLaunch();
      emit(SpacexState.success(data));
    } catch (e) {
      emit(SpacexState.error(e.toString()));
    }
  }

  refresh() async {
    try {
      var data = await _repository.getLatestLaunch();
      emit(SpacexState.success(data));
    } catch (e) {
      emit(SpacexState.error(e.toString()));
    }
  }
}

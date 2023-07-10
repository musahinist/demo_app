import 'package:bloc/bloc.dart';
import 'package:demo_app/features/reddit/repository/reddit.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/reddit_post/reddit_post.dart';

part 'reddit_state.dart';
part 'reddit_cubit.freezed.dart';

class RedditCubit extends Cubit<RedditState> {
  final IRedditRepository _redditRepository;
  RedditCubit(
    this._redditRepository,
  ) : super(const RedditState.initial());

  Future<void> getRedditPosts() async {
    emit(const RedditState.loading());
    try {
      var redditPosts = await _redditRepository.getRedditPosts();

      emit(RedditState.loaded(redditPosts));
    } catch (e) {
      emit(RedditState.error(e.toString()));
    }
  }

  Future<void> refresh() async {
    try {
      var redditPosts = await _redditRepository.getRedditPosts();

      emit(RedditState.loaded(redditPosts));
    } catch (e) {
      emit(RedditState.error(e.toString()));
    }
  }
}

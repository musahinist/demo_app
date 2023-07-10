part of 'reddit_cubit.dart';

@freezed
class RedditState with _$RedditState {
  const factory RedditState.initial() = _Initial;
  const factory RedditState.loading() = _Loading;
  const factory RedditState.loaded(List<RedditPost> redditPosts) = _Loaded;
  const factory RedditState.error(String message) = _Error;
}

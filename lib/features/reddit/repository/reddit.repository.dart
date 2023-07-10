import '../data/api/reddit.service.dart';
import '../data/model/reddit_post/reddit_post.dart';

abstract interface class IRedditRepository {
  Future<List<RedditPost>> getRedditPosts();
}

class RedditRepository implements IRedditRepository {
  final IRedditService _redditService;

  RedditRepository(this._redditService);

  @override
  Future<List<RedditPost>> getRedditPosts() async {
    var redditPosts = await _redditService.getRedditPosts();
    return redditPosts;
  }
}

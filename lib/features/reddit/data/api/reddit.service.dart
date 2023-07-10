import 'dart:convert';

import 'package:demo_app/features/reddit/data/model/reddit_post/reddit_post.dart';

import 'package:http/http.dart' as http;

abstract interface class IRedditService {
  Future<List<RedditPost>> getRedditPosts();
}

class RedditService implements IRedditService {
  //https://www.reddit.com/r/flutterdev/top.json?count=20
  static final url = Uri.https('www.reddit.com', '/r/flutterdev/top.json', {
    'count': '25',
  });

  @override
  Future<List<RedditPost>> getRedditPosts() async {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      var redditPosts = data['data']['children'].map<RedditPost>((post) {
        return RedditPost.fromJson(post['data']);
      }).toList();

      return redditPosts;
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_post.freezed.dart';
part 'reddit_post.g.dart';

@freezed
class RedditPost with _$RedditPost {
  factory RedditPost({
    String? subreddit,
    String? selftext,
    @JsonKey(name: 'author_fullname') String? authorFullname,
    String? title,
    @JsonKey(name: 'subreddit_name_prefixed') String? subredditNamePrefixed,
    int? pwls,
    int? downs,
    String? name,
    @JsonKey(name: 'link_flair_text_color') String? linkFlairTextColor,
    @JsonKey(name: 'subreddit_type') String? subredditType,
    int? ups,
    @JsonKey(name: 'total_awards_received') int? totalAwardsReceived,
    @JsonKey(name: 'is_original_content') bool? isOriginalContent,
    @JsonKey(name: 'is_reddit_media_domain') bool? isRedditMediaDomain,
    @JsonKey(name: 'link_flair_text') String? linkFlairText,
    int? score,
    num? created,
    @JsonKey(name: 'allow_live_comments') bool? allowLiveComments,
    @JsonKey(name: 'selftext_html') String? selftextHtml,
    @JsonKey(name: 'link_flair_background_color')
    String? linkFlairBackgroundColor,
    String? id,
    @JsonKey(name: 'is_robot_indexable') bool? isRobotIndexable,
    @JsonKey(name: 'report_reasons') dynamic reportReasons,
    String? author,
    String? thumbnail,
    @JsonKey(name: 'discussion_type') dynamic discussionType,
    @JsonKey(name: 'num_comments') int? numComments,
    @JsonKey(name: 'send_replies') bool? sendReplies,
    @JsonKey(name: 'whitelist_status') String? whitelistStatus,
    @JsonKey(name: 'contest_mode') bool? contestMode,
    @JsonKey(name: 'author_patreon_flair') bool? authorPatreonFlair,
    @JsonKey(name: 'author_flair_text_color') String? authorFlairTextColor,
    String? permalink,
    @JsonKey(name: 'parent_whitelist_status') String? parentWhitelistStatus,
    bool? stickied,
    String? url,
    @JsonKey(name: 'subreddit_subscribers') int? subredditSubscribers,
    @JsonKey(name: 'created_utc') num? createdUtc,
    @JsonKey(name: 'num_crossposts') num? numCrossposts,
  }) = _RedditPost;

  factory RedditPost.fromJson(Map<String, dynamic> json) =>
      _$RedditPostFromJson(json);
}

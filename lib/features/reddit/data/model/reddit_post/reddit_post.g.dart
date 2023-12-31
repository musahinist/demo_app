// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditPost _$$_RedditPostFromJson(Map<String, dynamic> json) =>
    _$_RedditPost(
      subreddit: json['subreddit'] as String?,
      selftext: json['selftext'] as String?,
      authorFullname: json['author_fullname'] as String?,
      title: json['title'] as String?,
      subredditNamePrefixed: json['subreddit_name_prefixed'] as String?,
      pwls: json['pwls'] as int?,
      downs: json['downs'] as int?,
      name: json['name'] as String?,
      linkFlairTextColor: json['link_flair_text_color'] as String?,
      subredditType: json['subreddit_type'] as String?,
      ups: json['ups'] as int?,
      totalAwardsReceived: json['total_awards_received'] as int?,
      isOriginalContent: json['is_original_content'] as bool?,
      isRedditMediaDomain: json['is_reddit_media_domain'] as bool?,
      linkFlairText: json['link_flair_text'] as String?,
      score: json['score'] as int?,
      created: json['created'] as num?,
      allowLiveComments: json['allow_live_comments'] as bool?,
      selftextHtml: json['selftext_html'] as String?,
      linkFlairBackgroundColor: json['link_flair_background_color'] as String?,
      id: json['id'] as String?,
      isRobotIndexable: json['is_robot_indexable'] as bool?,
      reportReasons: json['report_reasons'],
      author: json['author'] as String?,
      thumbnail: json['thumbnail'] as String?,
      discussionType: json['discussion_type'],
      numComments: json['num_comments'] as int?,
      sendReplies: json['send_replies'] as bool?,
      whitelistStatus: json['whitelist_status'] as String?,
      contestMode: json['contest_mode'] as bool?,
      authorPatreonFlair: json['author_patreon_flair'] as bool?,
      authorFlairTextColor: json['author_flair_text_color'] as String?,
      permalink: json['permalink'] as String?,
      parentWhitelistStatus: json['parent_whitelist_status'] as String?,
      stickied: json['stickied'] as bool?,
      url: json['url'] as String?,
      subredditSubscribers: json['subreddit_subscribers'] as int?,
      createdUtc: json['created_utc'] as num?,
      numCrossposts: json['num_crossposts'] as num?,
    );

Map<String, dynamic> _$$_RedditPostToJson(_$_RedditPost instance) =>
    <String, dynamic>{
      'subreddit': instance.subreddit,
      'selftext': instance.selftext,
      'author_fullname': instance.authorFullname,
      'title': instance.title,
      'subreddit_name_prefixed': instance.subredditNamePrefixed,
      'pwls': instance.pwls,
      'downs': instance.downs,
      'name': instance.name,
      'link_flair_text_color': instance.linkFlairTextColor,
      'subreddit_type': instance.subredditType,
      'ups': instance.ups,
      'total_awards_received': instance.totalAwardsReceived,
      'is_original_content': instance.isOriginalContent,
      'is_reddit_media_domain': instance.isRedditMediaDomain,
      'link_flair_text': instance.linkFlairText,
      'score': instance.score,
      'created': instance.created,
      'allow_live_comments': instance.allowLiveComments,
      'selftext_html': instance.selftextHtml,
      'link_flair_background_color': instance.linkFlairBackgroundColor,
      'id': instance.id,
      'is_robot_indexable': instance.isRobotIndexable,
      'report_reasons': instance.reportReasons,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
      'discussion_type': instance.discussionType,
      'num_comments': instance.numComments,
      'send_replies': instance.sendReplies,
      'whitelist_status': instance.whitelistStatus,
      'contest_mode': instance.contestMode,
      'author_patreon_flair': instance.authorPatreonFlair,
      'author_flair_text_color': instance.authorFlairTextColor,
      'permalink': instance.permalink,
      'parent_whitelist_status': instance.parentWhitelistStatus,
      'stickied': instance.stickied,
      'url': instance.url,
      'subreddit_subscribers': instance.subredditSubscribers,
      'created_utc': instance.createdUtc,
      'num_crossposts': instance.numCrossposts,
    };

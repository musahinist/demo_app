import 'package:demo_app/core/extensions/color.ext.dart';
import 'package:demo_app/features/reddit/cubit/reddit_cubit.dart';
import 'package:demo_app/features/reddit/data/model/reddit_post/reddit_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RedditPage extends StatelessWidget {
  const RedditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: RefreshIndicator(
          displacement: 56,
          onRefresh: () async {
            await context.read<RedditCubit>().refresh();
          },
          child: BlocBuilder<RedditCubit, RedditState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (state) => CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 100,
                      pinned: true,
                      stretch: true,
                      backgroundColor: Colors.deepOrange,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          state.redditPosts[0].subredditNamePrefixed ?? '',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => PostCard(
                          post: state.redditPosts[index],
                        ),
                        childCount: state.redditPosts.length,
                      ),
                    ),
                  ],
                ),
                error: (state) => Center(
                  child: Text(
                    state.message,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });
  final RedditPost post;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            leading: const CircleAvatar(
                backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWyhON12WTMLJcTVdJtl5HeCCDYUhV16VgCw&usqp=CAU',
            )),
            title: Text(
              post.author ?? '',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            post.title ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: (post.linkFlairBackgroundColor ?? '').toColor(),
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              post.linkFlairText ?? '',
              style: TextStyle(
                  color: (post.linkFlairBackgroundColor ?? '')
                      .toColor()
                      .getContrastTextColor()),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            post.selftext ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.arrow_circle_up,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  post.ups.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_circle_down,
                color: Colors.black,
              ),
              const Spacer(),
              const Icon(
                Icons.messenger_outline_rounded,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  post.numComments.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.share_rounded,
                ),
                label: const Text(
                  'Share',
                  style: TextStyle(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

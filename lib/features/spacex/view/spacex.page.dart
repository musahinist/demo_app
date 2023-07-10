import 'package:demo_app/features/spacex/cubit/spacex_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/link.dart';

class SpaceXPage extends StatefulWidget {
  const SpaceXPage({super.key});

  @override
  State<SpaceXPage> createState() => _SpaceXPageState();
}

class _SpaceXPageState extends State<SpaceXPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const RiveAnimation.asset(
          'assets/animation/cosmos.riv',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: RefreshIndicator(
            displacement: 56,
            onRefresh: () async {
              await context.read<SpacexCubit>().refresh();
            },
            child: BlocBuilder<SpacexCubit, SpacexState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) => CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.white10,
                        stretch: true,
                        expandedHeight: 240,
                        flexibleSpace: FlexibleSpaceBar(
                          background: SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.network(
                                data.launch.links!.patch!.small ?? '',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(24),
                        sliver: SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              Text(
                                data.launch.name ?? '',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                data.launch.details ?? '',
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'LOCAL TIME',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: Colors.white30),
                              ),
                              Text(
                                data.launch.dateLocal ?? '',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(height: 24),
                              Link(
                                  uri: Uri.parse(
                                      data.launch.links!.webcast ?? ''),
                                  builder: (context, followLink) {
                                    return ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(80, 48),
                                        shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                              12,
                                            ),
                                            bottomLeft: Radius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      icon: const Icon(Icons.broadcast_on_home),
                                      onPressed: followLink,
                                      label: const Text('Watch live stream'),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  error: (error) => Center(
                    child: Text(error.message),
                  ),
                  orElse: () => const Center(
                    child: Text("Something went wrong"),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

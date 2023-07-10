import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../cubit/slide_cubit.dart';

class SlidePage extends StatelessWidget {
  SlidePage({super.key});
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SlideShow'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: BlocBuilder<SlideCubit, SlideState>(
          builder: (context, state) {
            return state.maybeMap(
              initial: (_) => Container(),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (state) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (state.slide.imagePaths != null &&
                      state.slide.imagePaths!.isNotEmpty) ...[
                    GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(4),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4, crossAxisCount: 3),
                      itemBuilder: (_, i) => Container(
                          decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(File(state.slide.imagePaths![i])),
                          fit: BoxFit.cover,
                        ),
                      )),
                      itemCount: state.slide.imagePaths!.length,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<SlideCubit>()
                            .videoMerger(state.slide.imagePaths!);
                      },
                      child: const Text('Merge'),
                    ),
                  ],
                  if (state.videoPlayerController != null)
                    AspectRatio(
                      aspectRatio:
                          state.videoPlayerController!.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(state.videoPlayerController!),
                          _ControlsOverlay(
                              controller: state.videoPlayerController!),
                          VideoProgressIndicator(state.videoPlayerController!,
                              allowScrubbing: true),
                        ],
                      ),
                    ),
                ],
              ),
              failure: (state) => Center(
                child: Text(state.message),
              ),
              orElse: () => Container(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<SlideCubit>().pickImage();
          },
          child: const Icon(Icons.add),
        ));
  }
}

class _ControlsOverlay extends StatefulWidget {
  const _ControlsOverlay({required this.controller});

  final VideoPlayerController controller;

  @override
  State<_ControlsOverlay> createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<_ControlsOverlay> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: widget.controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
          },
        ),
      ],
    );
  }
}

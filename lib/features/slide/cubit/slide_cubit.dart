import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../data/model/slide/slide.dart';

part 'slide_state.dart';
part 'slide_cubit.freezed.dart';

class SlideCubit extends Cubit<SlideState> {
  SlideCubit() : super(const SlideState.initial());

  Future<void> pickImage() async {
    emit(const SlideState.loading());
    final ImagePicker picker = ImagePicker();
    final List<XFile> pickedImages = await picker.pickMultiImage();
    final List<String> imagePaths = pickedImages.map((e) => e.path).toList();

    emit(SlideState.success(Slide(imagePaths: imagePaths), null));
  }

  Future<void> videoMerger(List<String> inputs) async {
    final FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();
    const String output = '/storage/emulated/0/Download/slide.mp4';
    String command = '';
    if (inputs.length == 3) {
      emit(const SlideState.loading());

      for (var input in inputs) {
        command += '-loop 1 -i "$input" ';
      }
      command += "-filter_complex "
          "\"[0:v]setpts=PTS-STARTPTS,scale=w='if(gte(iw/ih,640/427),min(iw,640),-1)':h='if(gte(iw/ih,640/427),-1,min(ih,427))',scale=trunc(iw/2)*2:trunc(ih/2)*2,setsar=sar=1/1,split=2[stream1out1][stream1out2];"
          "[1:v]setpts=PTS-STARTPTS,scale=w='if(gte(iw/ih,640/427),min(iw,640),-1)':h='if(gte(iw/ih,640/427),-1,min(ih,427))',scale=trunc(iw/2)*2:trunc(ih/2)*2,setsar=sar=1/1,split=2[stream2out1][stream2out2];"
          "[2:v]setpts=PTS-STARTPTS,scale=w='if(gte(iw/ih,640/427),min(iw,640),-1)':h='if(gte(iw/ih,640/427),-1,min(ih,427))',scale=trunc(iw/2)*2:trunc(ih/2)*2,setsar=sar=1/1,split=2[stream3out1][stream3out2];"
          "[stream1out1]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=3,select=lte(n\\,90)[stream1overlaid];"
          "[stream1out2]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=1,select=lte(n\\,30)[stream1ending];"
          "[stream2out1]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=2,select=lte(n\\,60)[stream2overlaid];"
          "[stream2out2]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=1,select=lte(n\\,30),split=2[stream2starting][stream2ending];"
          "[stream3out1]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=2,select=lte(n\\,60)[stream3overlaid];"
          "[stream3out2]pad=width=640:height=427:x=(640-iw)/2:y=(427-ih)/2:color=#00000000,trim=duration=1,select=lte(n\\,30)[stream3starting];"
          "[stream2starting][stream1ending]blend=all_expr='if(gte(X,(W/2)*T/1)*lte(X,W-(W/2)*T/1),B,A)':shortest=1[stream2blended];"
          "[stream3starting][stream2ending]blend=all_expr='if(gte(X,(W/2)*T/1)*lte(X,W-(W/2)*T/1),B,A)':shortest=1[stream3blended];"
          "[stream1overlaid][stream2blended][stream2overlaid][stream3blended][stream3overlaid]concat=n=5:v=1:a=0,scale=w=640:h=424,format=yuv420p[video]\"";
      command += ' -map [video] -vsync 2 -async 1 ';
      command += ' -c:v mpeg4 -r 14  -y $output ';

      final int result = await flutterFFmpeg.execute(command);

      if (result == 0) {
        VideoPlayerController videoPlayerController =
            VideoPlayerController.file(File(output));
        videoPlayerController.initialize();
        emit(
          SlideState.success(
              const Slide(
                videoPath: '/storage/emulated/0/Download/slide.mp4',
              ),
              videoPlayerController),
        );
      } else {
        emit(const SlideState.failure('Failed to merge'));
      }
    } else {
      emit(const SlideState.failure('This demo allows only 3 inputs'));
    }
  }
}

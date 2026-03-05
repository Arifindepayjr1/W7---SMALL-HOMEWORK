import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w7_small_homework/ui/screens/library/view_models/library_view_model.dart';
import 'package:w7_small_homework/ui/screens/library/widgets/library_content.dart';

import '../../../data/repositories/songs/song_repository.dart';
import '../../../model/songs/song.dart';
import '../../states/player_state.dart';
import '../../states/settings_state.dart';
import '../../theme/theme.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PlayerState playerState = context.watch<PlayerState>();
    final SongRepository songRepository = context.watch<SongRepository>();
    return ChangeNotifierProvider(
      child: LibraryContent(),
      create: (_) {
        return LibraryViewModel(
          playerState: playerState,
          songRepository: songRepository,
        );
      },
    );
  }
}

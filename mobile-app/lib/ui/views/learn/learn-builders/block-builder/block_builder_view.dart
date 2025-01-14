import 'package:flutter/material.dart';
import 'package:freecodecamp/models/learn/curriculum_model.dart';
import 'package:freecodecamp/ui/views/learn/learn-builders/block-builder/block_builder_model.dart';
import 'package:freecodecamp/ui/views/learn/learn-builders/challenge-builder/challenge_builder_grid_view.dart';
import 'package:freecodecamp/ui/views/learn/learn-builders/challenge-builder/challenge_builder_list_view.dart';
import 'package:stacked/stacked.dart';

class BlockBuilderView extends StatelessWidget {
  const BlockBuilderView({
    Key? key,
    required this.block,
  }) : super(key: key);

  final Block block;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BlockBuilderModel>.reactive(
        viewModelBuilder: () => BlockBuilderModel(),
        builder: (context, model, child) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    !block.isStepBased
                        ? ChallengeBuilderListView(
                            block: block,
                          )
                        : ChallengeBuilderGridView(
                            block: block,
                          )
                  ],
                ),
              ],
            ));
  }
}

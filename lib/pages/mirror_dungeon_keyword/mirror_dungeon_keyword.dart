import 'package:flutter/material.dart';
import 'package:limdeck/data/keyword.dart';

class MirrorDungeonKeywordPage extends StatelessWidget {
  const MirrorDungeonKeywordPage({super.key, required this.keyword});

  final Keyword keyword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(keyword.translate),
        centerTitle: true,
      ),
      body: Center(
        child: Text(keyword.toString()),
      ),
    );
  }
}

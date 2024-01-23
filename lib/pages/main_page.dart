import 'package:flutter/material.dart';
import 'package:limdeck/data/keyword.dart';
import 'package:limdeck/pages/mirror_dungeon_keyword/mirror_dungeon_keyword.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        centerTitle: true,
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
          ),
          scrollDirection: Axis.vertical,
          children: Keyword.values
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MirrorDungeonKeywordPage(
                          keyword: e,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: Center(
                      child: Text(e.translate),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

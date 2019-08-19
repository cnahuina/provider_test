import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/src/providers/heroesinfo.dart';
import 'package:provider_test/src/widgets/super_floatingaction.dart';
import 'package:provider_test/src/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: heroesInfo.colorBase,
        title: Text(heroesInfo.heroe),
      ),
      body: Center(child: SuperText()),
      floatingActionButton:SuperFloatingAction() ,
    );
  }
}
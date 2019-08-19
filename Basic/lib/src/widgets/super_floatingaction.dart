import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_test/src/providers/heroesinfo.dart';
import 'package:provider_test/src/providers/villanosinfo.dart';

class SuperFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: (){
            heroesInfo.heroe = 'Ironman';
            villanosInfo.villano = 'Thanos';

          }
        ),
        SizedBox(height: 10.0,),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: (){
            heroesInfo.heroe = 'Capitan América';
            villanosInfo.villano = 'Red skull';
          },
        )
      ],
    );
  }
}
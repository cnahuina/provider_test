import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier{
  String _heroe = 'Capitan América';
  Color colorBase = Colors.blue;
  NetworkImage _imageMain = NetworkImage('https://img.europapress.es/fotoweb/fotonoticia_20190426115757_640.jpg');


  get heroe{
    return _heroe;
  }
  get imageMain{
    return _imageMain;
  }

  set heroe(String nombre){
    this._heroe = nombre;
    this.colorBase = (nombre == 'Ironman') ? Colors.red : Colors.blue;
    
    notifyListeners();
  }

  set imageMain (NetworkImage imagen){
    this._imageMain = imagen;
    notifyListeners();
  }
}
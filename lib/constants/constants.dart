import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); // Artık bundan kimse nesne üretemez çünkü gizli.

  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(35),
    );
  }

  static const String pokeballImageUrl = 'images/pokeball.png';

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(18),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(18),
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.6).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(16),
    );
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold,
    );
  }
}

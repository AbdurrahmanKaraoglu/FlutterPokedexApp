import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ekran boyutunu öğrenme
    // debugPrint(MediaQuery.of(context).size.height.toString());
    // debugPrint(MediaQuery.of(context).size.width.toString());
    return SizedBox(
      // color: Colors.red,
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.pokeballImageUrl,
              width: UIHelper.getpokeballImageWidgetHeight(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}

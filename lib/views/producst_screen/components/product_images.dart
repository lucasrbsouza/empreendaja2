import 'package:flutter_application_empreendaja/const/const.dart';

Widget productImages({required label, onpress}) {
  return "$label".text
      .size(10)
      .bold
      .makeCentered()
      .color(fontGrey)
      .box
      .color(lightGrey)
      .size(80, 80)
      .roundedSM
      .make();
}

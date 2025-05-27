import 'package:flutter_application_empreendaja/const/const.dart';

Widget normalText({text, color = Colors.white, size = 14}) {
  return "$text".text.color(color).size(size).make();
}

Widget boldText({text, color = Colors.white, size = 14}) {
  return "$text".text.semiBold.color(color).size(size).make();
}

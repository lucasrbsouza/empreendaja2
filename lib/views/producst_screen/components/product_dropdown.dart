import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';

Widget productDropDown() {
  return DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: normalText(text: "Choose Category", color: fontGrey),
          value: null,
          isExpanded: true,
          items: const [],
          onChanged: (value) {},
        ),
      ).box
      .padding(const EdgeInsets.symmetric(horizontal: 4))
      .white
      .roundedSM
      .make();
}

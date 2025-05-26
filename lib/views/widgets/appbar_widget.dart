import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

AppBar appBarWidget(title) {
  return AppBar(
    backgroundColor: white,
    automaticallyImplyLeading: false,
    title: boldText(text: title, color: fontGrey, size: 18),
    actions: [
      Center(
        child: normalText(
          text: intl.DateFormat(
            'EEE, MMM,d'
            'yy',
          ).format(DateTime.now()),
          color: purpleColor,
        ),
      ),
      10.widthBox,
    ],
  );
}

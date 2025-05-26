import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(12),
      backgroundColor: color,
    ),
    onPressed: onPress,
    child: normalText(text: title, size: 16),
  );
}

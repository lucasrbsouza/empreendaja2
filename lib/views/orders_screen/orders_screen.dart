import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/orders_screen/orders_details.dart';
import 'package:flutter_application_empreendaja/views/widgets/appbar_widget.dart';
import 'package:intl/intl.dart' as intl;

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20,
              (index) =>
                  ListTile(
                    onTap: () {
                      Get.to(() => const OrdersDetails());
                    },
                    tileColor: textfieldGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: boldText(
                      text: "96565413184865454",
                      color: purpleColor,
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_month, color: fontGrey),
                            10.widthBox,
                            boldText(
                              text: intl.DateFormat().add_yMd().format(
                                DateTime.now(),
                              ),
                            ).color(fontGrey),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.payment, color: fontGrey),
                            10.widthBox,
                            boldText(text: unpaid, color: red),
                          ],
                        ),
                      ],
                    ),
                    trailing: boldText(
                      text: "\$40.0",
                      color: purpleColor,
                      size: 16,
                    ),
                  ).box.margin(const EdgeInsets.only(bottom: 4)).make(),
            ),
          ),
        ),
      ),
    );
  }
}

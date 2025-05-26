import 'package:flutter/material.dart';
import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/ourButton.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/orders_screen/components/order_place.dart';
import 'package:get/get_core/get_core.dart';

class OrdersDetails extends StatelessWidget {
  const OrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: darkGrey),
        ),
        title: boldText(text: "Order details", color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(color: green, onPress: () {}, title: "Confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // order delivery
              Visibility(
                child:
                    Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(
                              text: "Order status",
                              color: fontGrey,
                              size: 16.0,
                            ),
                            SwitchListTile(
                              activeColor: green,
                              value: true,
                              onChanged: (value) {},
                              title: boldText(text: "Placed", color: fontGrey),
                            ),
                            SwitchListTile(
                              activeColor: green,
                              value: true,
                              onChanged: (value) {},
                              title: boldText(
                                text: "Confirmed",
                                color: fontGrey,
                              ),
                            ),
                            SwitchListTile(
                              activeColor: green,
                              value: false,
                              onChanged: (value) {},
                              title: boldText(
                                text: "on Delivery",
                                color: fontGrey,
                              ),
                            ),
                            SwitchListTile(
                              activeColor: green,
                              value: false,
                              onChanged: (value) {},
                              title: boldText(
                                text: "Delivered",
                                color: fontGrey,
                              ),
                            ),
                          ],
                        ).box
                        .padding(const EdgeInsets.all(8))
                        .outerShadowMd
                        .white
                        .border(color: lightGrey)
                        .roundedSM
                        .make(),
              ),

              //order details section
              Column(
                children: [
                  orderPlaceDeatails(d1: "", d2: "", title1: "", title2: ""),
                  orderPlaceDeatails(
                    d1: DateTime.now(),
                    d2: "",
                    title1: "",
                    title2: "",
                  ),
                  orderPlaceDeatails(d1: "", d2: "", title1: "", title2: ""),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(
                              text: "Shipping Addres",
                              color: purpleColor,
                            ),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            "Shopping Addres".text.make(),
                            // "${title1}".text.fontFamily(semibold).make(),
                            //"${d1}".text.color(red).fontFamily(semibold).make(),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldText(
                                text: "Total Amount",
                                color: purpleColor,
                              ),
                              boldText(text: "\$300,00", color: red),

                              // "${title2}".text.fontFamily(semibold).make(),
                              // "${d2}".text.color(red).fontFamily(semibold).make(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ).box.outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
              const Divider(),
              10.heightBox,
              boldText(text: "Ordered Products", color: fontGrey, size: 16),
              10.heightBox,
              ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children:
                        List.generate(3, (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              orderPlaceDeatails(
                                d1: "quantidade de pedidos",
                                d2: "Refundable",
                                title1: "pedidos",
                                title2: "pedidos precos",
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Container(
                                  width: 30,
                                  height: 20,
                                  color: purpleColor,
                                ),
                              ),
                              const Divider(),
                            ],
                          );
                        }).toList(),
                  ).box.outerShadowMd.white
                  .margin(const EdgeInsets.only(bottom: 4))
                  .make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

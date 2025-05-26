import 'package:flutter/material.dart';
import 'package:flutter_application_empreendaja/const/colors.dart';
import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/components/product_dropdown.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/components/product_images.dart';
import 'package:flutter_application_empreendaja/views/widgets/custom_textfield.dart';
import 'package:get/utils.dart';

class AddProducts extends StatelessWidget {
  const AddProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: white),
        ),
        title: boldText(text: "Add Product", size: 16),
        actions: [
          TextButton(
            onPressed: () {},
            child: boldText(text: save, color: white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(hint: "eg. Bolsa LV", label: "Product Name"),
              10.heightBox,
              customTextField(
                hint: "eg. Produto legal",
                label: "Description",
                isDesc: true,
              ),
              10.heightBox,
              customTextField(hint: "\$100.00", label: "Price"),
              10.heightBox,
              customTextField(hint: "eg. 20", label: "Quantity"),
              10.heightBox,
              productDropDown(),
              10.heightBox,
              productDropDown(),
              const Divider(color: white),
              boldText(text: "Choose product images"),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  3,
                  (index) => productImages(label: "${index + 1}"),
                ),
              ),
              5.heightBox,
              normalText(
                text: "first image will be your display image",
                color: lightGrey,
              ),
              10.heightBox,
              boldText(text: "Choose product colors"),
              10.heightBox,
              Wrap(
                spacing: 4.0,
                children: List.generate(
                  9,
                  (index) => Stack(
                    alignment: Alignment.center,
                    children: [
                      VxBox()
                          .color(Vx.randomPrimaryColor)
                          .roundedFull
                          .size(50, 50)
                          .make(),
                      const Icon(Icons.done, color: white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

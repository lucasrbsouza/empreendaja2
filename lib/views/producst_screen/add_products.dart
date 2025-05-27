import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/components/product_images.dart';
import 'package:flutter_application_empreendaja/views/widgets/custom_textfield.dart';

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

              // Disponibilidade (Switch)
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(text: "Disponível para venda"),
                  StatefulBuilder(
                    builder: (context, setState) {
                      bool isAvailable = true;
                      return Switch(
                        value: isAvailable,
                        onChanged: (value) {
                          setState(() {
                            isAvailable = value;
                          });
                        },
                        activeColor: Colors.green,
                      );
                    },
                  ),
                ],
              ),

              // Categoria (Radio Buttons)
              10.heightBox,
              boldText(text: "Escolha a categoria do produto"),
              StatefulBuilder(
                builder: (context, setState) {
                  String selectedCategory = "Moda";
                  return Column(
                    children:
                        ["Moda", "Eletrônicos", "Casa", "Beleza"].map((
                          category,
                        ) {
                          return RadioListTile<String>(
                            activeColor: white,
                            title: normalText(text: category),
                            value: category,
                            groupValue: selectedCategory,
                            onChanged: (value) {
                              setState(() {
                                selectedCategory = value!;
                              });
                            },
                          );
                        }).toList(),
                  );
                },
              ),

              // Promoção ativa (Checkbox)
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(text: "Produto em promoção?"),
                  StatefulBuilder(
                    builder: (context, setState) {
                      bool isOnSale = false;
                      return Checkbox(
                        value: isOnSale,
                        onChanged: (value) {
                          setState(() {
                            isOnSale = value!;
                          });
                        },
                        activeColor: white,
                        checkColor: purpleColor,
                      );
                    },
                  ),
                ],
              ),

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

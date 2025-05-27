import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/add_products.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/product_details.dart';
import 'package:flutter_application_empreendaja/views/widgets/appbar_widget.dart';

class ProductsScreens extends StatelessWidget {
  const ProductsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {
          Get.to(() => const AddProducts());
        },
        child: const Icon(Icons.add, color: white),
      ),
      appBar: appBarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                onTap: () {
                  Get.to(() => const ProductDetails());
                },
                leading: Image.asset(
                  imgProduct,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                title: boldText(text: "Products title", color: fontGrey),
                subtitle: Row(
                  children: [
                    normalText(text: "\$40.0", color: darkGrey),
                    10.widthBox,
                    boldText(text: "Featured", color: green),
                  ],
                ),
                trailing: VxPopupMenu(
                  arrowSize: 0.0,
                  menuBuilder:
                      () =>
                          Column(
                            children: List.generate(
                              popupMenuIcons.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Icon(popupMenuIcons[index]),
                                    10.widthBox,
                                    normalText(
                                      text: popupMenuTitles[index],
                                      color: darkGrey,
                                    ),
                                  ],
                                ).onTap(() {}),
                              ),
                            ),
                          ).box.white.rounded.width(200).make(),
                  clickType: VxClickType.singleClick,
                  child: const Icon(Icons.more_vert_rounded),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
                leading: Image.network(
                  "https://imgs.search.brave.com/oivnCy35sGabSWwiFJhyCe4md3j2dvhEOaoT50EsNIM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vZ1BGclFO/UTJvaXdEQVg1ODI2/QXpQclNwMDNHSTNm/d3VXSF9VeUdnbjFl/Zy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTlu/YjNacC9jM1ZoYkd4/NUxtTnZiUzkzL2ND/MWpiMjUwWlc1MEwz/VncvYkc5aFpITXZN/akF5TXk4dy9NeTl0/YjI1dlkyaHliMjFo/L2RHbGpMWE5vYjNS/ekxXWnYvY2kxd2Nt/OWtkV04wTFdsdC9Z/V2RsTFdsa1pXRnpM/bkJ1L1p3",
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

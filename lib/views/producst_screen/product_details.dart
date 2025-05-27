import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
        title: boldText(text: "Product title", color: fontGrey, size: 16),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
              autoPlay: true,
              height: 350,
              itemCount: 3,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              itemBuilder: (context, index) {
                return Image.network(
                  "https://imgs.search.brave.com/oivnCy35sGabSWwiFJhyCe4md3j2dvhEOaoT50EsNIM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vZ1BGclFO/UTJvaXdEQVg1ODI2/QXpQclNwMDNHSTNm/d3VXSF9VeUdnbjFl/Zy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTlu/YjNacC9jM1ZoYkd4/NUxtTnZiUzkzL2ND/MWpiMjUwWlc1MEwz/VncvYkc5aFpITXZN/akF5TXk4dy9NeTl0/YjI1dlkyaHliMjFo/L2RHbGpMWE5vYjNS/ekxXWnYvY2kxd2Nt/OWtkV04wTFdsdC9Z/V2RsTFdsa1pXRnpM/bkJ1L1p3",
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
            10.heightBox,

            // title
            // title!.text .size(16).color(darkFontGrey).fontFamily(semibold) .make(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: "Product title", color: fontGrey, size: 16),
                  10.heightBox,
                  Row(
                    children: [
                      boldText(text: "Category", color: fontGrey, size: 16.0),
                      10.widthBox,
                      normalText(
                        text: "Subcategory",
                        color: fontGrey,
                        size: 16.0,
                      ),
                    ],
                  ),
                  10.heightBox,
                  // rating
                  VxRating(
                    isSelectable: false,
                    value:
                        3.0, //double.tryParse(data['p_rating'].toString()) ?? 0.0,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    maxRating: 5,
                    size: 25,
                  ),
                ],
              ),
            ),
            10.heightBox,

            // price
            // "${double.tryParse(data['p_price'].toString()) ?? 0}" .numCurrency .text .color(redColor) .fontFamily(bold)
            //  .size(18)
            //.make(),
            boldText(text: "\$300.0", color: red, size: 16),
            20.heightBox,
            Column(
              children: [
                // color section
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: normalText(text: "Color", color: red, size: 18),
                    ),
                    //"Color: ".text.color(textfieldGrey).make()),
                    Row(
                      children: List.generate(3, (index) {
                        return VxBox()
                            .size(40, 40)
                            .roundedFull
                            .color(Vx.randomPrimaryColor)
                            // .color(Color(colorInt).withOpacity(1.0))
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .make()
                            .onTap(() {});
                      }),
                    ),
                  ],
                ).box.padding(const EdgeInsets.all(8)).white.make(),
                10.heightBox,
                // quantity row
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: normalText(
                        text: "Quantity",
                        color: fontGrey,
                        size: 18,
                      ),
                    ),
                    boldText(text: "20 items", color: fontGrey),
                  ],
                ),
              ],
            ).box.padding(const EdgeInsets.all(8)).white.shadowSm.make(),
            const Divider(),
            10.heightBox,
            boldText(text: "Description", color: darkGrey, size: 16),
            10.heightBox,
            normalText(text: "Descricao do produto", color: darkGrey, size: 16),
          ],
        ),
      ),
    );
  }
}

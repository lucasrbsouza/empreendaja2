import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/widgets/appbar_widget.dart';
import 'package:flutter_application_empreendaja/views/widgets/dashboard_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  title: products,
                  count: "60",
                  icon: Icon(Icons.production_quantity_limits),
                ),
                dashboardButton(
                  context,
                  title: orders,
                  count: "15",
                  icon: Icon(Icons.book),
                ),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  title: rating,
                  count: "60",
                  icon: Icon(Icons.reviews),
                ),
                dashboardButton(
                  context,
                  title: totalSales,
                  count: "15",
                  icon: Icon(Icons.star),
                ),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popular, color: fontGrey, size: 16),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                3,
                (index) => ListTile(
                  onTap: () {},
                  leading: Image.network(
                    "https://imgs.search.brave.com/oivnCy35sGabSWwiFJhyCe4md3j2dvhEOaoT50EsNIM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vZ1BGclFO/UTJvaXdEQVg1ODI2/QXpQclNwMDNHSTNm/d3VXSF9VeUdnbjFl/Zy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTlu/YjNacC9jM1ZoYkd4/NUxtTnZiUzkzL2ND/MWpiMjUwWlc1MEwz/VncvYkc5aFpITXZN/akF5TXk4dy9NeTl0/YjI1dlkyaHliMjFo/L2RHbGpMWE5vYjNS/ekxXWnYvY2kxd2Nt/OWtkV04wTFdsdC9Z/V2RsTFdsa1pXRnpM/bkJ1L1p3",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  title: boldText(text: "Products title", color: fontGrey),
                  subtitle: normalText(text: "\$40.0", color: darkGrey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

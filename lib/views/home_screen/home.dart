import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/controllers/home_controller.dart';
import 'package:flutter_application_empreendaja/views/home_screen/home_screen.dart';
import 'package:flutter_application_empreendaja/views/orders_screen/orders_screen.dart';
import 'package:flutter_application_empreendaja/views/producst_screen/products_screens.dart';
import 'package:flutter_application_empreendaja/views/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreens = [
      const HomeScreen(),
      const ProductsScreens(),
      const OrdersScreen(),
      const ProfileScreen(),
    ];
    var bottomNavbar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: dashboard),
      BottomNavigationBarItem(
        icon: Image.asset(icProducts, color: darkGrey, width: 24),
        label: products,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icOrders, width: 24, color: darkGrey),
        label: orders,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icGenerateSettings, width: 24, color: darkGrey),
        label: settings,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) {
            controller.navIndex.value = index;
          },
          currentIndex: controller.navIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purpleColor,
          unselectedItemColor: darkGrey,
          items: bottomNavbar,
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: navScreens.elementAt(controller.navIndex.value)),
          ],
        ),
      ),
    );
  }
}

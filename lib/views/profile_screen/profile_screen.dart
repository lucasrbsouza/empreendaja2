import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/messages_screen/messages_screen.dart';
import 'package:flutter_application_empreendaja/views/profile_screen/edit_profile_screen.dart';
import 'package:flutter_application_empreendaja/views/shop_screen/shop_setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const EditProfileScreen());
            },
            icon: const Icon(Icons.edit, color: white),
          ),
          TextButton(onPressed: () {}, child: normalText(text: logout)),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading:
                Image.asset(
                  imgProduct,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
            title: boldText(text: "vendor name"),
            subtitle: normalText(text: "vendor@gamil.com"),
          ),
          const Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                profileButtonsIcons.length,
                (index) => ListTile(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Get.to(() => const ShopSetting());
                        break;
                      case 1:
                        Get.to(() => const MessagesScreen());
                        break;
                      default:
                    }
                  },
                  leading: Icon(profileButtonsIcons[index], color: white),
                  title: normalText(text: profileButtonsTitles[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

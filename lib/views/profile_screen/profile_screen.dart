import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/login_screen.dart';
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
          TextButton(
            onPressed: () {
              Get.to(() => LoginScreen());
            },
            child: normalText(text: logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              leading:
                  Image.network(
                    "https://imgs.search.brave.com/x55EukpOKvsr84rxXNZRs0JTUu070OEVsbR1s1sj4o0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vd0dnZmRx/bEZxYU1lbloyNk1G/MFdvZ2JHdC1kanBU/T0tfUHp3TGFOMWxQ/cy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTkw/TkM1bS9kR05rYmk1/dVpYUXZhbkJuL0x6/QXdMelkwTHpZM0x6/STMvTHpNMk1GOUdY/elkwTmpjeS9Oek0y/WDFVMWEzQmtSM001/L2EyVlZiR3c0UTFK/Uk0zQXovV1dGRmRq/Sk5ObkZyVmxrMS9M/bXB3Wnc",
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
      ),
    );
  }
}

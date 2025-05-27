import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/widgets/custom_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              "https://imgs.search.brave.com/x55EukpOKvsr84rxXNZRs0JTUu070OEVsbR1s1sj4o0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vd0dnZmRx/bEZxYU1lbloyNk1G/MFdvZ2JHdC1kanBU/T0tfUHp3TGFOMWxQ/cy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTkw/TkM1bS9kR05rYmk1/dVpYUXZhbkJuL0x6/QXdMelkwTHpZM0x6/STMvTHpNMk1GOUdY/elkwTmpjeS9Oek0y/WDFVMWEzQmtSM001/L2EyVlZiR3c0UTFK/Uk0zQXovV1dGRmRq/Sk5ObkZyVmxrMS9M/bXB3Wnc",
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
              onPressed: () {},
              child: normalText(text: changeImage, color: fontGrey),
            ),
            10.heightBox,
            const Divider(color: white),
            customTextField(label: name, hint: "eg. Lucass Dev"),
            10.heightBox,
            customTextField(label: password, hint: passowordHint),
            10.heightBox,
            customTextField(label: confirmPassword, hint: passowordHint),
          ],
        ),
      ),
    );
  }
}

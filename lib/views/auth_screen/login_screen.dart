import 'package:flutter_application_empreendaja/const/const.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/ourButton.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/widgets/text_style.dart';
import 'package:flutter_application_empreendaja/views/home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              30.heightBox,
              normalText(text: welcome, size: 18),
              20.heightBox,
              Row(
                children: [
                  Image.asset(icLogo, width: 80).box
                      .border(color: white)
                      .rounded
                      .padding(const EdgeInsets.all(8))
                      .make(),
                  10.widthBox,
                  boldText(text: appname, size: 20),
                ],
              ),
              40.heightBox,
              normalText(text: loginTo, size: 20, color: lightGrey),
              10.heightBox,
              Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          fillColor: textfieldGrey,
                          filled: true,
                          prefixIcon: Icon(Icons.email, color: purpleColor),
                          border: InputBorder.none,
                          hintText: emailHint,
                        ),
                      ),
                      10.heightBox,
                      TextFormField(
                        decoration: const InputDecoration(
                          fillColor: textfieldGrey,
                          filled: true,
                          prefixIcon: Icon(Icons.lock, color: purpleColor),
                          border: InputBorder.none,
                          hintText: passowordHint,
                        ),
                      ),
                      10.heightBox,
                      TextButton(
                        onPressed: () {},
                        child: normalText(
                          text: forgotPassword,
                          color: purpleColor,
                        ),
                      ),
                      20.heightBox,
                      SizedBox(
                        width: context.screenWidth - 100,
                        child: ourButton(
                          title: login,
                          onPress: () {
                            Get.to(() => const Home());
                          },
                        ),
                      ),
                    ],
                  ).box.white.rounded.outerShadow
                  .padding(const EdgeInsets.all(8))
                  .make(),
              10.heightBox,
              Center(child: normalText(text: anyProblem, color: lightGrey)),
              const Spacer(),
              Center(child: boldText(text: credit)),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

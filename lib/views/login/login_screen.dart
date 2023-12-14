import 'package:dev_test/core/colors.dart';
import 'package:dev_test/core/constants.dart';
import 'package:dev_test/views/login/widgets/custom_textformfield.dart';
import 'package:dev_test/views/login/widgets/login_button.dart';
import 'package:dev_test/views/login/widgets/sub_heading.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: kBlackColor,
              )),
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: const Text(
            'Login',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0), // Adjust the curve radius here
              bottomRight:
                  Radius.circular(15.0), // Adjust the curve radius here
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: .7 * screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth,
                height: .15 * screenHeight,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"))),
              ),
              kHeight20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Log in to your Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
              kHeight20,
              kHeight20,
              SubHeading(subHeadingText: "Enter User name"),
              kHeight5,
              CustomTextFormField(
                  hintText: "",
                  controller: userNameController,
                  width: .8 * screenWidth,
                  isObscure: false,
                  onClickFunction: () {}),
              kHeight10,
              SubHeading(subHeadingText: "Password"),
              kHeight5,
              CustomTextFormField(
                  hintText: "",
                  controller: passwordController,
                  width: .8 * screenWidth,
                  isObscure: true,
                  onClickFunction: () {}),
              kHeight20,
              kHeight20,
              CustomButton(onPressed: () {}),
              kHeight10
            ],
          ),
        ),
      ),
    );
  }
}

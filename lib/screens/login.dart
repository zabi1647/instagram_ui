import 'package:flutter/material.dart';
import 'package:instagram_clone/common/font.dart';
import 'package:instagram_clone/common/text_field.dart';
import 'package:instagram_clone/provider/passwordshower.dart';
import 'package:instagram_clone/screens/homeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    PasswordShower controller = new PasswordShower();
    ValueNotifier<int> _notifier = ValueNotifier<int>(0);
    ValueNotifier<bool> _toggle = ValueNotifier<bool>(true);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color(0xFF405DE6),
              Color(0xFF5B51D8),
              Color(0xFF833AB4),
              Color(0xFFC13584),
              Color(0xFFE1306C),
              Color(0xFFFD1D1D),
              Color(0xFFF56040),
              Color(0xFFF77737),
              Color(0xFFFCAF45),
            ])),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              Text(
                "Instagram",
                style: fontstyle(fw: FontWeight.w200, family: font, size: 50),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              textfield(
                controller: controller.usename,
                hint: "Enter your email",
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              ValueListenableBuilder(
                valueListenable: _toggle,
                builder: ((context, value, child) {
                  return textfield(
                    controller: controller.password,
                    hint: "Enter your Password",
                    icon: Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    hide: _toggle.value,
                    button: InkWell(
                      onTap: () {
                        _toggle.value = !_toggle.value;
                      },
                      child: _toggle.value
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: fontstyle(colors: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false);
                },
                child: Container(
                  height: height * 0.06,
                  width: width * .99,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Text(
                      "Login",
                      style: fontstyle(
                          colors: Colors.white, fw: FontWeight.w700, size: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Text(
                    " OR ",
                    style: fontstyle(fw: FontWeight.w600, size: 15),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.3,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " Log in with Facebook ",
                    style: fontstyle(fw: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.07,
              ),
              const Divider(),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.26,
                  ),
                  Text(
                    "Don't have an Account?",
                    style: fontstyle(),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: fontstyle(fw: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

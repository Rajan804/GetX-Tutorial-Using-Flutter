import 'package:first_tutorial1/LoginSignUpWithGetx/LoginSignUpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginsinghome extends StatefulWidget {
  const Loginsinghome({super.key});

  @override
  State<Loginsinghome> createState() => _LoginsinghomeState();
}

class _LoginsinghomeState extends State<Loginsinghome> {
  Loginsignupcontroller loginsignupcontroller =
      Get.put(Loginsignupcontroller());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login-SignUp"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginsignupcontroller.emailController.value,
              decoration: InputDecoration(
                hintText: "email",
              ),
            ),
            TextFormField(
              controller: loginsignupcontroller.passController.value,
              decoration: InputDecoration(
                hintText: "password",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  loginsignupcontroller.loginApi();
                },
                child: loginsignupcontroller.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        height: 45,
                        color: Colors.grey,
                        child: Center(
                          child: Text("Login"),
                        ),
                      ),
              );
            })
          ],
        ),
      ),
    );
  }
}

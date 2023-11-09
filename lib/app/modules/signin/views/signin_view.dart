import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
 Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 30, left: 30, right: 30)),
        Container(
            width: 450,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.6,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Column(children: [
                const Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 20, left: 30, right: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "В",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 62, 150, 221)),
                          ),
                          Text(
                            "Х",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 86, 169, 236)),
                              
                          ),
                          Text(
                            "О",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 102, 176, 237),
                            )),
                          Text(
                            "Д",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color:Color.fromARGB(255, 86, 166, 231)),
                          ),
                        ])),
                const SizedBox(
                  height: 30,
                  width: 360,
                ),
                SizedBox(
                    height: 70.25,
                    width: 360,
                    child: TextField(
                      controller: controller.mailController,
                      decoration: InputDecoration(
                          enabled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.4,
                                  )),
                          hintText: 'email',
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20)),
                      style: const TextStyle(fontSize: 16),
                    )),
                const SizedBox(
                  height: 10,
                  width: 360,
                ),
                SizedBox(
                    height: 70.25,
                    width: 360,
                    child: TextField(
                      controller: controller.passController,
                      decoration: InputDecoration(
                          enabled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.4,
                                  color: Color.fromARGB(255, 41, 40, 40))),
                          hintText: "пароль",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20)),
                      style: const TextStyle(fontSize: 16),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)))),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(116, 152, 231, 1)),
                      ),
                      onPressed: () => controller.signIn(),
                      child: const Text(
                        "Войти",
                        style: TextStyle(fontSize: 16,color: Colors.black),
                      )),
                        Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () =>controller.toSignUp(),
                      child: const Text(
                        "Зарегистрироваться",
                        style: TextStyle(fontSize: 14,color: Colors.black),
                      )),
               ] ))
              ]
        ))])))
      ])));
  }
}

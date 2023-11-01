import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
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
              color: Colors.grey,
              width: 0.6,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
              child: Column(children: [
            const Padding(
                padding:
                    EdgeInsets.only(top: 40, bottom: 20, left: 30, right: 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "З",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 62, 150, 221)),
                  ),
                  Text(
                    "А",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 66, 138, 197)),
                  ),
                  Text("Р",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 102, 176, 237),
                      )),
                  Text(
                    "Е",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "Г",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 65, 138, 198)),
                  ),
                  Text(
                    "И",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "С",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "Т",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 60, 136, 198)),
                  ),
                  Text(
                    "Р",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "И",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 63, 129, 183)),
                  ),
                  Text(
                    "Р",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "О",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "В",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "А",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "Т",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "Ь",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 67, 135, 190)),
                  ),
                  Text(
                    "С",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
                  ),
                  Text(
                    "Я",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 86, 166, 231)),
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
                  decoration: InputDecoration(
                      enabled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0.4,
                              color: Color.fromARGB(255, 85, 90, 95))),
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
            SizedBox(
                height: 70.25,
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                      enabled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0.4,
                              color: Color.fromARGB(255, 41, 40, 40))),
                      hintText: "повторите пароль",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20)),
                  style: const TextStyle(fontSize: 16),
                )),
            SizedBox(width: 40, height: 15),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)))),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromRGBO(116, 152, 231, 1)),
                      ),
                      onPressed: () => controller.signUp(),
                      child: const Text(
                        "Зарегистрироваться",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                ]))
          ])))
    ])));
  }
}

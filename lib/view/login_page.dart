import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _emailEditingControlller = TextEditingController().obs;
  final _passwordEditingController = TextEditingController().obs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'hai! Selamat datang!',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Username atau Email',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailEditingControlller.value,
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.grey.withOpacity(0.5),
                      filled: true),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kata Sandi',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordEditingController.value,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.grey.withOpacity(0.5),
                      filled: true),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lupa kata sandi?',
                      style: TextStyle(fontSize: 10),
                    ))
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Column(
              children: [
                SizedBox(
                    width: size.width * 0.5,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 12)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Jika belum memiliki akun',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Daftar',
                          style: TextStyle(fontSize: 10),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

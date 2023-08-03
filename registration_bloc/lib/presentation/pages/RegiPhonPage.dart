import 'package:flutter/material.dart';
import 'package:registration_bloc/presentation/widgets/colors.dart';
import 'package:registration_bloc/presentation/widgets/fonts.dart';

import '../widgets/ContaTrans.dart';
import 'RegiNumPage.dart';

class RegistrationCodeWidget extends StatelessWidget {
   RegistrationCodeWidget({
    Key? key,
  }) : super(key: key);
TextEditingController controllerPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: GradientColor.singIn,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 95,
              child: Image.asset(
                'assets/images/EllipseTop.png',
                width: 215,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 90,
              child: Image.asset(
                'assets/images/EllipseBotton.png',
                width: 287,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContaTransp(
                  withOp: 0.18,
                  height: 565,
                  width: 428,
                  radius: 45,
                  chi: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        'Welcome',
                        style: Fonts.w600s25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 115,
                          right: 71,
                          left: 71,
                        ),
                        child: TextField(
                          controller: controllerPhone,
                          style: Fonts.w300s17,
                          decoration: InputDecoration(
                            fillColor: Colors.white.withOpacity(0.23),
                            filled: true,
                            hintText: '    Phone',
                            hintStyle: Fonts.w600s16,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 113,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                   RegistrationNumbersWidget()),
                            ),
                          );
                        },
                        child: ContaTransp(
                          height: 57,
                          width: 123,
                          radius: 13,
                          withOp: 0.23,
                          chi: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Sing In',
                                style: Fonts.w300s17,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 92,
                      ),
                      TextButton(
                        onPressed: () {
                          print('Hello');
                        },
                        child: const Text(
                          'Are you a new user? Sign Up',
                          style: Fonts.w300s15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

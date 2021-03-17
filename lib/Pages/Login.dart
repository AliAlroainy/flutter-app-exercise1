import 'package:app/Widgets/logButton.dart';

import '../Widgets/Widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      'Bakadons',
                      style: kHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Textinput(
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            Textinput(
                              hint: 'username',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            Passwordin(
                              hint: 'password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'forgot password?',
                              style: kBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            LogBtn(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1))),
                              child: Text(
                                'createNewAccount',
                                style: kBodyText,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ))),
    ]);
  }
}

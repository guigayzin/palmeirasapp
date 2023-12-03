import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/pages/auth/sign_up_screen.dart';
import 'package:palmeirasapp/src/pages/base/base_screen.dart';
import 'package:palmeirasapp/src/components/custom_text_fild.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: customColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //title
                  Text.rich(TextSpan(
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        const TextSpan(
                            text: 'Palmeira',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            )),
                        TextSpan(
                            text: 'store',
                            style: TextStyle(
                              color: customColors.customConstrastColor,
                              fontWeight: FontWeight.w300,
                            )),
                      ])),

                  //categorias
                  SizedBox(
                    height: 30,
                    child: DefaultTextStyle(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText('centro avanti?'),
                          TyperAnimatedText('volanti?'),
                          TyperAnimatedText('avião zuuuuuuuuuuuuuuuuuum?'),
                          TyperAnimatedText('AQUI VOCÊ ENCONTRA!!'),
                          TyperAnimatedText('Estão mais calmos?'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //textfild email
                    CustomTextField(
                      icon: Icons.email,
                      label: 'e-mail',
                    ),

                    //textfild senha
                    CustomTextField(
                      icon: Icons.lock,
                      label: 'senha',
                      isSecret: true,
                    ),

                    //Botão entrar
                    SizedBox(
                        height: 50,
                        width: 120,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                    customColors.customSwatchColor.shade700,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (c) {
                                return const BaseScreen();
                              }));
                            },
                            child: const Text(
                              'Entrar',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ))),

                    //Esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: customColors.customConstrastColor),
                          )),
                    ),

                    //divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: const Text('ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ]),
                    ),

                    //Botão cadastrar
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(50)),
                              side: BorderSide(
                                width: 2,
                                color: customColors.customSwatchColor,
                              )),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) {
                                return SignUpScreen();
                              }),
                            );
                          },
                          child: Text(
                            'Cadastre-se',
                            style: TextStyle(
                              color: customColors.customSwatchColor,
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                            ),
                          )),
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}

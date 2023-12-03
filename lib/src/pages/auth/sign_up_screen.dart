import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/components/custom_text_fild.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormater = MaskTextInputFormatter(
    mask: '***.***.***-**',
    filter: {'*': RegExp(r'[0-9]')},
  );
  final phoneFormater = MaskTextInputFormatter(
    mask: '(**) * ****-****',
    filter: {'*': RegExp(r'[0-9]')},
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: customColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  //titulo
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Cadastro",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),

                  //formulario
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //lbl_nome
                        const CustomTextField(
                          label: 'Nome',
                          icon: Icons.person,
                        ),

                        //lbl_cpf
                        CustomTextField(
                          inpuFormatters: [cpfFormater],
                          label: 'CPF',
                          icon: Icons.file_copy_rounded,
                        ),

                        //lbl_celular
                        CustomTextField(
                          inpuFormatters: [phoneFormater],
                          label: 'Celular',
                          icon: Icons.phone,
                        ),

                        //lbl_email
                        const CustomTextField(
                          label: 'Email',
                          icon: Icons.email,
                        ),

                        //lbl_senha
                        const CustomTextField(
                          label: 'Senha',
                          icon: Icons.lock,
                          isSecret: true,
                        ),

                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: customColors.customSwatchColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                )),
                            onPressed: () {},
                            child: const Text(
                              'seja VERDÃO!',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //return button
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                    child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
